clear
clc

if exist('database.mat')
    load database
else
    run(database_init.m)
end
%% Error for hover time from LAL3 flight test
lal3_weight = 175;

lal3_motor_load = (175 + database.battery(11).weight)/4;

lal3_hover_amp = database.motor_propeller(43).fitted_th_vs_amp(lal3_motor_load)*4;

lal3_hover_time = (database.battery(11).capacity/1000)/lal3_hover_amp*60;

lal3_real_hover_time = 6.5; % experimental data

error_hover_coefficient = 6.5/lal3_hover_time;

error_flight_coefficient_acro = 4/lal3_hover_time;

%% Error for flight time from OL flight test
flywoo_explorer_lr_weight = 163;
flywoo_packing_weight = 23;
fllywoo_battery_weight = database.battery(12).weight * (database.motor_propeller(18).voltage)/3.14 + flywoo_packing_weight;

flywoo_load = (flywoo_explorer_lr_weight + fllywoo_battery_weight)/4;

flywoo_hover_amp = database.motor_propeller(18).fitted_th_vs_amp(flywoo_load)*4;

flywoo_50kph_amp = 7.29;    % experimental data

error_flight_coefficient_50kph = 7.29/flywoo_hover_amp;

flywoo_hover_time = (database.battery(12).capacity/1000)/flywoo_hover_amp*60 * error_hover_coefficient;

flywoo_flight_time = (database.battery(12).capacity/1000)/(flywoo_hover_amp)*60;

%% Filtering Data
filter_hover_time_lower_limit = 8;
filter_hover_time_upper_limit = 12; % Ekle
filter_configuration = 6;   
filter_voltage = 14.8;
filter_takeoff_weight_upper_limit = 0;

%% Iteration (Battery and Thrust Elements)
plot_3d_hover_time = zeros(1,1);
filtered_results = struct();

control_board_weight = 10;
esc_weight = 4;
nvidia_jetson_nano_naked_weight = 15;
nvidia_jetson_nano_pcb_weight = 20;
nvidia_jetson_nano_heatsink_weight = 40;
seek_thermal_compact_pro_weight = 15;
camera_weight = 10;
gimbal_weight = 60;
GPS_weight = 25;
optical_flow_weight = 16;

constants = control_board_weight + nvidia_jetson_nano_naked_weight + nvidia_jetson_nano_pcb_weight + nvidia_jetson_nano_heatsink_weight + seek_thermal_compact_pro_weight + camera_weight + gimbal_weight + GPS_weight + optical_flow_weight; 

packing_weight = 30;

general_counter = 1;

minimum_number_of_motor = 4;
maximum_number_of_motor = 8;

for i=1:length(database.motor_propeller)
    
    for number_of_motor = minimum_number_of_motor:2:maximum_number_of_motor
    
        motor_weight = number_of_motor *  database.motor_propeller(i).motor.weight;
        total_esc_weight = esc_weight * number_of_motor;
        wiring_weight = 20 + number_of_motor * 5;
        frame_weight = number_of_motor * 15 + database.motor_propeller(i).propeller.diameter * number_of_motor * 3;
        
        store_count = 1;
        
        for battery=1:length(database.battery)

            battery_weight = database.battery(battery).weight * (database.motor_propeller(i).voltage)/3.14 + packing_weight;
   
            takeoff_weight = constants + motor_weight + total_esc_weight + wiring_weight + frame_weight + battery_weight;
            
            motor_load = takeoff_weight/number_of_motor; 
            hover_amp = abs(database.motor_propeller(i).fitted_th_vs_amp(motor_load)*number_of_motor);
            
            if hover_amp < ((database.battery(battery).capacity/1000)*database.battery(battery).discharge_rate)
            
                hover_time = ((database.battery(battery).capacity/1000)/hover_amp)*60*error_hover_coefficient;
           
                final_results(general_counter).couple = i;
                final_results(general_counter).motor = database.motor_propeller(i).motor;
                final_results(general_counter).propeller = database.motor_propeller(i).propeller;
                final_results(general_counter).battery = database.battery(battery);
                final_results(general_counter).takeoff_weight = takeoff_weight;
                final_results(general_counter).hover_ampere = hover_amp;
                final_results(general_counter).hover_time = hover_time;
                % final_results(general_counter).flight_time = flight_time;
                final_results(general_counter).configuration = number_of_motor;
                final_results(general_counter).voltage = database.motor_propeller(i).voltage;

                config(number_of_motor).plot_3d_hover_time(battery,i) = hover_time;

                general_counter = general_counter+1;
            end
        end
    end
end

%% Optimization (Battery Capacity)
plot_3d_hover_time_opt = zeros(1,1);
filtered_results_opt = struct();

x = 0;
y = 0;
z = 0;

