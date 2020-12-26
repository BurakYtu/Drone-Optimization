clear
clc
%% Units
%%%%%%%%%%%  Motor  %%%%%%%%%%%
% name                -> string
% purchase_link       -> string
% stator_height       -> mm
% stator_diameter     -> mm
% price               -> dollar
% kv                  -> RPM/voltage
% shaft_diameter      -> mm
% number_of_magnet    -> number
% number_of_poles     -> number
% idle_power          -> Watt
% internal_resistance -> miliOhm
% weigth              -> gram
% min_input_voltage   -> volt
% max_input_voltage   -> volt

%%%%%%%%%  Propeller  %%%%%%%%%%
% name                -> string
% purchase_link       -> string
% price               -> dollar/2 pair
% diameter            -> inch
% pitch               -> inch
% number_of_blade     -> number
% weight              -> gram
% inertia             -> g*cm^2
% hub_inner_diameter  -> mm
% is_foldable         -> string

%%%%%%%%%%  Battery  %%%%%%%%%%%
% name                -> string
% purchase_link       -> string
% price               -> dollar
% capacity            -> mah
% discharge_rate      -> 1/hour
% life_cycle          -> number
% voltage             -> volt
% weight              -> gram
% type                -> string
% protection          -> string

% %%%%%%% motor_propeller %%%%%%%
% motor               -> struct
% propeller           -> struct
% thrust              -> gram [array]
% ampere              -> ampere [array]
% watt                -> watt [array]
% voltage             -> voltage [array]
% fitted_th_vs_amp    -> thrust vs ampere [polynomial]
% fitted_th_vs_watt   -> thrust vs watt [polynomial]

database.help = [
"%%%%%%%%%%%  Motor  %%%%%%%%%%%"  
"name                -> string"
"purchase_link       -> string"
"stator_height       -> mm"
"stator_diameter     -> mm"
"price               -> dollar"
"kv                  -> RPM/voltage"
"shaft_diameter      -> mm"
"number_of_magnet    -> number"
"number_of_poles     -> number"
"idle_power          -> Watt"
"internal_resistance -> miliOhm"
"weigth              -> gram"
"min_input_voltage   -> volt"
"max_input_voltage   -> volt"
"%%%%%%%%%  Propeller  %%%%%%%%%%"
"name                -> string"
"purchase_link       -> string"
"price               -> dollar/2 pair"
"diameter            -> inch"
"pitch               -> inch"
"number_of_blade     -> number"
"weight              -> gram"
"inertia             -> g*cm^2"
"hub_inner_diameter  -> mm"
"is_foldable         -> string"
"%%%%%%%%%%  Battery  %%%%%%%%%%%"
"name                -> string"
"purchase_link       -> string"
"price               -> dollar"
"capacity            -> mah"
"discharge_rate      -> 1/hour"
"life_cycle          -> number"
"voltage             -> volt"
"weight              -> gram"
"type                -> string"
"protection          -> string"
"%%%%%%% motor_propeller %%%%%%%"
"motor               -> struct"
"propeller           -> struct"
"thrust              -> gram [array]"
"ampere              -> ampere [array]"
"watt                -> watt [array]"
"voltage             -> voltage [array]" 
"fitted_th_vs_amp    -> thrust vs ampere [polynomial]"
"fitted_th_vs_watt   -> thrust vs watt [polynomial]"
"example             -> plot(database.motor_propeller(2).fitted_th_vs_amp,database.motor_propeller(2).thrust,database.motor_propeller(2).ampere)"
];

%% Motor 1
index = 1;
database.motor(index).name = string(index) + ") " + "Flywoo_nin_1404";
database.motor(index).purchase_link = "https://www.banggood.com/Flywoo-NIN-1404-V2-2750KV-4-6S-or-3750KV-3-4S-or-4850KV-2-4S-Ultralight-Brushless-Motor-for-Explorer-LR-FPV-Racing-Drone-p-1751837.html?rmmds=search&DCC=TR&currency=USD&ID=6291970528524&cur_warehouse=CN";
database.motor(index).stator_height = 4;
database.motor(index).stator_diameter = 14;
database.motor(index).price = 15;
database.motor(index).kv = 4850;
database.motor(index).shaft_diameter = 1.5;
database.motor(index).number_of_magnet = 12;
database.motor(index).number_of_poles = 9;
database.motor(index).idle_power = 7.5;
database.motor(index).internal_resistance = 160;
database.motor(index).weight = 9.5;
database.motor(index).min_input_voltage = 2*3.7;
database.motor(index).max_input_voltage = 4*3.7;

%% Motor 2
index = 2;
database.motor(index).name = string(index) + ") " + "Flywoo_nin_1404";
database.motor(index).purchase_link = "https://www.banggood.com/Flywoo-NIN-1404-V2-2750KV-4-6S-or-3750KV-3-4S-or-4850KV-2-4S-Ultralight-Brushless-Motor-for-Explorer-LR-FPV-Racing-Drone-p-1751837.html?rmmds=search&DCC=TR&currency=USD&ID=6291970528524&cur_warehouse=CN";
database.motor(index).stator_height = 4;
database.motor(index).stator_diameter = 14;
database.motor(index).price = 15;
database.motor(index).kv = 3750;
database.motor(index).shaft_diameter = 1.5;
database.motor(index).number_of_magnet = 12;
database.motor(index).number_of_poles = 9;
database.motor(index).idle_power = 5.6;
database.motor(index).internal_resistance = 260;
database.motor(index).weight = 9.5;
database.motor(index).min_input_voltage = 3*3.7;
database.motor(index).max_input_voltage = 4*3.7;

%% Motor 3
index = 3;
database.motor(index).name = string(index) + ") " + "Flywoo_nin_1404";
database.motor(index).purchase_link = "https://www.banggood.com/Flywoo-NIN-1404-V2-2750KV-4-6S-or-3750KV-3-4S-or-4850KV-2-4S-Ultralight-Brushless-Motor-for-Explorer-LR-FPV-Racing-Drone-p-1751837.html?rmmds=search&DCC=TR&currency=USD&ID=6291970528524&cur_warehouse=CN";
database.motor(index).stator_height = 4;
database.motor(index).stator_diameter = 14;
database.motor(index).price = 15;
database.motor(index).kv = 2750;
database.motor(index).shaft_diameter = 1.5;
database.motor(index).number_of_magnet = 12;
database.motor(index).number_of_poles = 9;
database.motor(index).idle_power = 3.4;
database.motor(index).internal_resistance = 400;
database.motor(index).weight = 9.5;
database.motor(index).min_input_voltage = 4*3.7;
database.motor(index).max_input_voltage = 6*3.7;

%% Motor 4
index = 4;
database.motor(index).name = string(index) + ") " + "iFlight_XING_X1404";
database.motor(index).purchase_link = "https://www.banggood.com/IFlight-XING-X1404-1404-3800KV-4600KV-3-4S-Brushless-Motor-for-DC2-HD-TurboBee-160RS-Toothpick-RC-Drone-FPV-Racing-p-1610004.html?rmmds=category&ID=49353&cur_warehouse=CN";
database.motor(index).stator_height = 4;
database.motor(index).stator_diameter = 14;
database.motor(index).price = 16;
database.motor(index).kv = 3800;
database.motor(index).shaft_diameter = 1.5;
database.motor(index).number_of_magnet = 12;
database.motor(index).number_of_poles = 9;
database.motor(index).idle_power = 4.675;
database.motor(index).internal_resistance = 145;
database.motor(index).weight = 9.3;
database.motor(index).min_input_voltage = 3*3.7;
database.motor(index).max_input_voltage = 4*3.7;

%% Motor 5
index = 5;
database.motor(index).name = string(index) + ") " + "iFlight_XING_X1404";
database.motor(index).purchase_link = "https://www.banggood.com/IFlight-XING-X1404-1404-3800KV-4600KV-3-4S-Brushless-Motor-for-DC2-HD-TurboBee-160RS-Toothpick-RC-Drone-FPV-Racing-p-1610004.html?rmmds=category&ID=49353&cur_warehouse=CN";
database.motor(index).stator_height = 4;
database.motor(index).stator_diameter = 14;
database.motor(index).price = 16;
database.motor(index).kv = 4600;
database.motor(index).shaft_diameter = 1.5;
database.motor(index).number_of_magnet = 12;
database.motor(index).number_of_poles = 9;
database.motor(index).idle_power = 3.025;
database.motor(index).internal_resistance = 175;
database.motor(index).weight = 9.3;
database.motor(index).min_input_voltage = 3*3.7;
database.motor(index).max_input_voltage = 4*3.7;

%% Motor 6
index = 6;
database.motor(index).name = string(index) + ") " + "RCINPower_GTS_V2_1506";
database.motor(index).purchase_link = "https://www.banggood.com/RCINPower-GTS-V2-1506-3000KV-4300KV-4-6S-Brushless-Motor-for-RC-Drone-FPV-Racing-p-1434810.html?rmmds=category&ID=515953517763&cur_warehouse=CN";
database.motor(index).stator_height = 6;
database.motor(index).stator_diameter = 15;
database.motor(index).price = 16.77;
database.motor(index).kv = 3000;
database.motor(index).shaft_diameter = 5;
database.motor(index).number_of_magnet = 12;
database.motor(index).number_of_poles = 9;
database.motor(index).idle_power = 10;
database.motor(index).internal_resistance = 110;
database.motor(index).weight = 15.5;
database.motor(index).min_input_voltage = 5*3.7;
database.motor(index).max_input_voltage = 6*3.7;

