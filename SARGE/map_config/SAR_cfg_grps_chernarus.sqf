// =========================================================================================================
//  SAR_AI - DayZ AI library
//  Version: 1.5.0 
//  Author: Sarge (sarge@krumeich.ch) 
//
//		Wiki: to come
//		Forum: to come
//		
// ---------------------------------------------------------------------------------------------------------
//  Required:
//  UPSMon  
//  SHK_pos 
//  
// ---------------------------------------------------------------------------------------------------------
//   area, group & spawn  cfg file for Chernarus
//   last modified: 28.5.2013
// ---------------------------------------------------------------------------------------------------------

/* reconfiguring the properties of the grid (keep in mind the grid has default settings, but these you should overwrite where needed.

IMPORTANT: The grid squares are named like : SAR_area_0_0

where the first 0 is the x counter, and the second 0 the y counter.

So to adress the bottom left square in the grid, you use SAR_area_0_0.
The square above that one would be: SAR_area_0_1
the square one to the right of the bottom left square is SAR_area_1_0

You want to change the number arrays in the below lines:

The order for these numbers is always [BANDIT, SURVIVOR, SOLDIER]

Lets take an example for Chernarus
 
// Kamenka, 0 bandit groups, 1 soldier groups, 2 survivor groups - spawn probability ba,so,su - maximum group members ba,so,su
_check = [["max_grps","rnd_grps","max_p_grp"],[[0,1,2],[0,75,100],[0,4,3]],"SAR_area_0_0"] call SAR_AI_mon_upd; 
  
 [[0,1,2],[0,75,100],[0,4,3]]

the first set of numbers : 0,1,2
stands for
0 bandit groups
1 soldier group
2 surivors groups
thats the max that can spawn in this grid

the second set of numbers : 0,75,100
that means: 
0% probability to spawn bandit groups
75% for soldiers
100% for survivors

the last set of numbers : 0,4,3
thats the maximum number of ppl in the group (including the leader)
0 bandits
max 4  soldiers
max 3  survivors
this number is randomized

 
 */
// 
// grid definition for the automatic spawn system
//