for b=1:length(database.battery)
    
    x = x + database.battery(b).capacity * database.battery(b).voltage;  %mWh
    y = y + database.battery(b).weight; %g
    z = z + database.battery(b).discharge_rate;
end

sample_rate = 50;

li_ion_density_average = x/y; % mWh/g
li_ion_discharge_average = z/length(database.battery);

max_battery_capacity = 5000;

for i=1:length(database.motor_propeller)
    
    for number_of_motor = minimum_number_of_motor:2:maximum_number_of_motor
    
        motor_weight = number_of_motor *  database.motor_propeller(i).motor.weight;
        total_esc_weight = esc_weight * number_of_motor;
        wiring_weight = 20 + number_of_motor * 5;
        frame_weight = number_of_motor * 15 + database.motor_propeller(i).propeller.diameter * number_of_motor * 3;
        
        store_count = 1;
        
        for battery_capacity=1:max_battery_capacity
            
            battery_weight = (battery_capacity*database.motor_propeller(i).voltage)/li_ion_density_average + 10;
            
            battery_weight_factor = battery_weight/10;
   
            takeoff_weight = constants + motor_weight + total_esc_weight + wiring_weight + frame_weight + battery_weight + battery_weight_factor;
            
            motor_load = takeoff_weight/number_of_motor; 
            hover_amp = abs(database.motor_propeller(i).fitted_th_vs_amp(motor_load)*number_of_motor);
            
            if(hover_amp < (battery_capacity/1000)*li_ion_discharge_average)
                hover_time = ((battery_capacity/1000)/hover_amp)*60*error_hover_coefficient;

                final_results_opt(general_counter).couple = i;
                final_results_opt(general_counter).motor = database.motor_propeller(i).motor;
                final_results_opt(general_counter).propeller = database.motor_propeller(i).propeller;
                final_results_opt(general_counter).takeoff_weight = takeoff_weight;
                final_results_opt(general_counter).hover_ampere = hover_amp;
                final_results_opt(general_counter).hover_time = hover_time;
                % final_results_opt(general_counter).flight_time = flight_time;
                final_results_opt(general_counter).configuration = number_of_motor;
                final_results_opt(general_counter).voltage = database.motor_propeller(i).voltage;
                final_results_opt(general_counter).battery_cap = battery_capacity;

                config_opt(number_of_motor).plot_3d_hover_time_opt(battery_capacity,i) = hover_time;
                
                general_counter = general_counter+1;
                
                if(mod(battery_capacity,sample_rate)==0)
                    sample_data_to_fit(i).config(number_of_motor).hover_time(store_count) = hover_time;
                    store_count = store_count+1;
                end
            else
                sample_data_to_fit(i).config(number_of_motor).hover_time(1) = -1;
            end
        end
    end
end

conf_number = (maximum_number_of_motor-minimum_number_of_motor)/2 + 1;