%% Motor 7
index = 7;
database.motor(index).name = string(index) + ") " + "RCINPower_GTS_V2_1506";
database.motor(index).purchase_link = "https://www.banggood.com/RCINPower-GTS-V2-1506-3000KV-4300KV-4-6S-Brushless-Motor-for-RC-Drone-FPV-Racing-p-1434810.html?rmmds=category&ID=515953517763&cur_warehouse=CN";
database.motor(index).stator_height = 6;
database.motor(index).stator_diameter = 15;
database.motor(index).price = 16.77;
database.motor(index).kv = 4300;
database.motor(index).shaft_diameter = 5;
database.motor(index).number_of_magnet = 12;
database.motor(index).number_of_poles = 9;
database.motor(index).idle_power = 16;
database.motor(index).internal_resistance = 55;
database.motor(index).weight = 15.5;
database.motor(index).min_input_voltage = 3*3.7;
database.motor(index).max_input_voltage = 4*3.7;

%% Motor 8
index = 8;
database.motor(index).name = string(index) + ") " + "GEPRC SPEEDX GR1507";
database.motor(index).purchase_link = "https://www.banggood.com/GEPRC-SPEEDX-GR1507-280036004200KV-3-4S-FPV-Racing-Brushless-Motor-p-1334386.html?rmmds=category&ID=516949&cur_warehouse=CN";
database.motor(index).stator_height = 7;
database.motor(index).stator_diameter = 15;
database.motor(index).price = 17.18;
database.motor(index).kv = 2800;
database.motor(index).shaft_diameter = 5;
database.motor(index).number_of_magnet = 14;
database.motor(index).number_of_poles = 12;
database.motor(index).idle_power = nan;
database.motor(index).internal_resistance = 149;
database.motor(index).weight = 15.5;
database.motor(index).min_input_voltage = 3*3.7;
database.motor(index).max_input_voltage = 4*3.7;

%% Motor 9
index = 9;
database.motor(index).name = string(index) + ") " + "GEPRC SPEEDX GR1507";
database.motor(index).purchase_link = "https://www.banggood.com/GEPRC-SPEEDX-GR1507-280036004200KV-3-4S-FPV-Racing-Brushless-Motor-p-1334386.html?rmmds=category&ID=516949&cur_warehouse=CN";
database.motor(index).stator_height = 7;
database.motor(index).stator_diameter = 15;
database.motor(index).price = 17.18;
database.motor(index).kv = 3600;
database.motor(index).shaft_diameter = 5;
database.motor(index).number_of_magnet = 14;
database.motor(index).number_of_poles = 12;
database.motor(index).idle_power = nan;
database.motor(index).internal_resistance = 104;
database.motor(index).weight = 15.5;
database.motor(index).min_input_voltage = 3*3.7;
database.motor(index).max_input_voltage = 4*3.7;

%% Motor 10
index = 10;
database.motor(index).name = string(index) + ") " + "GEPRC SPEEDX GR1507";
database.motor(index).purchase_link = "https://www.banggood.com/GEPRC-SPEEDX-GR1507-280036004200KV-3-4S-FPV-Racing-Brushless-Motor-p-1334386.html?rmmds=category&ID=516949&cur_warehouse=CN";
database.motor(index).stator_height = 7;
database.motor(index).stator_diameter = 15;
database.motor(index).price = 17.18;
database.motor(index).kv = 4200;
database.motor(index).shaft_diameter = 5;
database.motor(index).number_of_magnet = 14;
database.motor(index).number_of_poles = 12;
database.motor(index).idle_power = nan;
database.motor(index).internal_resistance = 96;
database.motor(index).weight = 15.5;
database.motor(index).min_input_voltage = 3*3.7;
database.motor(index).max_input_voltage = 4*3.7;

%% Motor 11
index = 11;
database.motor(index).name = string(index) + ") " + "GEPRC GR1404";
database.motor(index).purchase_link = "https://www.banggood.com/GEPRC-GR1404-1404-3850KV-2~4S-1_5mm-Shaft-Brushless-Motor-for-Cinewhoop-Whoop-RC-Drone-FPV-Racing-p-1653741.html?rmmds=search&cur_warehouse=CN";
database.motor(index).stator_height = 4;
database.motor(index).stator_diameter = 14;
database.motor(index).price = 14;
database.motor(index).kv = 3850;
database.motor(index).shaft_diameter = 1.5;
database.motor(index).number_of_magnet = 12;
database.motor(index).number_of_poles = 9;
database.motor(index).idle_power = 4;
database.motor(index).internal_resistance = 0.213;
database.motor(index).weight = 9.8;
database.motor(index).min_input_voltage = 2*3.7;
database.motor(index).max_input_voltage = 4*3.7;

%% Motor 12
index = 12;
database.motor(index).name = string(index) + ") " + "LAL3 1408";
database.motor(index).purchase_link = "https://tr.banggood.com/Eachine-1408-3750KV-3-4S-Brushless-Motor-for-LAL3-FPV-Racing-Drone-3-Inch-RC-Drone-FPV-Racing-12+12mm-p-1720780.html?cur_warehouse=CN";
database.motor(index).stator_height = 8;
database.motor(index).stator_diameter = 14;
database.motor(index).price = 15;
database.motor(index).kv = 3750;
database.motor(index).shaft_diameter = 5;
database.motor(index).number_of_magnet = 14;
database.motor(index).number_of_poles = 12;
database.motor(index).idle_power = 6;
database.motor(index).internal_resistance = 0.0495;
database.motor(index).weight = 17;
database.motor(index).min_input_voltage = 3*3.7;
database.motor(index).max_input_voltage = 4*3.7;

%% Motor 13
index = 13;
database.motor(index).name = string(index) + ") " + "MAMBA 1404";
database.motor(index).purchase_link = "https://www.diatone.us/products/mamba-1404-3000-kv-brushless-motor-for-longrange";
database.motor(index).stator_height = 4;
database.motor(index).stator_diameter = 14;
database.motor(index).price = 12;
database.motor(index).kv = 3000;
database.motor(index).shaft_diameter = 1.5;
database.motor(index).number_of_magnet = 12;
database.motor(index).number_of_poles = 9;
database.motor(index).idle_power = NaN;
database.motor(index).internal_resistance = 0.295;
database.motor(index).weight = 11;
database.motor(index).min_input_voltage = 4*3.7;
database.motor(index).max_input_voltage = 6*3.7;

%% Propeller 1
index = 1; 
database.propeller(index).name = string(index) + ") " + "Emax_AVAN_Rush_2.5";
database.propeller(index).purchase_link = "https://www.banggood.com/2-Pairs-Emax-AVAN-Rush-2_5-Inch-3-Blade-Propeller-For-Babyhawk-R-RC-Drone-FPV-Racing-Multi-Rotor-p-1335552.html?admitad_uid=3f98ba7f66da034ffe04c27911bbe026&tagtag_uid=3f98ba7f66da034ffe04c27911bbe026&utm_source=google&utm_medium=cpc_ods&utm_campaign=arvin-cam-sds-view-airtrack-content&utm_content=arvin&gclid=Cj0KCQjw28T8BRDbARIsAEOMBczjh1lO_wjfOsXlgtbIHvMlj0SaxEr5LbPmv8Rc35EjjeG31ib26wUaAnLXEALw_wcB&cur_warehouse=CN";
database.propeller(index).price = 2.74;
database.propeller(index).diameter = 2.5;
database.propeller(index).pitch = 1.9;
database.propeller(index).number_of_blade = 3;
database.propeller(index).weight = 1.4;
database.propeller(index).inertia = 1.24;
database.propeller(index).hub_inner_diameter = 1.5;
database.propeller(index).is_foldable = "no";

%% Propeller 2
index = 2;
database.propeller(index).name = string(index) + ") " + "Gemfan_3035";
database.propeller(index).purchase_link = "https://www.banggood.com/2-Pairs-Gemfan-3035-3X3_5-BN-3-blade-Propeller-PC-1_5mm-Mounting-Hole-for-1104-1105-Motor-RC-Drone-FPV-Racing-p-1182779.html?utm_source=google&utm_medium=cpc_ods&utm_content=nolan&utm_campaign=nolan-tra-content-sds-pc-pur-content&ad_id=253435085246&gclid=Cj0KCQjw28T8BRDbARIsAEOMBcyVMBp3vOPx0bVS2mjleFRDy_oSCgxZYpe5MbaZMb2w36GTVsvltkcaAoBgEALw_wcB&ID=231&cur_warehouse=CN";
database.propeller(index).price = 2.94;
database.propeller(index).diameter = 3;
database.propeller(index).pitch = 3.5;
database.propeller(index).number_of_blade = 3;
database.propeller(index).weight = 1.27;
database.propeller(index).inertia = nan;
database.propeller(index).hub_inner_diameter = 5;
database.propeller(index).is_foldable = "no";

%% Propeller 3
index = 3;
database.propeller(index).name = string(index) + ") " + "Gemfan_3025_Bi_Blade";
database.propeller(index).purchase_link = "https://www.banggood.com/2-Pairs-Gemfan-3025-3X2_5-3-Inch-PC-Propeller-for-1104-Motor-120-150-160-RC-Drone-FPV-Racing-Multi-Rotor-p-1059763.html?ID=223&cur_warehouse=CN";
database.propeller(index).price = 2.08;
database.propeller(index).diameter = 3;
database.propeller(index).pitch = 2.5;
database.propeller(index).number_of_blade = 2;
database.propeller(index).weight = 1;
database.propeller(index).inertia = nan;
database.propeller(index).hub_inner_diameter = 1.5;
database.propeller(index).is_foldable = "no";

%% Propeller 4
index = 4;
database.propeller(index).name = string(index) + ") " + "HQProp_T3X2.5X3";
database.propeller(index).purchase_link = "https://tr.aliexpress.com/item/4000637549667.html";
database.propeller(index).price = 1.78;
database.propeller(index).diameter = 3;
database.propeller(index).pitch = 2.5;
database.propeller(index).number_of_blade = 3;
database.propeller(index).weight = 1.5;
database.propeller(index).inertia = nan;
database.propeller(index).hub_inner_diameter = 1.5;
database.propeller(index).is_foldable = "no";