if (SAR_dynamic_spawning) then {

    

    diag_log format["SAR_AI: Dynamic spawning definition / adjustments started"];
     
    // Kamenka, 0 bandit groups, 1 soldier groups, 2 survivor groups - spawn probability ba,so,su - maximum group members ba,so,su
    [["max_grps","rnd_grps","max_p_grp"],[[0,0,0],[0,100,100],[0,2,1]],"SAR_area_0_0"] call SAR_AI_mon_upd; 

    // Balota, 1 bandit groups, 0 soldier groups, 2 survivor groups - spawn probability ba,so,su - maximum group members ba,so,su
    [["max_grps","rnd_grps","max_p_grp"],[[1,0,0],[80,0,80],[2,0,3]],"SAR_area_1_0"] call SAR_AI_mon_upd; 

    // Cherno, 2 bandit groups, 0 soldier groups, 3 survivor groups - spawn probability ba,so,su - maximum group members ba,so,su
    [["max_grps","rnd_grps","max_p_grp"],[[0,0,1],[75,0,75],[4,0,4]],"SAR_area_2_0"] call SAR_AI_mon_upd; 

    // Prido, 1 bandit groups, 0 soldier groups, 3 survivor groups - spawn probability ba,so,su - maximum group members ba,so,su
    [["max_grps","rnd_grps","max_p_grp"],[[1,0,1],[50,0,50],[4,0,2]],"SAR_area_3_0"] call SAR_AI_mon_upd; 

    // Elektro, 2 bandit groups, 0 soldier groups, 3 survivor groups - spawn probability ba,so,su - maximum group members ba,so,su
    [["max_grps","rnd_grps","max_p_grp"],[[1,0,1],[50,0,50],[4,0,4]],"SAR_area_4_0"] call SAR_AI_mon_upd; 

    // Kamyshovo, 0 bandit groups, 0 soldier groups, 1 survivor groups - spawn probability ba,so,su - maximum group members ba,so,su
    [["max_grps","rnd_grps","max_p_grp"],[[0,0,1],[0,0,80],[0,0,3]],"SAR_area_5_0"] call SAR_AI_mon_upd; 

    // Tulga, 0 bandit groups, 0 soldier groups, 1 survivor groups - spawn probability ba,so,su - maximum group members ba,so,su
    [["max_grps","rnd_grps","max_p_grp"],[[0,0,1],[0,0,80],[0,0,3]],"SAR_area_5_1"] call SAR_AI_mon_upd; 

    // Solni, 1 bandit groups, 0 soldier groups, 0 survivor groups - spawn probability ba,so,su - maximum group members ba,so,su
    [["max_grps","rnd_grps","max_p_grp"],[[1,0,0],[80,0,0],[2,0,0]],"SAR_area_5_2"] call SAR_AI_mon_upd; 

    // Berezino, 0 bandit groups, 0 soldier groups, 3 survivor groups - spawn probability ba,so,su - maximum group members ba,so,su
    [["max_grps","rnd_grps","max_p_grp"],[[0,0,1],[0,0,75],[0,0,3]],"SAR_area_5_3"] call SAR_AI_mon_upd; 

    // Khelm, 1 bandit groups, 0 soldier groups, 1 survivor groups - spawn probability ba,so,su - maximum group members ba,so,su
    [["max_grps","rnd_grps","max_p_grp"],[[1,0,1],[75,0,75],[3,0,3]],"SAR_area_5_4"] call SAR_AI_mon_upd; 

    // NEAF, 0 bandit groups, 3 soldier groups, 1 survivor groups - spawn probability ba,so,su - maximum group members ba,so,su
    [["max_grps","rnd_grps","max_p_grp"],[[0,3,1],[0,50,75],[0,2,4]],"SAR_area_5_5"] call SAR_AI_mon_upd; 

    // NWAF, 0 bandit groups, 2 soldier groups, 1 survivor groups - spawn probability ba,so,su - maximum group members ba,so,su
    [["max_grps","rnd_grps","max_p_grp"],[[0,2,1],[0,50,75],[0,2,4]],"SAR_area_1_4"] call SAR_AI_mon_upd; 

    // Stary, 3 bandit groups, 0 soldier groups, 3 survivor groups - spawn probability ba,so,su - maximum group members ba,so,su
    [["max_grps","rnd_grps","max_p_grp"],[[0,0,0],[50,0,50],[3,0,3]],"SAR_area_2_2"] call SAR_AI_mon_upd; 

    // Devils Castle, 2 bandit groups, 0 soldier groups, 0 survivor groups - spawn probability ba,so,su - maximum group members ba,so,su
    [["max_grps","rnd_grps","max_p_grp"],[[0,0,0],[75,0,0],[3,0,0]],"SAR_area_2_4"] call SAR_AI_mon_upd; 

    // Skalka, 1 bandit groups, 0 soldier groups, 0 survivor groups - spawn probability ba,so,su - maximum group members ba,so,su
    [["max_grps","rnd_grps","max_p_grp"],[[0,0,0],[75,0,0],[3,0,0]],"SAR_area_0_5"] call SAR_AI_mon_upd; 

    // Pobeda, 2 bandit groups, 0 soldier groups, 0 survivor groups - spawn probability ba,so,su - maximum group members ba,so,su
    [["max_grps","rnd_grps","max_p_grp"],[[0,0,0],[75,0,0],[3,0,0]],"SAR_area_3_5"] call SAR_AI_mon_upd; 

    // Krasno, 0 bandit groups, 1 soldier groups, 1 survivor groups - spawn probability ba,so,su - maximum group members ba,so,su
    [["max_grps","rnd_grps","max_p_grp"],[[0,0,1],[0,75,75],[0,4,2]],"SAR_area_4_5"] call SAR_AI_mon_upd; 

    // test south of lopatino, 1 bandit groups, 0 soldier groups, 0 survivor groups - spawn probability ba,so,su - maximum group members ba,so,su
    [["max_grps","rnd_grps","max_p_grp"],[[0,0,0],[100,0,0],[6,0,0]],"SAR_area_0_3"] call SAR_AI_mon_upd; 

    diag_log format["SAR_AI: Dynamic spawning definition / adjustments finished"];

    
    
};
//
// Definition of area markers for static spawns
//

