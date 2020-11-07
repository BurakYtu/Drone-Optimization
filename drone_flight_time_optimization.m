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

filter_hover_time_lower_limit = 20;         
filter_configuration = 6;
filter_voltage = 14.8;
filter_takeoff_weight_upper_limit = 800;

%% Iteration

plot_3d_hover_time = zeros(1,1);
filtered_results = struct();

nvidia_jetson_nano_naked_weight = 15;
nvidia_jetson_nano_pcb_weight = 20;
nvidia_jetson_nano_heatsink_weight = 40;
seek_thermal_compact_pro_weight = 15;

control_board_weight = 10;

GPS_weight = 25;
optical_flow_weight = 16;

shield_weight = 10;
packing_weight = 30;

general_counter = 1;

for i=1:length(database.motor_propeller)
    
    for number_of_motor=4:2:8
    
        motor_weight = number_of_motor *  database.motor_propeller(i).motor.weight;
        esc_weight = 11 * number_of_motor;
        wiring_weight = 20 + number_of_motor * 5;
        frame_weight = number_of_motor * 15 + database.motor_propeller(i).propeller.diameter * number_of_motor * 3;
        
        for battery=1:length(database.battery)
            
            final_results(general_counter).couple = i;
            final_results(general_counter).motor = database.motor_propeller(i).motor;
            final_results(general_counter).propeller = database.motor_propeller(i).propeller;
            final_results(general_counter).battery = database.battery(battery);
            
            battery_weight = database.battery(battery).weight * (database.motor_propeller(i).voltage)/3.14 + packing_weight;
            
            takeoff_weight = nvidia_jetson_nano_naked_weight + nvidia_jetson_nano_pcb_weight + nvidia_jetson_nano_heatsink_weight + seek_thermal_compact_pro_weight + control_board_weight + GPS_weight + optical_flow_weight + shield_weight + wiring_weight + motor_weight + esc_weight + wiring_weight + frame_weight + battery_weight;
            
            motor_load = takeoff_weight/number_of_motor;
            
            hover_amp = abs(database.motor_propeller(i).fitted_th_vs_amp(motor_load)*number_of_motor);
            
            hover_time = ((database.battery(battery).capacity/1000)/hover_amp)*60*error_hover_coefficient;
            
            flight_time = ((database.battery(battery).capacity/1000)/(hover_amp))*60;
            
            final_results(general_counter).takeoff_weight = takeoff_weight;
            final_results(general_counter).hover_ampere = hover_amp;
            final_results(general_counter).hover_time = hover_time;
            final_results(general_counter).flight_time = flight_time;
            final_results(general_counter).configuration = number_of_motor;
            final_results(general_counter).voltage = database.motor_propeller(i).voltage;
            
            plot_3d_hover_time(battery,i) = hover_time;
            
            general_counter = general_counter+1;
            
        end
    end
end

a = [final_results.hover_time];

[M,I]=max(a);

set = final_results(I);

plot(database.motor_propeller(i).fitted_th_vs_amp,database.motor_propeller(i).thrust,database.motor_propeller(i).ampere)

count = 1;

%% Filtering Data

for i = 1:length(final_results)

       filtered_results(i).couple = final_results(i).couple;
       filtered_results(i).motor = final_results(i).motor;
       filtered_results(i).propeller = final_results(i).propeller;
       filtered_results(i).battery = final_results(i).battery;
       filtered_results(i).takeoff_weight =  final_results(i).takeoff_weight;
       filtered_results(i).hover_ampere = final_results(i).hover_ampere;
       filtered_results(i).hover_time = final_results(i).hover_time;
       filtered_results(i).flight_time = final_results(i).flight_time;
       filtered_results(i).configuration = final_results(i).configuration;
       filtered_results(i).voltage = final_results(i).voltage;
end

if(filter_hover_time_lower_limit)
    
    filtered_results([filtered_results.hover_time]<filter_hover_time_lower_limit) = [];
end

if(filter_configuration)
    
    filtered_results([filtered_results.configuration] ~= filter_configuration) = [];
end

if(filter_voltage)
    
    filtered_results([filtered_results.voltage] ~= filter_voltage) = [];
end

if(filter_takeoff_weight_upper_limit)
    
    filtered_results([filtered_results.takeoff_weight] > filter_takeoff_weight_upper_limit) = [];
end

%% 3d PLOT

figure
[X,Y] = meshgrid((1:length(database.motor_propeller)),(1:length(database.battery)));
splot = surf(X,Y,plot_3d_hover_time,'FaceColor','interp'); %,'EdgeColor','none'

%%