%% Propeller 5
index = 5;
database.propeller(index).name = string(index) + ") " + "HQ_3030_3_Blade";
database.propeller(index).purchase_link = "https://tr.aliexpress.com/item/4000229702644.html";
database.propeller(index).price = 1.625;
database.propeller(index).diameter = 3;
database.propeller(index).pitch = 3;
database.propeller(index).number_of_blade = 3;
database.propeller(index).weight = 1.525;
database.propeller(index).inertia = nan;
database.propeller(index).hub_inner_diameter = 1.5;
database.propeller(index).is_foldable = "no";

%% Propeller 6
index = 6;
database.propeller(index).name = string(index) + ") " + "Gemfan_4020";
database.propeller(index).purchase_link = "https://tr.aliexpress.com/item/32508302668.html";
database.propeller(index).price = 3.95;
database.propeller(index).diameter = 4;
database.propeller(index).pitch = 2;
database.propeller(index).number_of_blade = 2;
database.propeller(index).weight = 1.5;
database.propeller(index).inertia = nan;
database.propeller(index).hub_inner_diameter = 1.5;
database.propeller(index).is_foldable = "no";

%% Propeller 7
index = 7;
database.propeller(index).name = string(index) + ") " + "HQ_Prop_T4x2.5x2";
database.propeller(index).purchase_link = "https://www.hqprop.com/hq-durable-prop-t4x25grey-2cw2ccw-poly-carbonate-p0213.html";
database.propeller(index).price = 3;
database.propeller(index).diameter = 4;
database.propeller(index).pitch = 2.5;
database.propeller(index).number_of_blade = 2;
database.propeller(index).weight = 1.45;
database.propeller(index).inertia = nan;
database.propeller(index).hub_inner_diameter = 1.5;
database.propeller(index).is_foldable = "no";

%% Propeller 8
index = 8;
database.propeller(index).name = string(index) + ") " + "Gemfan_Flash_3052";
database.propeller(index).purchase_link = "https://www.banggood.com/2-Pairs-Gemfan-Flash-3052-PC-3-blade-Propeller-5mm-Mounting-Hole-for-GEPRC-CineGo-1306-1806-Motor-RC-FPV-Racing-Drone-p-1179233.html?rmmds=detail-left-hotproducts__9&ID=513872&cur_warehouse=CN";
database.propeller(index).price = 3.47;
database.propeller(index).diameter = 3;
database.propeller(index).pitch = 5.2;
database.propeller(index).number_of_blade = 3;
database.propeller(index).weight = 1.65;
database.propeller(index).inertia = nan;
database.propeller(index).hub_inner_diameter = 5;
database.propeller(index).is_foldable = "no";

%% Propeller 9
index = 9;
database.propeller(index).name = string(index) + ") " + "HQProp_DP3X4X3V1S";
database.propeller(index).purchase_link = "https://www.banggood.com/2-Pairs-HQProp-DP3X4X3V1S-Durable-3040-3x4-3-Inch-3-Blade-Propeller-for-RC-Drone-FPV-Racing-p-1531192.html?ID=6157193&cur_warehouse=CN";
database.propeller(index).price = 3.25;
database.propeller(index).diameter = 3;
database.propeller(index).pitch = 4;
database.propeller(index).number_of_blade = 3;
database.propeller(index).weight = 2.13;
database.propeller(index).inertia = nan;
database.propeller(index).hub_inner_diameter = 5;
database.propeller(index).is_foldable = "no";

%% Propeller 10
index = 10;
database.propeller(index).name = string(index) + ") " + "GEPRC_3042";
database.propeller(index).purchase_link = "https://tr.aliexpress.com/item/32960491549.html";
database.propeller(index).price = 3.25;
database.propeller(index).diameter = 3;
database.propeller(index).pitch = 4.2;
database.propeller(index).number_of_blade = 3;
database.propeller(index).weight = 2.13;
database.propeller(index).inertia = nan;
database.propeller(index).hub_inner_diameter = 5;
database.propeller(index).is_foldable = "no";

%% Propeller 11
index = 11;
database.propeller(index).name = string(index) + ") " + "KINGKONG/LDARC_4*4*3";
database.propeller(index).purchase_link = "https://www.banggood.com/Kingkong-443-4040-4-Inch-3-Blade-Rainbow-Colorful-Propeller-CW-CCW-for-FPV-Racer-p-1074757.html?rmmds=buy&cur_warehouse=CN";
database.propeller(index).price = 4.05;
database.propeller(index).diameter = 4;
database.propeller(index).pitch = 4;
database.propeller(index).number_of_blade = 3;
database.propeller(index).weight = 2.13;
database.propeller(index).inertia = nan;
database.propeller(index).hub_inner_diameter = 5;
database.propeller(index).is_foldable = "no";

%% Propeller 12
index = 12;
database.propeller(index).name = string(index) + ") " + "Dalprop_Cyclone_T3056C";
database.propeller(index).purchase_link = "https://www.banggood.com/2-Pairs-Dalprop-Cyclone-T3056C-3056-3x5_6-3-Inch-3-blade-Propeller-for-RC-Drone-FPV-Racing-Multi-Rotor-p-1257050.html?ID=511159&cur_warehouse=CN";
database.propeller(index).price = 2.7;
database.propeller(index).diameter = 3;
database.propeller(index).pitch = 5.6;
database.propeller(index).number_of_blade = 3;
database.propeller(index).weight = 1.7;
database.propeller(index).inertia = nan;
database.propeller(index).hub_inner_diameter = 5;
database.propeller(index).is_foldable = "no";

%% Propeller 13
index = 13;
database.propeller(index).name = string(index) + ") " + "Gemfan Flash 2540";
database.propeller(index).purchase_link = "https://www.banggood.com/4-Pairs-Gemfan-Flash-2540-2_5x4-2_5-Inch-3-Blade-Propeller-with-1_5mm-Mounting-Hole-for-RC-Drone-FPV-Racing-p-1221999.html?akmClientCountry=America&utm_source=google&utm_medium=cpc_ods&utm_content=nolan&utm_campaign=nolan-tra-content-sds-pc-pur-content&ad_id=253435085246&gclid=CjwKCAjw_sn8BRBrEiwAnUGJDh1upcr3H7cLAORLNYh-bfVFAhJkPzUs3HeM3JWNgDheWsmTpleO-RoCCNgQAvD_BwE&ID=224&cur_warehouse=CN";
database.propeller(index).price = 2.2;
database.propeller(index).diameter = 2.5;
database.propeller(index).pitch = 4;
database.propeller(index).number_of_blade = 3;
database.propeller(index).weight = 0.98;
database.propeller(index).inertia = nan;
database.propeller(index).hub_inner_diameter = 1.5;
database.propeller(index).is_foldable = "no";

%% Propeller 14
index = 14;
database.propeller(index).name = string(index) + ") " + "Racerstar 3040 3-blade";
database.propeller(index).purchase_link = "https://www.banggood.com/4-Pairs-Racerstar-Tornado-3040-3x4-3-Inch-3-Blade-Propeller-for-1306-1806-Motor-RC-Drone-FPV-Racing-p-1628788.html?ID=46107&cur_warehouse=CN";
database.propeller(index).price = 1.86;
database.propeller(index).diameter = 3;
database.propeller(index).pitch = 4;
database.propeller(index).number_of_blade = 3;
database.propeller(index).weight = 1.7;
database.propeller(index).inertia = nan;
database.propeller(index).hub_inner_diameter = 5;
database.propeller(index).is_foldable = "no";

%% Propeller 15
index = 15;
database.propeller(index).name = string(index) + ") " + "Gemfan Hurricane 4024";
database.propeller(index).purchase_link = "https://www.banggood.com/4-Pairs-Gemfan-Hurricane-4024-2-blade-4-Inch-PC-Propeller-for-1408-1506-Brushless-Motor-RC-Drone-FPV-Racing-p-1657418.html?cur_warehouse=CN&ID=3238";
database.propeller(index).price = 1.8;
database.propeller(index).diameter = 4;
database.propeller(index).pitch = 2.4;
database.propeller(index).number_of_blade = 2;
database.propeller(index).weight = 1.58;
database.propeller(index).inertia = nan;
database.propeller(index).hub_inner_diameter = 1.5;
database.propeller(index).is_foldable = "no";

%% Battery 1
index = 1;
database.battery(index).name = string(index) + ") " + "Molicel_INR21700-P42A";
database.battery(index).purchase_link = "https://www.birikimpilleri.net/endustriyel-piller/lithium-ion/21700/prd-molicel-inr21700-p42a-4000mah-li-ion-sarjli-pil-45a"; 
database.battery(index).price = 16.4;
database.battery(index).capacity = 4000;
database.battery(index).discharge_rate = 11.25;
database.battery(index).life_cycle = 500;
database.battery(index).voltage = 3.7;
database.battery(index).weight = 70;
database.battery(index).type = "Li-ion";
database.battery(index).protection = "no";

%% Battery 2
index = 2;
database.battery(index).name = string(index) + ") " + "Panasonic_NCR20700B";
database.battery(index).purchase_link = "https://www.birikimpilleri.net/endustriyel-piller/lithium-ion/20700/prd-panasonic-ncr20700b-4250-mah-lithium-pil-15a"; 
database.battery(index).price = 18.96;
database.battery(index).capacity = 4250;
database.battery(index).discharge_rate = 3.52;
database.battery(index).life_cycle = 500;
database.battery(index).voltage = 3.7;
database.battery(index).weight = 63;
database.battery(index).type = "Li-ion";
database.battery(index).protection = "no";