diag_log format["SAR_AI: Static spawning area definition started"];

// Infantry - Zone Alpha
_this = createMarker ["SAR_patrol_zone_alpha_inf_1", [8134,13461]];
_this setMarkerShape "RECTANGLE";
_this setMarkeralpha 0;
_this setMarkerType "Flag";
_this setMarkerBrush "Solid";
_this setMarkerSize [50, 50];
SAR_patrol_zone_alpha_inf_1 = _this;

// Infantry - Zone Alpha
_this = createMarker ["SAR_patrol_zone_alpha_inf_2", [8062.5,13578]];
_this setMarkerShape "RECTANGLE";
_this setMarkeralpha 0;
_this setMarkerType "Flag";
_this setMarkerBrush "Solid";
_this setMarkerSize [50, 50];
SAR_patrol_zone_alpha_inf_2 = _this;

// Infantry - Zone Alpha
_this = createMarker ["SAR_patrol_zone_alpha_inf_3", [8031,13651]];
_this setMarkerShape "RECTANGLE";
_this setMarkeralpha 0;
_this setMarkerType "Flag";
_this setMarkerBrush "Solid";
_this setMarkerSize [50, 50];
SAR_patrol_zone_alpha_inf_3 = _this;

// Infantry - Zone Alpha
_this = createMarker ["SAR_patrol_zone_alpha_inf_4", [7969,13647]];
_this setMarkerShape "RECTANGLE";
_this setMarkeralpha 0;
_this setMarkerType "Flag";
_this setMarkerBrush "Solid";
_this setMarkerSize [50, 50];
SAR_patrol_zone_alpha_inf_4 = _this;

// Infantry - Zone Alpha
_this = createMarker ["SAR_patrol_zone_alpha_inf_5", [8093,13698]];
_this setMarkerShape "RECTANGLE";
_this setMarkeralpha 0;
_this setMarkerType "Flag";
_this setMarkerBrush "Solid";
_this setMarkerSize [100, 100];
SAR_patrol_zone_alpha_inf_5 = _this;

// Infantry - Zone Alpha
_this = createMarker ["SAR_patrol_zone_alpha_inf_6", [8200,13360]];
_this setMarkerShape "RECTANGLE";
_this setMarkeralpha 0;
_this setMarkerType "Flag";
_this setMarkerBrush "Solid";
_this setMarkerSize [50, 50];
SAR_patrol_zone_alpha_inf_6 = _this;

// Sniper - Zone Alpha
_this = createMarker ["SAR_patrol_zone_alpha_sniper_1", [7706,11553]];
_this setMarkerShape "RECTANGLE";
_this setMarkeralpha 0;
_this setMarkerType "Flag";
_this setMarkerBrush "Solid";
_this setMarkerSize [50, 50];
SAR_patrol_zone_alpha_sniper_1 = _this;

// Sniper - Zone Alpha
_this = createMarker ["SAR_patrol_zone_ges_1", [7706,11553]];
_this setMarkerShape "RECTANGLE";
_this setMarkeralpha 0;
_this setMarkerType "Flag";
_this setMarkerBrush "Solid";
_this setMarkerSize [50, 50];
SAR_patrol_zone_ges_1 = _this;