for d=1:conf_number
    
    for e=1:length(sample_data_to_fit)
        if(sample_data_to_fit(e).config(minimum_number_of_motor + (d-1)*2).hover_time(1) ~= -1)
            plot_mah = ((length(1:sample_rate:max_battery_capacity)-length(sample_data_to_fit(e).config(minimum_number_of_motor + (d-1)*2).hover_time))*sample_rate+1):sample_rate:max_battery_capacity;
            fitted_mah_time.couple(e).config(minimum_number_of_motor + (d-1)*2).fit = fit(plot_mah.',sample_data_to_fit(e).config(minimum_number_of_motor + (d-1)*2).hover_time.',"poly4");
            fitted_mah_time_derivative.couple(e).config(minimum_number_of_motor + (d-1)*2).diff = differentiate(fitted_mah_time.couple(e).config(minimum_number_of_motor + (d-1)*2).fit,plot_mah);
            fitted_mah_time_derivative.couple(e).config(minimum_number_of_motor + (d-1)*2).mah = plot_mah;
            fitted_mah_time_derivative.couple(e).config(minimum_number_of_motor + (d-1)*2).fitted_dif = fit(differentiate(fitted_mah_time.couple(e).config(minimum_number_of_motor + (d-1)*2).fit,plot_mah),plot_mah.',"poly4");
            
            diff_max = fitted_mah_time_derivative.couple(e).config(minimum_number_of_motor + (d-1)*2).diff(1);
            diff_target = diff_max/2;
            fitted_mah_time.couple(e).config(minimum_number_of_motor + (d-1)*2).efficient_mah = fitted_mah_time_derivative.couple(e).config(minimum_number_of_motor + (d-1)*2).fitted_dif(diff_target);
        end
    end 
end


%% Filtering Data

temp = [final_results.hover_time];

[M,I]=max(temp);

set = final_results(I);

plot(database.motor_propeller(i).fitted_th_vs_amp,database.motor_propeller(i).thrust,database.motor_propeller(i).ampere)

for i = 1:length(final_results)

       filtered_results(i).couple = final_results(i).couple;
       filtered_results(i).motor = final_results(i).motor;
       filtered_results(i).propeller = final_results(i).propeller;
       filtered_results(i).battery = final_results(i).battery;
       filtered_results(i).takeoff_weight =  final_results(i).takeoff_weight;
       filtered_results(i).hover_ampere = final_results(i).hover_ampere;
       filtered_results(i).hover_time = final_results(i).hover_time;
       % filtered_results(i).flight_time = final_results(i).flight_time;
       filtered_results(i).configuration = final_results(i).configuration;
       filtered_results(i).voltage = final_results(i).voltage;
end

for i = 1:length(final_results_opt)

       filtered_results_opt(i).couple = final_results_opt(i).couple;
       filtered_results_opt(i).motor = final_results_opt(i).motor;
       filtered_results_opt(i).propeller = final_results_opt(i).propeller;
       filtered_results_opt(i).battery_cap = final_results_opt(i).battery_cap;
       filtered_results_opt(i).takeoff_weight =  final_results_opt(i).takeoff_weight;
       filtered_results_opt(i).hover_ampere = final_results_opt(i).hover_ampere;
       filtered_results_opt(i).hover_time = final_results_opt(i).hover_time;
       % filtered_results_opt(i).flight_time = final_results(i).flight_time;
       filtered_results_opt(i).configuration = final_results_opt(i).configuration;
       filtered_results_opt(i).voltage = final_results_opt(i).voltage;
end

if(filter_hover_time_lower_limit)
    
    filtered_results([filtered_results.hover_time]<filter_hover_time_lower_limit) = [];
    filtered_results_opt([filtered_results_opt.hover_time]<filter_hover_time_lower_limit) = [];
end

if(filter_hover_time_upper_limit)
    
    filtered_results([filtered_results.hover_time]>filter_hover_time_upper_limit) = [];
    filtered_results_opt([filtered_results_opt.hover_time]>filter_hover_time_upper_limit) = [];
end

if(filter_configuration)
    
    filtered_results([filtered_results.configuration] ~= filter_configuration) = [];
    filtered_results_opt([filtered_results_opt.configuration] ~= filter_configuration) = [];
end

if(filter_voltage)
    
    filtered_results([filtered_results.voltage] ~= filter_voltage) = [];
    filtered_results_opt([filtered_results_opt.voltage] ~= filter_voltage) = [];
end

if(filter_takeoff_weight_upper_limit)
    
    filtered_results([filtered_results.takeoff_weight] > filter_takeoff_weight_upper_limit) = [];
    filtered_results_opt([filtered_results_opt.takeoff_weight] > filter_takeoff_weight_upper_limit) = [];
end

%% 3D PLOT Iteration
calculate_subs = (maximum_number_of_motor-minimum_number_of_motor)/2 + 1;

pos = 1;
figure
for cs=1:calculate_subs
    
    subplot(calculate_subs,2,pos);
    [X,Y] = meshgrid((1:length(database.motor_propeller)),(1:length(database.battery)));
    splot = surf(X,Y,config(minimum_number_of_motor + (cs-1)*2).plot_3d_hover_time,'FaceColor','interp');

    xlabel('Motor-Propeller Pairs')
    ylabel('Battery')
    zlabel('Hover Time')
    title("Configuration :" + int2str(minimum_number_of_motor + (cs-1)*2) + " Flight Time Iteration")
    
    pos = pos+1;
    subplot(calculate_subs,2,pos);
    plot(Y,config(minimum_number_of_motor + (cs-1)*2).plot_3d_hover_time)
    title("Configuration :" + int2str((minimum_number_of_motor + (cs-1)*2)) + " Battery vs Hover Time")
    ylabel('Hover Time')
    xlabel('Battery')
    
    pos = pos+1;
end

%% 3D PLOT Optimization

pos = 1;
figure
for cs=1:calculate_subs
    
    subplot(calculate_subs,2,pos);
    [X2,Y2] = meshgrid((1:length(database.motor_propeller)),(1:max_battery_capacity));
    splot = surf(X2,Y2,config_opt((minimum_number_of_motor + (cs-1)*2)).plot_3d_hover_time_opt,'FaceColor','interp','EdgeColor','none');

    xlabel('Motor-Propeller Pairs')
    ylabel('Battery mAh')
    zlabel('Hover Time')
    title("Configuration :" + int2str(minimum_number_of_motor + (cs-1)*2) + " Flight Time Optimization")
    
    pos = pos+1;
    subplot(calculate_subs,2,pos);
    plot(Y2,config_opt(minimum_number_of_motor + (cs-1)*2).plot_3d_hover_time_opt)
    title("Configuration :" + int2str((minimum_number_of_motor + (cs-1)*2)) + " Battery mAh vs Hover Time")
    ylabel('Hover Time')
    xlabel('Battery mAh')
    
    pos = pos+1;
end