%% Battery 3
index = 3;
database.battery(index).name = string(index) + ") " + "LG_Chem_INR18650M26";
database.battery(index).purchase_link = "https://www.birikimpilleri.net/endustriyel-piller/lithium-ion/18650/prd-lg-inr18650m26-3-7v-2600mah-li-ion-pil-10a";
database.battery(index).price = 5.33;
database.battery(index).capacity = 2600;
database.battery(index).discharge_rate = 3.84;
database.battery(index).life_cycle = 500;
database.battery(index).voltage = 3.7;
database.battery(index).weight = 44;
database.battery(index).type = "Li-ion";
database.battery(index).protection = "no";

%% Battery 4
index = 4;
database.battery(index).name = string(index) + ") " + "Sony_Murata_US18650VTC6";
database.battery(index).purchase_link = "https://www.birikimpilleri.net/endustriyel-piller/lithium-ion/18650/prd-sony-us18650vtc6-3000-mah-li-ion-sarjli-pil-20a";
database.battery(index).price = 7.7;
database.battery(index).capacity = 3000;
database.battery(index).discharge_rate = 6.66;
database.battery(index).life_cycle = 500;
database.battery(index).voltage = 3.7;
database.battery(index).weight = 46;
database.battery(index).type = "Li-ion";
database.battery(index).protection = "no";

%% Battery 5
index = 5;
database.battery(index).name = string(index) + ") " + "Sony_Murata_US18650VTC5A";
database.battery(index).purchase_link = "https://www.birikimpilleri.net/endustriyel-piller/lithium-ion/18650/prd-sony-us18650vtc5a-2600-mah-li-ion-sarjli-pil-30a";
database.battery(index).price = 7.11;
database.battery(index).capacity = 2600;
database.battery(index).discharge_rate = 11.53;
database.battery(index).life_cycle = 500;
database.battery(index).voltage = 3.7;
database.battery(index).weight = 47;
database.battery(index).type = "Li-ion";
database.battery(index).protection = "no";

%% Battery 6
index = 6;
database.battery(index).name = string(index) + ") " + "Samsung_INR18650-25R6";
database.battery(index).purchase_link = "https://www.birikimpilleri.net/endustriyel-piller/lithium-ion/18650/prd-samsung-inr18650-25r6-2500-mah-li-ion-sarjli-pil";
database.battery(index).price = 5.93;
database.battery(index).capacity = 2500;
database.battery(index).discharge_rate = 8;
database.battery(index).life_cycle = nan;
database.battery(index).voltage = 3.7;
database.battery(index).weight = 45;
database.battery(index).type = "Li-ion";
database.battery(index).protection = "no";

%% Battery 7
index = 7;
database.battery(index).name = string(index) + ") " + "Sony_Murata_US18650VTC4";
database.battery(index).purchase_link = "https://www.birikimpilleri.net/endustriyel-piller/lithium-ion/18650/prd-sony-us18650vtc4-2100-mah-li-ion-sarjli-pil-30a";
database.battery(index).price = 5.33;
database.battery(index).capacity = 2100;
database.battery(index).discharge_rate = 14.2;
database.battery(index).life_cycle = 500;
database.battery(index).voltage = 3.7;
database.battery(index).weight = 43;
database.battery(index).type = "Li-ion";
database.battery(index).protection = "no";

%% Battery 8
index = 8;
database.battery(index).name = string(index) + ") " + "LG_Chem_INR18650HG2";
database.battery(index).purchase_link = "https://www.birikimpilleri.net/endustriyel-piller/lithium-ion/18650/prd-lg-18650hg2-3-7v-3000mah-li-ion-pil-20a";
database.battery(index).price = 7.11;
database.battery(index).capacity = 3000;
database.battery(index).discharge_rate = 6.6;
database.battery(index).life_cycle = 500;
database.battery(index).voltage = 3.7;
database.battery(index).weight = 48;
database.battery(index).type = "Li-ion";
database.battery(index).protection = "no";

%% Battery 9
index = 9;
database.battery(index).name = string(index) + ") " + "Panasonic_NCR20700B";
database.battery(index).purchase_link = "https://www.birikimpilleri.net/endustriyel-piller/lithium-ion/20700/prd-panasonic-ncr20700b-4250-mah-lithium-pil-15a";
database.battery(index).price = 18.96;
database.battery(index).capacity = 4250;
database.battery(index).discharge_rate = 3.53;
database.battery(index).life_cycle = 500;
database.battery(index).voltage = 3.7;
database.battery(index).weight = 63;
database.battery(index).type = "Li-ion";
database.battery(index).protection = "no";

%% Battery 10
index = 10;
database.battery(index).name = string(index) + ") " + "Molicel INR18650P26A";
database.battery(index).purchase_link = "https://www.birikimpilleri.net/endustriyel-piller/lithium-ion/18650/prd-molicel-inr18650p26a-2600-mah-li-ion-sarjli-pil-35a";
database.battery(index).price = 14.22;
database.battery(index).capacity = 2600;
database.battery(index).discharge_rate = 13.46;
database.battery(index).life_cycle = 500;
database.battery(index).voltage = 3.7;
database.battery(index).weight = 50;
database.battery(index).type = "Li-ion";
database.battery(index).protection = "no";

%% Battery 11
index = 11;
database.battery(index).name = string(index) + ") " + "Gens_Tattu_14.8V_650mAh";
database.battery(index).purchase_link = "https://www.banggood.com/Gens-Tattu-14_8V-650mAh-75C-4S1P-Lipo-Battery-With-XT30-Plug-For-RC-FPV-Quadcopter-p-1340253.html?utm_source=google&utm_medium=cpc_ods&utm_content=nolan&utm_campaign=nolan-tra-content-sds-pc-pur-content&ad_id=253435085246&gclid=CjwKCAjw0On8BRAgEiwAincsHAVUcdG6Z0WHQ3J6Cb5Z3WKH1lxlR2gSvrAGR2el0Mmc9WXxEczkbRoCSTMQAvD_BwE&cur_warehouse=CN";
database.battery(index).price = 17.13;
database.battery(index).capacity = 650;
database.battery(index).discharge_rate = 75;
database.battery(index).life_cycle = 500;
database.battery(index).voltage = 14.8;
database.battery(index).weight = 77;
database.battery(index).type = "Li-Po";
database.battery(index).protection = "no";

%% Battery 12
index = 12;
database.battery(index).name = string(index) + ") " + "Panasonic NCR18650B";
database.battery(index).purchase_link = "https://www.pilburada.com/panasonic/sanyo-ncr18650b-3400-mah-li-ion-pil";
database.battery(index).price = 8.21;
database.battery(index).capacity = 3400;
database.battery(index).discharge_rate = 2;
database.battery(index).life_cycle = 500;
database.battery(index).voltage = 3.7;
database.battery(index).weight = 46;
database.battery(index).type = "Li-ion";
database.battery(index).protection = "no";

%% Battery 13
index = 13;
database.battery(index).name = string(index) + ") " + "Basen BS186Q 18650";
database.battery(index).purchase_link = "https://www.banggood.com/2pcs-Basen-BS186Q-18650-3100mah-3_7V-40A-High-Drain-Flat-Top-Rechargeable-Li-ion-Battery-p-1038113.html?utm_campaign=8708270&utm_content=3312&p=WT25071682749201505I&cur_warehouse=CN";
database.battery(index).price = 17.95;
database.battery(index).capacity = 3100;
database.battery(index).discharge_rate = 12;
database.battery(index).life_cycle = 500;
database.battery(index).voltage = 3.7;
database.battery(index).weight = 47;
database.battery(index).type = "Li-ion";
database.battery(index).protection = "no";

%% Motor_Propeller 1
index = 1;
database.motor_propeller(index).motor = database.motor(1);
database.motor_propeller(index).propeller = database.propeller(1);
database.motor_propeller(index).thrust = [0;18;40;69;101;140;179;220;261;288];
database.motor_propeller(index).ampere = [0;0.001;0.2;0.89;1.59;2.43;3.32;4.65;6.04;7.23];
database.motor_propeller(index).watt   = [0;0.001;2.51;11.16;19.74;29.95;40.66;56.41;72.55;85.63];
database.motor_propeller(index).voltage = 11.1;
database.motor_propeller(index).fitted_th_vs_amp = fit(database.motor_propeller(index).thrust,database.motor_propeller(index).ampere,"poly4");
database.motor_propeller(index).fitted_th_vs_watt = fit(database.motor_propeller(index).thrust,database.motor_propeller(index).watt,"poly4");
database.motor_propeller(index).source = "https://www.youtube.com/watch?v=Mge9CBd9Iu8&ab_channel=GalKremer";

%% Motor_Propeller 2
index = 2;
database.motor_propeller(index).motor = database.motor(1);
database.motor_propeller(index).propeller = database.propeller(1);
database.motor_propeller(index).thrust = [0;34;70;114;161;219;273;332;377;406];
database.motor_propeller(index).ampere = [0;0.1;0.64;1.54;2.48;3.66;5.1;7.13;9.06;10.64];
database.motor_propeller(index).watt   = [0;1.68;10.82;25.73;41.29;60.68;84.04;116.52;146.84;171.05];
database.motor_propeller(index).voltage = 14.8;
database.motor_propeller(index).fitted_th_vs_amp = fit(database.motor_propeller(index).thrust,database.motor_propeller(index).ampere,"poly4");
database.motor_propeller(index).fitted_th_vs_watt = fit(database.motor_propeller(index).thrust,database.motor_propeller(index).watt,"poly4");
database.motor_propeller(index).source = "https://www.youtube.com/watch?v=Mge9CBd9Iu8&ab_channel=GalKremer";