// Heli 1 - Zone Alpha
_this = createMarker ["SAR_marker_zone_alpha_1", [8000, 13250]];
_this setMarkerShape "ELLIPSE";
_this setMarkeralpha 0;
_this setMarkerType "Flag";
_this setMarkerBrush "Solid";
_this setMarkerSize [1000, 1000];
SAR_marker_zone_alpha_1 = _this;

// Heli 2 - Zone Alpha
_this = createMarker ["SAR_marker_zone_alpha_2", [8100, 13400]];
_this setMarkerShape "ELLIPSE";
_this setMarkeralpha 0;
_this setMarkerType "Flag";
_this setMarkerBrush "Solid";
_this setMarkerSize [750, 750];
SAR_marker_zone_alpha_2 = _this;

// Heli 3 - Zone Alpha
_this = createMarker ["SAR_marker_zone_alpha_3", [8000, 13500]];
_this setMarkerShape "ELLIPSE";
_this setMarkeralpha 0;
_this setMarkerType "Flag";
_this setMarkerBrush "Solid";
_this setMarkerSize [500, 500];
SAR_marker_zone_alpha_3 = _this;
// soutcoast, heli patrol area
_this = createMarker ["SAR_marker_helipatrol_southcoast", [7997.2837, 2687.6707]];
_this setMarkerShape "RECTANGLE";
_this setMarkeralpha 0;
_this setMarkerType "Flag";
_this setMarkerBrush "Solid";
_this setMarkerSize [6500, 1200];
SAR_marker_helipatrol_southcoast = _this;

// eastcoast, heli patrol area
_this = createMarker ["SAR_marker_helipatrol_eastcoast", [13304.196, 8220.9795]];
_this setMarkerShape "RECTANGLE";
_this setMarkeralpha 0;
_this setMarkerType "Flag";
_this setMarkerBrush "Solid";
_this setMarkerSize [1200, 6000];
SAR_marker_helipatrol_eastcoast = _this;

// NWAF, heli patrol area
_this = createMarker ["SAR_marker_helipatrol_nwaf", [4525.3335, 10292.299]];
_this setMarkerShape "RECTANGLE";
_this setMarkeralpha 0;
_this setMarkerType "Flag";
_this setMarkerBrush "Solid";
_this setMarkerSize [1500, 500];
_this setMarkerDir 59.354115;
SAR_marker_helipatrol_nwaf = _this;

// NEAF, heli patrol area
_this = createMarker ["SAR_marker_helipatrol_neaf", [12034.16, 12725.376, 0]];
_this setMarkerShape "RECTANGLE";
_this setMarkeralpha 0;
_this setMarkerType "Flag";
_this setMarkerBrush "Solid";
_this setMarkerSize [1000, 600];
SAR_marker_helipatrol_neaf = _this;


_this = createMarker ["SAR_marker_DEBUG_veh", [1951.4304, 11905.569]];
_this setMarkerShape "RECTANGLE";
_this setMarkeralpha 0;
_this setMarkerType "Flag";
_this setMarkerBrush "Solid";
_this setMarkerSize [300, 1000];
_this setMarkerDir -19.085985;
SAR_marker_DEBUG_veh = _this;

_this = createMarker ["SAR_marker_DEBUG_devilscastle", [6913.47,11437.2,0.001]];
_this setMarkerShape "RECTANGLE";
_this setMarkeralpha 0;
_this setMarkerType "Flag";
_this setMarkerBrush "Solid";
_this setMarkerSize [10, 10];
SAR_marker_DEBUG_devilscastle = _this;

diag_log format["SAR_AI: Static spawning area definition finished"];

// ----------------------------------------------------------------------------------------
// End of area marker definition section
// ----------------------------------------------------------------------------------------


