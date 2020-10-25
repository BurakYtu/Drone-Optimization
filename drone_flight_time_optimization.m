clear
clc

if exist('database.mat')
    load database
else
    run(database_init.m)
end

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
            
            hover_time = ((database.battery(battery).capacity/1000)/hover_amp)*60;
            
            final_results(general_counter).takeoff_weight = takeoff_weight;
            final_results(general_counter).hover_ampere = hover_amp;
            final_results(general_counter).hover_time = hover_time;
            final_results(general_counter).configuration = number_of_motor;
            final_results(general_counter).voltage = database.motor_propeller(i).voltage;
            
            general_counter = general_counter+1;
            
        end
    end
end

a = [final_results.hover_time];

[M,I]=max(a);

set = final_results(I);

plot(database.motor_propeller(i).fitted_th_vs_amp,database.motor_propeller(i).thrust,database.motor_propeller(i).ampere)