%% Motor_Propeller 3 
index = 3;
database.motor_propeller(index).motor = database.motor(1);
database.motor_propeller(index).propeller = database.propeller(2);
database.motor_propeller(index).thrust = [0;25;56;92;130;171;219;269;310;338];
database.motor_propeller(index).ampere = [0;0.05;0.2;1.04;1.78;2.87;4.01;5.5;7.13;8.42];
database.motor_propeller(index).watt   = [0;0.5;2.5;12.9;21.96;35.05;48.28;65.25;83.48;97.17];
database.motor_propeller(index).voltage = 11.1;
database.motor_propeller(index).fitted_th_vs_amp = fit(database.motor_propeller(index).thrust,database.motor_propeller(index).ampere,"poly6");
database.motor_propeller(index).fitted_th_vs_watt = fit(database.motor_propeller(index).thrust,database.motor_propeller(index).watt,"poly6");
database.motor_propeller(index).source = "https://www.youtube.com/watch?v=Mge9CBd9Iu8&ab_channel=GalKremer";

%% Motor_Propeller 4
index = 4;
database.motor_propeller(index).motor = database.motor(1);
database.motor_propeller(index).propeller = database.propeller(2);
database.motor_propeller(index).thrust = [0;45;96;151;214;278;335;390;431;453];
database.motor_propeller(index).ampere = [0;0.2;0.89;1.83;3.07;4.46;6.29;8.37;10.4;11.83];
database.motor_propeller(index).watt   = [0;3.37;14.97;30.66;51.18;74.05;103.97;137.44;169.93;192.42];
database.motor_propeller(index).voltage = 14.8;
database.motor_propeller(index).fitted_th_vs_amp = fit(database.motor_propeller(index).thrust,database.motor_propeller(index).ampere,"poly4");
database.motor_propeller(index).fitted_th_vs_watt = fit(database.motor_propeller(index).thrust,database.motor_propeller(index).watt,"poly4");
database.motor_propeller(index).source = "https://www.youtube.com/watch?v=Mge9CBd9Iu8&ab_channel=GalKremer";
%% Motor_Propeller 5
index = 5;
database.motor_propeller(index).motor = database.motor(1);
database.motor_propeller(index).propeller = database.propeller(3);
database.motor_propeller(index).thrust = [0;21;47;80;116;165;210;255;302;332];
database.motor_propeller(index).ampere = [0;0.05;0.2;0.89;1.59;2.48;3.47;4.65;6.19;7.43];
database.motor_propeller(index).watt   = [0;0.5;2.51;11.16;19.74;30.56;42.39;56.41;74.5;87.98];
database.motor_propeller(index).voltage = 11.1;
database.motor_propeller(index).fitted_th_vs_amp = fit(database.motor_propeller(5).thrust,database.motor_propeller(index).ampere,"poly4");
database.motor_propeller(index).fitted_th_vs_watt = fit(database.motor_propeller(5).thrust,database.motor_propeller(index).watt,"poly4");
database.motor_propeller(index).source = "https://www.youtube.com/watch?v=Mge9CBd9Iu8&ab_channel=GalKremer";

%% Motor_Propeller 6
index = 6;
database.motor_propeller(index).motor = database.motor(1);
database.motor_propeller(index).propeller = database.propeller(3);
database.motor_propeller(index).thrust = [0;36;82;136;195;259;320;382;433;462];
database.motor_propeller(index).ampere = [0;0.2;0.6;1.54;2.58;3.76;5.25;7.23;9.26;10.74];
database.motor_propeller(index).watt   = [0;3;9.99;25.69;42.94;62.32;86.49;117.74;149.79;172.35];
database.motor_propeller(index).voltage = 14.8;
database.motor_propeller(index).fitted_th_vs_amp = fit(database.motor_propeller(index).thrust,database.motor_propeller(index).ampere,"poly4");
database.motor_propeller(index).fitted_th_vs_watt = fit(database.motor_propeller(index).thrust,database.motor_propeller(index).watt,"poly4");
database.motor_propeller(index).source = "https://www.youtube.com/watch?v=Mge9CBd9Iu8&ab_channel=GalKremer";

%% Motor_Propeller 7
index = 7;
database.motor_propeller(index).motor = database.motor(1);
database.motor_propeller(index).propeller = database.propeller(13);
database.motor_propeller(index).thrust = [0;50;147];
database.motor_propeller(index).ampere = [0;0.7;3.6];
database.motor_propeller(index).watt   = [0;5.2;26.6];
database.motor_propeller(index).voltage = 7.4;
database.motor_propeller(index).fitted_th_vs_amp = fit(database.motor_propeller(index).thrust,database.motor_propeller(index).ampere,"poly2");
database.motor_propeller(index).fitted_th_vs_watt = fit(database.motor_propeller(index).thrust,database.motor_propeller(index).watt,"poly2");
database.motor_propeller(index).source = "https://flywoo.net/products/nin-1404-v2-ultralight-fpv-motor";

%% Motor_Propeller 8
index = 8; 
database.motor_propeller(index).motor = database.motor(1);
database.motor_propeller(index).propeller = database.propeller(13);
database.motor_propeller(index).thrust = [0;86;282];
database.motor_propeller(index).ampere = [0;1.4;7.2];
database.motor_propeller(index).watt   = [0;10.4;53.3];
database.motor_propeller(index).voltage = 11.1;
database.motor_propeller(index).fitted_th_vs_amp = fit(database.motor_propeller(index).thrust,database.motor_propeller(index).ampere,"poly2");
database.motor_propeller(index).fitted_th_vs_watt = fit(database.motor_propeller(index).thrust,database.motor_propeller(index).watt,"poly2");
database.motor_propeller(index).source = "https://flywoo.net/products/nin-1404-v2-ultralight-fpv-motor";

%% Motor_Propeller 9
index = 9; 
database.motor_propeller(index).motor = database.motor(1);
database.motor_propeller(index).propeller = database.propeller(4);
database.motor_propeller(index).thrust = [0;72;221];
database.motor_propeller(index).ampere = [0;1.2;6.6];
database.motor_propeller(index).watt   = [0;8.9;48.8];
database.motor_propeller(index).voltage = 7.4;
database.motor_propeller(index).fitted_th_vs_amp = fit(database.motor_propeller(index).thrust,database.motor_propeller(index).ampere,"poly2");
database.motor_propeller(index).fitted_th_vs_watt = fit(database.motor_propeller(index).thrust,database.motor_propeller(index).watt,"poly2");
database.motor_propeller(index).source = "https://flywoo.net/products/nin-1404-v2-ultralight-fpv-motor";

%% Motor_Propeller 10
index = 10; 
database.motor_propeller(index).motor = database.motor(1);
database.motor_propeller(index).propeller = database.propeller(4);
database.motor_propeller(index).thrust = [0;143;365];
database.motor_propeller(index).ampere = [0;2.8;11.3];
database.motor_propeller(index).watt   = [0;31.1;125.4];
database.motor_propeller(index).voltage = 11.1;
database.motor_propeller(index).fitted_th_vs_amp = fit(database.motor_propeller(index).thrust,database.motor_propeller(index).ampere,"poly2");
database.motor_propeller(index).fitted_th_vs_watt = fit(database.motor_propeller(index).thrust,database.motor_propeller(index).watt,"poly2");
database.motor_propeller(index).source = "https://flywoo.net/products/nin-1404-v2-ultralight-fpv-motor";

%% Motor_Propeller 11
index = 11; 
database.motor_propeller(index).motor = database.motor(1);
database.motor_propeller(index).propeller = database.propeller(5);
database.motor_propeller(index).thrust = [0;91;234];
database.motor_propeller(index).ampere = [0;1.6;7.1];
database.motor_propeller(index).watt   = [0;11.8;52.5];
database.motor_propeller(index).voltage = 7.4;
database.motor_propeller(index).fitted_th_vs_amp = fit(database.motor_propeller(index).thrust,database.motor_propeller(index).ampere,"poly2");
database.motor_propeller(index).fitted_th_vs_watt = fit(database.motor_propeller(index).thrust,database.motor_propeller(index).watt,"poly2");
database.motor_propeller(index).source = "https://flywoo.net/products/nin-1404-v2-ultralight-fpv-motor";

%% Motor_Propeller 12
index = 12; 
database.motor_propeller(index).motor = database.motor(1);
database.motor_propeller(index).propeller = database.propeller(6);
database.motor_propeller(index).thrust = [0;124;299];
database.motor_propeller(index).ampere = [0;2;8];
database.motor_propeller(index).watt   = [0;14.8;59.2];
database.motor_propeller(index).voltage = 7.4;
database.motor_propeller(index).fitted_th_vs_amp = fit(database.motor_propeller(index).thrust,database.motor_propeller(index).ampere,"poly2");
database.motor_propeller(index).fitted_th_vs_watt = fit(database.motor_propeller(index).thrust,database.motor_propeller(index).watt,"poly2");
database.motor_propeller(index).source = "https://flywoo.net/products/nin-1404-v2-ultralight-fpv-motor";

%% Motor_Propeller 13
index = 13; 
database.motor_propeller(index).motor = database.motor(2);
database.motor_propeller(index).propeller = database.propeller(6);
database.motor_propeller(index).thrust = [0;141;346];
database.motor_propeller(index).ampere = [0;1.7;7.3];
database.motor_propeller(index).watt   = [0;18.9;81];
database.motor_propeller(index).voltage = 11.1;
database.motor_propeller(index).fitted_th_vs_amp = fit(database.motor_propeller(index).thrust,database.motor_propeller(index).ampere,"poly2");
database.motor_propeller(index).fitted_th_vs_watt = fit(database.motor_propeller(index).thrust,database.motor_propeller(index).watt,"poly2");
database.motor_propeller(index).source = "https://flywoo.net/products/nin-1404-v2-ultralight-fpv-motor";

%% Motor_Propeller 14
index = 14;
database.motor_propeller(index).motor = database.motor(2);
database.motor_propeller(index).propeller = database.propeller(5);
database.motor_propeller(index).thrust = [0;101;272];
database.motor_propeller(index).ampere = [0;1.4;6.4];
database.motor_propeller(index).watt   = [0;15.5;71];
database.motor_propeller(index).voltage = 11.1;
database.motor_propeller(index).fitted_th_vs_amp = fit(database.motor_propeller(index).thrust,database.motor_propeller(index).ampere,"poly2");
database.motor_propeller(index).fitted_th_vs_watt = fit(database.motor_propeller(index).thrust,database.motor_propeller(index).watt,"poly2");
database.motor_propeller(index).source = "https://flywoo.net/products/nin-1404-v2-ultralight-fpv-motor";