//---------------------------------------------------------------------------------
// Static, predefined heli patrol areas with configurable units
//---------------------------------------------------------------------------------
//
//      format: [areamarker,type_of_group,(respawn),(respawntime)] call SAR_AI;
//
//      areamarker          : Name of an area, as defined in your area definitions (MUST NOT BE similar to SAR_area_ ! THIS IS IMPORTANT!)
//      type_of_group       : 1 = military, 2 = survivors, 3 = bandits
//
//      respawn             : true or false (optional)
//      respawntime         : time in secs until group respawns (optional)
//      air_vehicle_type    : classnema of the air vehicle you want to use
//
//
//      Note: The crew will be automatically seized to man any available gun in the airplane / heli.
//
//      Examples:
//
//              A) military air group patrolling, respawning, respawn time = default configured time, using default randomized vehicles  
//
//                      [SAR_marker_DEBUG,1,true] call SAR_AI_heli; 
//
//              B) bandit air group patrolling, not respawning, 
//
//                      [SAR_marker_DEBUG,3] call SAR_AI_heli; 
//
//              C) survivor air group patrolling, respawning, respawn time = 120 seconds  
//
//                      [SAR_marker_DEBUG,true,120] call SAR_AI_heli; 
//
//---------------------------------------------------------------------------------
diag_log format["SAR_AI: Static Spawning for Helicopter patrols started"];

//
// define your static air patrols here
//

 //Heli Patrol NWAF
[SAR_marker_helipatrol_nwaf,1,true] call SAR_AI_heli;
[SAR_marker_helipatrol_nwaf,1,true] call SAR_AI_heli;

//Heli Patrol NEAF
[SAR_marker_helipatrol_neaf,1,true] call SAR_AI_heli;

// Heli patrol south coast
[SAR_marker_helipatrol_southcoast,1,true] call SAR_AI_heli;
[SAR_marker_helipatrol_southcoast,1,true] call SAR_AI_heli;

// heli patrol east coast
[SAR_marker_helipatrol_eastcoast,1,true] call SAR_AI_heli;
[SAR_marker_helipatrol_eastcoast,1,true] call SAR_AI_heli;



diag_log format["SAR_AI: Static Spawning for Helicopter patrols finished"];

//---------------------------------------------------------------------------------
// Static, predefined infantry patrols in defined areas with configurable units
//---------------------------------------------------------------------------------
// 
//      format: [areamarker,type_of_group,number_of_snipers,number_of_riflemen,action_to_do,(respawn),(respawntime)] call SAR_AI;
//
//      areamarker          : Name of an area, as defined in your area definitions (MUST NOT BE similar to SAR_area_ ! THIS IS IMPORTANT!)
//      type_of_group       : 1 = military, 2 = survivors, 3 = bandits
//      number_of_snipers   : amount of snipers in the group
//      number_of_riflemen  : amount of riflemen in the group
//
//      action_to_do        : groupaction (optional, default is "patrol")
//                            possible values: 
//                               "fortify" -> the group will search for nearby buildings and move in them. They will stay there until an enemy spotted, then they will chase him.
//                               "ambush"  -> the group will look for a nearby road, and setup an ambush. They will not move until an enemy was spotted. 
//                               "patrol"  -> the group will patrol random waypoints in the area, and engage any enemy they see.
//
//      respawn         : true or false (optional)
//      respawntime     : time in secs until group respawns (optional)
//
//      Examples:
//
//              A) military group patrolling, with 1 leader and 1 rifleman, respawning, respawn time = default configured time  
//
//                      [SAR_marker_DEBUG,1,0,1,"patrol",true] call SAR_AI; 
//
//              B) bandit group patrolling, with 1 leader, 2 snipers and 1 rifleman, respawning, respawn time = 30 seconds  
//
//                      [SAR_marker_DEBUG,3,2,1,"patrol",true,30] call SAR_AI; 
//
//              C) survivor group fortifying, with 1 leader, 1 sniper and 3 riflemen, not respawning
//
//                      [SAR_marker_DEBUG,2,1,3,"fortify",false] call SAR_AI; 
//
//---------------------------------------------------------------------------------