%% Motor_Propeller 15
index = 15;
database.motor_propeller(index).motor = database.motor(2);
database.motor_propeller(index).propeller = database.propeller(5);
database.motor_propeller(index).thrust = [0;163;395];
database.motor_propeller(index).ampere = [0;2.4;9.5];
database.motor_propeller(index).watt   = [0;35.5;140.6];
database.motor_propeller(index).voltage = 14.8;
database.motor_propeller(index).fitted_th_vs_amp = fit(database.motor_propeller(index).thrust,database.motor_propeller(index).ampere,"poly2");
database.motor_propeller(index).fitted_th_vs_watt = fit(database.motor_propeller(index).thrust,database.motor_propeller(index).watt,"poly2");
database.motor_propeller(index).source = "https://flywoo.net/products/nin-1404-v2-ultralight-fpv-motor";

%% Motor_Propeller 16
index = 16;
database.motor_propeller(index).motor = database.motor(2);
database.motor_propeller(index).propeller = database.propeller(4);
database.motor_propeller(index).thrust = [0;96;264];
database.motor_propeller(index).ampere = [0;1.2;6.2];
database.motor_propeller(index).watt   = [0;13.3;68.8];
database.motor_propeller(index).voltage = 11.1;
database.motor_propeller(index).fitted_th_vs_amp = fit(database.motor_propeller(index).thrust,database.motor_propeller(index).ampere,"poly2");
database.motor_propeller(index).fitted_th_vs_watt = fit(database.motor_propeller(index).thrust,database.motor_propeller(index).watt,"poly2");
database.motor_propeller(index).source = "https://flywoo.net/products/nin-1404-v2-ultralight-fpv-motor";

%% Motor_Propeller 17
index = 17;
database.motor_propeller(index).motor = database.motor(2);
database.motor_propeller(index).propeller = database.propeller(4);
database.motor_propeller(index).thrust = [0;150;379];
database.motor_propeller(index).ampere = [0;2;8.9];
database.motor_propeller(index).watt   = [0;29.6;131.7];
database.motor_propeller(index).voltage = 14.8;
database.motor_propeller(index).fitted_th_vs_amp = fit(database.motor_propeller(index).thrust,database.motor_propeller(index).ampere,"poly2");
database.motor_propeller(index).fitted_th_vs_watt = fit(database.motor_propeller(index).thrust,database.motor_propeller(index).watt,"poly2");
database.motor_propeller(index).source = "https://flywoo.net/products/nin-1404-v2-ultralight-fpv-motor";

%% Motor_Propeller 18
index = 18;
database.motor_propeller(index).motor = database.motor(3);
database.motor_propeller(index).propeller = database.propeller(6);
database.motor_propeller(index).thrust = [0;125;343];
database.motor_propeller(index).ampere = [0;0.9;4.8];
database.motor_propeller(index).watt   = [0;13.3;71];
database.motor_propeller(index).voltage = 14.8;
database.motor_propeller(index).fitted_th_vs_amp = fit(database.motor_propeller(index).thrust,database.motor_propeller(index).ampere,"poly2");
database.motor_propeller(index).fitted_th_vs_watt = fit(database.motor_propeller(index).thrust,database.motor_propeller(index).watt,"poly2");
database.motor_propeller(index).source = "https://flywoo.net/products/nin-1404-v2-ultralight-fpv-motor";

%% Motor_Propeller 19
index = 19;
database.motor_propeller(index).motor = database.motor(3);
database.motor_propeller(index).propeller = database.propeller(5);
database.motor_propeller(index).thrust = [0;103;271];
database.motor_propeller(index).ampere = [0;0.8;4.2];
database.motor_propeller(index).watt   = [0;11.8;62.2];
database.motor_propeller(index).voltage = 14.8;
database.motor_propeller(index).fitted_th_vs_amp = fit(database.motor_propeller(index).thrust,database.motor_propeller(index).ampere,"poly2");
database.motor_propeller(index).fitted_th_vs_watt = fit(database.motor_propeller(index).thrust,database.motor_propeller(index).watt,"poly2");
database.motor_propeller(index).source = "https://flywoo.net/products/nin-1404-v2-ultralight-fpv-motor";

%% Motor_Propeller 20
index = 20;
database.motor_propeller(index).motor = database.motor(3);
database.motor_propeller(index).propeller = database.propeller(5);
database.motor_propeller(index).thrust = [0;158;399];
database.motor_propeller(index).ampere = [0;1.5;6.8];
database.motor_propeller(index).watt   = [0;33.3;151];
database.motor_propeller(index).voltage = 22.2;
database.motor_propeller(index).fitted_th_vs_amp = fit(database.motor_propeller(index).thrust,database.motor_propeller(index).ampere,"poly2");
database.motor_propeller(index).fitted_th_vs_watt = fit(database.motor_propeller(index).thrust,database.motor_propeller(index).watt,"poly2");
database.motor_propeller(index).source = "https://flywoo.net/products/nin-1404-v2-ultralight-fpv-motor";

%% Motor_Propeller 21
index = 21;
database.motor_propeller(index).motor = database.motor(3);
database.motor_propeller(index).propeller = database.propeller(4);
database.motor_propeller(index).thrust = [0;86;255];
database.motor_propeller(index).ampere = [0;0.8;3.9];
database.motor_propeller(index).watt   = [0;11.8;57.7];
database.motor_propeller(index).voltage = 14.8;
database.motor_propeller(index).fitted_th_vs_amp = fit(database.motor_propeller(index).thrust,database.motor_propeller(index).ampere,"poly2");
database.motor_propeller(index).fitted_th_vs_watt = fit(database.motor_propeller(index).thrust,database.motor_propeller(index).watt,"poly2");
database.motor_propeller(index).source = "https://flywoo.net/products/nin-1404-v2-ultralight-fpv-motor";

%% Motor_Propeller 22
index = 22;
database.motor_propeller(index).motor = database.motor(3);
database.motor_propeller(index).propeller = database.propeller(4);
database.motor_propeller(index).thrust = [0;138;382];
database.motor_propeller(index).ampere = [0;1.1;6.2];
database.motor_propeller(index).watt   = [0;24.4;137.6];
database.motor_propeller(index).voltage = 22.2;
database.motor_propeller(index).fitted_th_vs_amp = fit(database.motor_propeller(index).thrust,database.motor_propeller(index).ampere,"poly2");
database.motor_propeller(index).fitted_th_vs_watt = fit(database.motor_propeller(index).thrust,database.motor_propeller(index).watt,"poly2");
database.motor_propeller(index).source = "https://flywoo.net/products/nin-1404-v2-ultralight-fpv-motor";

%% Motor_Propeller 23
index = 23;
database.motor_propeller(index).motor = database.motor(3);
database.motor_propeller(index).propeller = database.propeller(13);
database.motor_propeller(index).thrust = [0;55;173];
database.motor_propeller(index).ampere = [0;0.2;2.3];
database.motor_propeller(index).watt   = [0;3;34];
database.motor_propeller(index).voltage = 14.8;
database.motor_propeller(index).fitted_th_vs_amp = fit(database.motor_propeller(index).thrust,database.motor_propeller(index).ampere,"poly2");
database.motor_propeller(index).fitted_th_vs_watt = fit(database.motor_propeller(index).thrust,database.motor_propeller(index).watt,"poly2");
database.motor_propeller(index).source = "https://flywoo.net/products/nin-1404-v2-ultralight-fpv-motor";

%% Motor_Propeller 24
index = 24;
database.motor_propeller(index).motor = database.motor(3);
database.motor_propeller(index).propeller = database.propeller(13);
database.motor_propeller(index).thrust = [0;102;295];
database.motor_propeller(index).ampere = [0;0.8;3.8];
database.motor_propeller(index).watt   = [0;11.8;56.2];
database.motor_propeller(index).voltage = 22.2;
database.motor_propeller(index).fitted_th_vs_amp = fit(database.motor_propeller(index).thrust,database.motor_propeller(index).ampere,"poly2");
database.motor_propeller(index).fitted_th_vs_watt = fit(database.motor_propeller(index).thrust,database.motor_propeller(index).watt,"poly2");
database.motor_propeller(index).source = "https://flywoo.net/products/nin-1404-v2-ultralight-fpv-motor";

%% Motor_Propeller 25 
index = 25;
database.motor_propeller(index).motor = database.motor(4);
database.motor_propeller(index).propeller = database.propeller(5);
database.motor_propeller(index).thrust = [0;189;229;293;353;358;366];
database.motor_propeller(index).ampere = [0;2.58;3.37;5.25;7.56;8.69;11.28];
database.motor_propeller(index).watt   = [0;41.3;53.9;84;121;139;180.5];
database.motor_propeller(index).voltage = 14.8;
database.motor_propeller(index).fitted_th_vs_amp = fit(database.motor_propeller(index).thrust,database.motor_propeller(index).ampere,"exp1");
database.motor_propeller(index).fitted_th_vs_watt = fit(database.motor_propeller(index).thrust,database.motor_propeller(index).watt,"exp1");
database.motor_propeller(index).source = "https://shop.iflight-rc.com/index.php?route=product/product&product_id=895";

%% Motor_Propeller 26 
index = 26;
database.motor_propeller(index).motor = database.motor(4);
database.motor_propeller(index).propeller = database.propeller(7);
database.motor_propeller(index).thrust = [0;229;299;353;393;429;446];
database.motor_propeller(index).ampere = [0;3.28;4.89;6.45;8.76;10.89;13.58];
database.motor_propeller(index).watt   = [0;52.5;78.2;103.2;140.2;174.2;217.3];
database.motor_propeller(index).voltage = 14.8;
database.motor_propeller(index).fitted_th_vs_amp = fit(database.motor_propeller(index).thrust,database.motor_propeller(index).ampere,"smoothingspline");
database.motor_propeller(index).fitted_th_vs_watt = fit(database.motor_propeller(index).thrust,database.motor_propeller(index).watt,"smoothingspline");
database.motor_propeller(index).source = "https://shop.iflight-rc.com/index.php?route=product/product&product_id=895";

%% Motor_Propeller 27 
index = 27;
database.motor_propeller(index).motor = database.motor(5);
database.motor_propeller(index).propeller = database.propeller(5);
database.motor_propeller(index).thrust = [0;189;219;293;323;355;389];
database.motor_propeller(index).ampere = [0;2.88;3.39;5.29;7.46;9.59;12.08];
database.motor_propeller(index).watt   = [0;46.1;54.2;84.6;119.4;153.4;193.3];
database.motor_propeller(index).voltage = 14.8;
database.motor_propeller(index).fitted_th_vs_amp = fit(database.motor_propeller(index).thrust,database.motor_propeller(index).ampere,"smoothingspline");
database.motor_propeller(index).fitted_th_vs_watt = fit(database.motor_propeller(index).thrust,database.motor_propeller(index).watt,"smoothingspline");
database.motor_propeller(index).source = "https://shop.iflight-rc.com/index.php?route=product/product&product_id=895";

%% Motor_Propeller 28
index = 28;
database.motor_propeller(index).motor = database.motor(6);
database.motor_propeller(index).propeller = database.propeller(9);
database.motor_propeller(index).thrust = [0;204;609];
database.motor_propeller(index).ampere = [0;2.3;10.2];
database.motor_propeller(index).watt   = [0;42.6;188.7];
database.motor_propeller(index).voltage = 18.5;
database.motor_propeller(index).fitted_th_vs_amp = fit(database.motor_propeller(index).thrust,database.motor_propeller(index).ampere,"poly2");
database.motor_propeller(index).fitted_th_vs_watt = fit(database.motor_propeller(index).thrust,database.motor_propeller(index).watt,"poly2");
database.motor_propeller(index).source = "https://www.banggood.com/RCINPower-GTS-V2-1506-3000KV-4300KV-4-6S-Brushless-Motor-for-RC-Drone-FPV-Racing-p-1434810.html?rmmds=category&ID=515953517763&cur_warehouse=CN";

%% Motor_Propeller 29
index = 29;
database.motor_propeller(index).motor = database.motor(6);
database.motor_propeller(index).propeller = database.propeller(9);
database.motor_propeller(index).thrust = [0;245;730];
database.motor_propeller(index).ampere = [0;2.9;12.3];
database.motor_propeller(index).watt   = [0;64.4;273.1];
database.motor_propeller(index).voltage = 22.2;
database.motor_propeller(index).fitted_th_vs_amp = fit(database.motor_propeller(index).thrust,database.motor_propeller(index).ampere,"poly2");
database.motor_propeller(index).fitted_th_vs_watt = fit(database.motor_propeller(index).thrust,database.motor_propeller(index).watt,"poly2");
database.motor_propeller(index).source = "https://www.banggood.com/RCINPower-GTS-V2-1506-3000KV-4300KV-4-6S-Brushless-Motor-for-RC-Drone-FPV-Racing-p-1434810.html?rmmds=category&ID=515953517763&cur_warehouse=CN";

%% Motor_Propeller 30
index = 30;
database.motor_propeller(index).motor = database.motor(6);
database.motor_propeller(index).propeller = database.propeller(8);
database.motor_propeller(index).thrust = [0;259;646];
database.motor_propeller(index).ampere = [0;3.1;13.9];
database.motor_propeller(index).watt   = [0;57.4;257.2];
database.motor_propeller(index).voltage = 18.5;
database.motor_propeller(index).fitted_th_vs_amp = fit(database.motor_propeller(index).thrust,database.motor_propeller(index).ampere,"poly2");
database.motor_propeller(index).fitted_th_vs_watt = fit(database.motor_propeller(index).thrust,database.motor_propeller(index).watt,"poly2");
database.motor_propeller(index).source = "https://www.banggood.com/RCINPower-GTS-V2-1506-3000KV-4300KV-4-6S-Brushless-Motor-for-RC-Drone-FPV-Racing-p-1434810.html?rmmds=category&ID=515953517763&cur_warehouse=CN";

%% Motor_Propeller 31
index = 31;
database.motor_propeller(index).motor = database.motor(6);
database.motor_propeller(index).propeller = database.propeller(8);
database.motor_propeller(index).thrust = [0;310;776];
database.motor_propeller(index).ampere = [0;3.9;16.6];
database.motor_propeller(index).watt   = [0;86.6;368.5];
database.motor_propeller(index).voltage = 22.2;
database.motor_propeller(index).fitted_th_vs_amp = fit(database.motor_propeller(index).thrust,database.motor_propeller(index).ampere,"poly2");
database.motor_propeller(index).fitted_th_vs_watt = fit(database.motor_propeller(index).thrust,database.motor_propeller(index).watt,"poly2");
database.motor_propeller(index).source = "https://www.banggood.com/RCINPower-GTS-V2-1506-3000KV-4300KV-4-6S-Brushless-Motor-for-RC-Drone-FPV-Racing-p-1434810.html?rmmds=category&ID=515953517763&cur_warehouse=CN";

%% Motor_Propeller 32
index = 32;
database.motor_propeller(index).motor = database.motor(7);
database.motor_propeller(index).propeller = database.propeller(9);
database.motor_propeller(index).thrust = [0;165;479];
database.motor_propeller(index).ampere = [0;2.5;11.5];
database.motor_propeller(index).watt   = [0;27.8;127.7];
database.motor_propeller(index).voltage = 11.1;
database.motor_propeller(index).fitted_th_vs_amp = fit(database.motor_propeller(index).thrust,database.motor_propeller(index).ampere,"poly2");
database.motor_propeller(index).fitted_th_vs_watt = fit(database.motor_propeller(index).thrust,database.motor_propeller(index).watt,"poly2");
database.motor_propeller(index).source = "https://www.banggood.com/RCINPower-GTS-V2-1506-3000KV-4300KV-4-6S-Brushless-Motor-for-RC-Drone-FPV-Racing-p-1434810.html?rmmds=category&ID=515953517763&cur_warehouse=CN";

%% Motor_Propeller 33
index = 33;
database.motor_propeller(index).motor = database.motor(7);
database.motor_propeller(index).propeller = database.propeller(9);
database.motor_propeller(index).thrust = [0;220;638];
database.motor_propeller(index).ampere = [0;3.4;16.7];
database.motor_propeller(index).watt   = [0;50.3;247.2];
database.motor_propeller(index).voltage = 14.8;
database.motor_propeller(index).fitted_th_vs_amp = fit(database.motor_propeller(index).thrust,database.motor_propeller(index).ampere,"poly2");
database.motor_propeller(index).fitted_th_vs_watt = fit(database.motor_propeller(index).thrust,database.motor_propeller(index).watt,"poly2");
database.motor_propeller(index).source = "https://www.banggood.com/RCINPower-GTS-V2-1506-3000KV-4300KV-4-6S-Brushless-Motor-for-RC-Drone-FPV-Racing-p-1434810.html?rmmds=category&ID=515953517763&cur_warehouse=CN";

%% Motor_Propeller 34
index = 34;
database.motor_propeller(index).motor = database.motor(7);
database.motor_propeller(index).propeller = database.propeller(8);
database.motor_propeller(index).thrust = [0;209;523];
database.motor_propeller(index).ampere = [0;5.4;15.7];
database.motor_propeller(index).watt   = [0;59.9;174.3];
database.motor_propeller(index).voltage = 11.1;
database.motor_propeller(index).fitted_th_vs_amp = fit(database.motor_propeller(index).thrust,database.motor_propeller(index).ampere,"poly2");
database.motor_propeller(index).fitted_th_vs_watt = fit(database.motor_propeller(index).thrust,database.motor_propeller(index).watt,"poly2");
database.motor_propeller(index).source = "https://www.banggood.com/RCINPower-GTS-V2-1506-3000KV-4300KV-4-6S-Brushless-Motor-for-RC-Drone-FPV-Racing-p-1434810.html?rmmds=category&ID=515953517763&cur_warehouse=CN";

%% Motor_Propeller 35
index = 35;
database.motor_propeller(index).motor = database.motor(7);
database.motor_propeller(index).propeller = database.propeller(8);
database.motor_propeller(index).thrust = [0;278;696];
database.motor_propeller(index).ampere = [0;4.9;22.4];
database.motor_propeller(index).watt   = [0;72.5;331.5];
database.motor_propeller(index).voltage = 14.8;
database.motor_propeller(index).fitted_th_vs_amp = fit(database.motor_propeller(index).thrust,database.motor_propeller(index).ampere,"poly2");
database.motor_propeller(index).fitted_th_vs_watt = fit(database.motor_propeller(index).thrust,database.motor_propeller(index).watt,"poly2");
database.motor_propeller(index).source = "https://www.banggood.com/RCINPower-GTS-V2-1506-3000KV-4300KV-4-6S-Brushless-Motor-for-RC-Drone-FPV-Racing-p-1434810.html?rmmds=category&ID=515953517763&cur_warehouse=CN";