diag_log format["SAR_AI: Static Spawning for infantry patrols started"];

//
// define your static infantry patrols here
//

[SAR_marker_DEBUG_devilscastle,1,0,6,"fortify",true] call SAR_AI;

// example war scenario in the northwest. Comment OUT after having had a look at it!
// Zone Alpha
[SAR_patrol_zone_alpha_inf_1,3,0,8,"fortify",true,3600] call SAR_AI;
[SAR_patrol_zone_alpha_inf_2,3,3,7,"patrol",true,3600] call SAR_AI;
[SAR_patrol_zone_alpha_inf_3,3,2,7,"fortify",true,3600] call SAR_AI;
[SAR_patrol_zone_alpha_inf_4,3,3,4,"fortify",true,3600] call SAR_AI;
[SAR_patrol_zone_alpha_inf_5,3,4,7,"fortify",true,3600] call SAR_AI;
[SAR_patrol_zone_alpha_inf_6,3,4,8,"patrol",true,3600] call SAR_AI;
[SAR_patrol_zone_alpha_sniper_1,3,4,4,"patrol",true,3600] call SAR_AI;
[SAR_patrol_zone_ges_1,3,4,4,"patrol",true,3600] call SAR_AI;
[SAR_marker_zone_alpha_1,3,false] call SAR_AI_heli;
[SAR_marker_zone_alpha_2,3,false] call SAR_AI_heli;
[SAR_marker_zone_alpha_3,3,false] call SAR_AI_heli;
 

diag_log format["SAR_AI: Static Spawning for infantry patrols finished"];

// -------------------------------------------------------------------------------------
//
//  Static spawns for vehicle groups
//
//      format: [areamarker,type_of_group,vehicle array,crew array,(respawn),(respawntime)] call SAR_AI_land;
//
//
//      areamarker      : Name of an area, as defined in your area definitions
//      type_of_group   : 1 = military, 2 = survivors, 3 = bandits
//      vehicle array   : e.g. ["car1"], MUST be enclosed by [], and MUST be valid vehicle classnames. multiple vehicles are possible, like this: ["car1","car1","car1"]
//      crew array      : e.g. [[1,2,3]] -> the first entry in the array element sets if the leader travels in that vehicle, the second is the number of snipers in the vehicle, the third is the number of riflemen. 
//                        must match to the number of defined vehicles, so for the above example, you need: [[1,2,3],[0,1,2],[0,1,1]]
//                          
//
//      respawn         : true or false (optional)
//      respawntime     : time in secs until group respawns (optional)
//
//
//
//      Examples:
//
//      A) This will spawn an AI group with 1 vehicle(UAZ), and 3 AI in it
/*
        [
            SAR_marker_DEBUG_veh_1,             // Name of the area that the vehicle patrol will spawn in
            1,                                  // type of group
            ["UAZ_Unarmed_TK_EP1"],             // used vehicles
            [[1,1,1]],                          // Vehicle initial crew
            false                               // if this group should respawn or not
        ] call SAR_AI_land;
*/
// 
//      B) This will spawn an AI group with 1 vehicle, 3 AI in the UAZ, and this group will respawn after 60 seconds
/*
        [
            SAR_marker_DEBUG_veh_1,             // Name of the area that the vehicle patrol will spawn in
            1,                                  // type of group
            ["UAZ_Unarmed_TK_EP1"],              // used vehicle
            [[1,1,1]],                          // Vehicle initial crews
            true,                               // if this group should respawn or not
            60                                  // waittime until this group will respawn            
        ] call SAR_AI_land;
*/
//
// -------------------------------------------------------------------------------------
diag_log format["SAR_AI: Static Spawning for vehicle patrols started"];

//
// define your static vehicle patrols here
//



diag_log format["SAR_AI: Static Spawning for vehicle patrols finished"];
// ---- end of configuration area ----