%% Motor_Propeller 36
index = 36;
database.motor_propeller(index).motor = database.motor(8);
database.motor_propeller(index).propeller = database.propeller(10);
database.motor_propeller(index).thrust = [0;126;176;231;287;352;419];
database.motor_propeller(index).ampere = [0;2.75;4.02;5.59;7.25;9.51;12.11];
database.motor_propeller(index).watt   = [0;41.3;60.3;83.9;108.8;142.7;181.7];
database.motor_propeller(index).voltage = 14.8;
database.motor_propeller(index).fitted_th_vs_amp = fit(database.motor_propeller(index).thrust,database.motor_propeller(index).ampere,"poly4");
database.motor_propeller(index).fitted_th_vs_watt = fit(database.motor_propeller(index).thrust,database.motor_propeller(index).watt,"poly4");
database.motor_propeller(index).source = "https://geprc.com/product/geprc-gep-gr1507-motor/";

%% Motor_Propeller 37
index = 37;
database.motor_propeller(index).motor = database.motor(8);
database.motor_propeller(index).propeller = database.propeller(11);
database.motor_propeller(index).thrust = [0;269;348;450;543;621;699];
database.motor_propeller(index).ampere = [0;4.9;7.3;10.15;13.63;16.76;20.78];
database.motor_propeller(index).watt   = [0;58.8;87.6;121.8;163.6;201.1;249.4];
database.motor_propeller(index).voltage = 11.1;
database.motor_propeller(index).fitted_th_vs_amp = fit(database.motor_propeller(index).thrust,database.motor_propeller(index).ampere,"poly4");
database.motor_propeller(index).fitted_th_vs_watt = fit(database.motor_propeller(index).thrust,database.motor_propeller(index).watt,"poly4");
database.motor_propeller(index).source = "https://geprc.com/product/geprc-gep-gr1507-motor/";

%% Motor_Propeller 38
index = 38;
database.motor_propeller(index).motor = database.motor(9);
database.motor_propeller(index).propeller = database.propeller(10);
database.motor_propeller(index).thrust = [0;186;252;318;391;469;547];
database.motor_propeller(index).ampere = [0;5.44;8.09;10.78;14.02;17.59;22.25];
database.motor_propeller(index).watt   = [0;81.6;121.4;161.7;210.3;263.9;333.8];
database.motor_propeller(index).voltage = 14.8;
database.motor_propeller(index).fitted_th_vs_amp = fit(database.motor_propeller(index).thrust,database.motor_propeller(index).ampere,"poly4");
database.motor_propeller(index).fitted_th_vs_watt = fit(database.motor_propeller(index).thrust,database.motor_propeller(index).watt,"poly4");
database.motor_propeller(index).source = "https://geprc.com/product/geprc-gep-gr1507-motor/";

%% Motor_Propeller 39 
index = 39;
database.motor_propeller(index).motor = database.motor(9);
database.motor_propeller(index).propeller = database.propeller(11);
database.motor_propeller(index).thrust = [0;268;334;421;497;566;627];
database.motor_propeller(index).ampere = [0;6.37;9.41;12.55;16.17;20.39;24.7];
database.motor_propeller(index).watt   = [0;76.4;112.9;150.6;194;244.7;296.4];
database.motor_propeller(index).voltage = 11.1;
database.motor_propeller(index).fitted_th_vs_amp = fit(database.motor_propeller(index).thrust,database.motor_propeller(index).ampere,"poly2");
database.motor_propeller(index).fitted_th_vs_watt = fit(database.motor_propeller(index).thrust,database.motor_propeller(index).watt,"poly2");
database.motor_propeller(index).source = "https://geprc.com/product/geprc-gep-gr1507-motor/";

%% Motor_Propeller 40 
index = 40;
database.motor_propeller(index).motor = database.motor(10);
database.motor_propeller(index).propeller = database.propeller(12);
database.motor_propeller(index).thrust = [0;189;256;338;419;501;586];
database.motor_propeller(index).ampere = [0;5.3;7.33;9.73;12.61;16.08;20.17];
database.motor_propeller(index).watt   = [0;79.5;110;146;189.2;241.2;302.6];
database.motor_propeller(index).voltage = 14.8;
database.motor_propeller(index).fitted_th_vs_amp = fit(database.motor_propeller(index).thrust,database.motor_propeller(index).ampere,"poly3");
database.motor_propeller(index).fitted_th_vs_watt = fit(database.motor_propeller(index).thrust,database.motor_propeller(index).watt,"poly3");
database.motor_propeller(index).source = "https://geprc.com/product/geprc-gep-gr1507-motor/";

%% Motor_Propeller 41 
index = 41;
database.motor_propeller(index).motor = database.motor(10);
database.motor_propeller(index).propeller = database.propeller(11);
database.motor_propeller(index).thrust = [0;289;372;465;543;621;682];
database.motor_propeller(index).ampere = [0;8.53;11.47;14.97;19.06;23.33;27.5];
database.motor_propeller(index).watt   = [0;102.4;137.6;179.6;228.7;280;330];
database.motor_propeller(index).voltage = 11.1;
database.motor_propeller(index).fitted_th_vs_amp = fit(database.motor_propeller(index).thrust,database.motor_propeller(index).ampere,"poly3");
database.motor_propeller(index).fitted_th_vs_watt = fit(database.motor_propeller(index).thrust,database.motor_propeller(index).watt,"poly3");
database.motor_propeller(index).source = "https://geprc.com/product/geprc-gep-gr1507-motor/";

%% Motor_Propeller 42 
index = 42;
database.motor_propeller(index).motor = database.motor(11);
database.motor_propeller(index).propeller = database.propeller(5);
database.motor_propeller(index).thrust = [0;116;162;213;261;307;354;379];
database.motor_propeller(index).ampere = [0;1.89;3.24;4.99;6.49;8.58;11.08;13.38];
database.motor_propeller(index).watt   = [0;30.79;52.14;80.57;104.11;137.04;173.68;208.25];
database.motor_propeller(index).voltage = 14.8;
database.motor_propeller(index).fitted_th_vs_amp = fit(database.motor_propeller(index).thrust,database.motor_propeller(index).ampere,"poly2");
database.motor_propeller(index).fitted_th_vs_watt = fit(database.motor_propeller(index).thrust,database.motor_propeller(index).watt,"poly2");
database.motor_propeller(index).source = "https://www.banggood.com/GEPRC-GR1404-1404-3850KV-2~4S-1_5mm-Shaft-Brushless-Motor-for-Cinewhoop-Whoop-RC-Drone-FPV-Racing-p-1653741.html?rmmds=search&cur_warehouse=CN";

%% Motor_Propeller 43 
index = 43;
database.motor_propeller(index).motor = database.motor(12);
database.motor_propeller(index).propeller = database.propeller(14);
database.motor_propeller(index).thrust = [0;205;228;253;277;311;344;375;408;437;468;532];
database.motor_propeller(index).ampere = [0;5.07;5.91;6.92;7.87;9.16;10.49;11.89;13.78;15.9;17.2;19.8];
database.motor_propeller(index).watt   = [0;77.064;89.832;105.184;119.624;139.232;159.448;180.728;209.456;241.68;261.44;300.96];
database.motor_propeller(index).voltage = 14.8;
database.motor_propeller(index).fitted_th_vs_amp = fit(database.motor_propeller(index).thrust,database.motor_propeller(index).ampere,"poly2");
database.motor_propeller(index).fitted_th_vs_watt = fit(database.motor_propeller(index).thrust,database.motor_propeller(index).watt,"poly2");
database.motor_propeller(index).source = "NaN";

%% Motor_Propeller 44
index = 44;
database.motor_propeller(index).motor = database.motor(13);
database.motor_propeller(index).propeller = database.propeller(15);
database.motor_propeller(index).thrust = [0;60;80;100;120;140;160;180;200;220;240;260;280;300;320;340;360;380];
database.motor_propeller(index).ampere = [0;1.18;1.53;1.88;2.23;2.64;3.06;3.54;4.04;4.62;5.21;5.92;6.76;7.6;8.43;9.44;10.47;11.56];
database.motor_propeller(index).watt   = [0;18.83;24.55;30.13;35.69;42.17;48.88;56.59;64.63;73.87;83.4;94.68;108.1;121.52;134.95;151.03;167.58;185.4];
database.motor_propeller(index).voltage = 14.8;
database.motor_propeller(index).fitted_th_vs_amp = fit(database.motor_propeller(index).thrust,database.motor_propeller(index).ampere,"poly4");
database.motor_propeller(index).fitted_th_vs_watt = fit(database.motor_propeller(index).thrust,database.motor_propeller(index).watt,"poly4");
database.motor_propeller(index).source = "NaN";

%% Motor_Propeller 45
index = 45;
database.motor_propeller(index).motor = database.motor(13);
database.motor_propeller(index).propeller = database.propeller(7);
database.motor_propeller(index).thrust = [0;80;100;120;140;160;180;200;220;240;260;280;300;320;340;360;380;390];
database.motor_propeller(index).ampere = [0;1.37;1.79;2.22;2.71;3.35;4.1;4.97;5.84;6.66;7.49;8.31;8.96;9.46;9.97;10.47;11.68;12.32];
database.motor_propeller(index).watt   = [0;21.91;28.67;35.44;43.41;53.62;65.66;79.55;93.44;106.61;119.78;132.95;143.32;151.38;159.45;167.51;186.83;197.6];
database.motor_propeller(index).voltage = 14.8;
database.motor_propeller(index).fitted_th_vs_amp = fit(database.motor_propeller(index).thrust,database.motor_propeller(index).ampere,"poly6");
database.motor_propeller(index).fitted_th_vs_watt = fit(database.motor_propeller(index).thrust,database.motor_propeller(index).watt,"poly6");
database.motor_propeller(index).source = "NaN";

%% Save and Show

save database
clc

% i = 45;
% plot(database.motor_propeller(i).fitted_th_vs_amp,database.motor_propeller(i).thrust,database.motor_propeller(i).ampere)

% for i=1:4:40
%    figure
%    plot(database.motor_propeller(i).fitted_th_vs_amp,database.motor_propeller(i).thrust,database.motor_propeller(i).ampere)
% end