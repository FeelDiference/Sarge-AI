// =========================================================================================================
// =========================================================================================================
//  SAR_AI - DayZ AI library
//  Version: 1.5.2 
//  Author: Sarge (sarge@krumeich.ch) 
//
//		Wiki: to come
//		Forum: http://opendayz.net/#sarge-ai.131
//		
// ---------------------------------------------------------------------------------------------------------
//  Required:
//  UPSMon  (special version, the standard one will NOT work
//  SHK_pos 
//  
// ---------------------------------------------------------------------------------------------------------
// SAR_config.sqf - User adjustable config values
// last modified: 28.5.2013  
// ---------------------------------------------------------------------------------------------------------

// -----------------------------------------------
// enable or disable dynamic grid spawning
// -----------------------------------------------
SAR_dynamic_spawning = true;

// -----------------------------------------------
// enable or disable the AI debug monitor
// -----------------------------------------------

SAR_DEBUGMONITOR= false;

// -----------------------------------------------
// default values for dynamic grid spawning
// -----------------------------------------------

// maximum number of groups / grid
SAR_max_grps_bandits = 3;
SAR_max_grps_soldiers = 0;
SAR_max_grps_survivors = 1;

// chance for a group to spawn (1-100)
SAR_chance_bandits = 95;
SAR_chance_soldiers = 0;
SAR_chance_survivors = 5;

// maximum size of group (including Leader)
SAR_max_grpsize_bandits = 3;
SAR_max_grpsize_soldiers = 0;
SAR_max_grpsize_survivors = 4;


// -----------------------------------------------
// run fix for the issue that bandits cant travel in a vehicle with survivors EXPERIMENTAL, might not work 100% 
// -----------------------------------------------
SAR_FIX_VEHICLE_ISSUE = false;

// -----------------------------------------------
// modify AI behaviour
// -----------------------------------------------

// disable UPSMON AI behaviour - this means there will be no evasive/flanking, AI WILL follow players around the map outside of grids etc. EXPERIMENTAL
SAR_AI_disable_UPSMON_AI = false;

// enable / disable AI stealing vehicles - if you enable this, be sure to check KRON_UPS_searchVehicledist value below
SAR_AI_STEAL_VEHICLE = false;

// -----------------------------------------------
// Humanity values 
// -----------------------------------------------

// Humanity Value that gets substracted for a survivor or soldier AI kill
SAR_surv_kill_value = -250;

// Humanity Value that gets ADDED for a bandit AI kill
SAR_band_kill_value = 200;

// the humanity value below which a player will be considered hostile
SAR_HUMANITY_HOSTILE_LIMIT = -2500;

// -----------------------------------------------
// Track and show AI kills in the debug monitor of the player 
// -----------------------------------------------

// Log AI kills
SAR_log_AI_kills = true;


// -----------------------------------------------
// Show AI kills in sidechat
// -----------------------------------------------

// Send AI kills to sidechat
SAR_KILL_MSG = true;

// -----------------------------------------------
// AI XP system
// -----------------------------------------------

// Enable / disable AI xp system
SAR_AI_XP_SYSTEM = false;

// xp needed to reach this level
SAR_AI_XP_LVL_1 = 0;
// name of the level range
SAR_AI_XP_NAME_1 = "Rookie";
// armor specific for this level
SAR_AI_XP_ARMOR_1 = 1;        // values: 0.1 - 1, 1 = no change, 0.5 = damage taken reduced by 50%, 0.1 = damage taken reduced by 90%

// xp needed to reach this level
SAR_AI_XP_LVL_2 = 5;
// name of the level range
SAR_AI_XP_NAME_2 = "Veteran";
// armor specific for this level
SAR_AI_XP_ARMOR_2 = 0.5;        // values: 0.1 - 1, 1 = no change, 0.5 = damage taken reduced by 50%, 0.1 = damage taken reduced by 90% 

// xp needed to reach this level
SAR_AI_XP_LVL_3 = 20;
// name of the level range
SAR_AI_XP_NAME_3 = "Legendary";
// armor specific for this level
SAR_AI_XP_ARMOR_3 = 0.3;        // values: 0 - 1, 1 = no change, 0.5 = damage taken reduced by 50%, 0.1 = damage taken reduced by 90% 

// -----------------------------------------------
// Special health values for specific units
// -----------------------------------------------

// values: 0.3 - 1, 1 = no change, 0.5 = damage taken reduced by 50%, 0.1 = damage taken reduced by 90% -  EXPERIMENTAL
SAR_leader_health_factor = 1;

// enable this for near invincible helicopters 
SAR_heli_shield = false;

// -----------------------------------------------
// respawning of groups & vehicles that are dynamically spawned in the grid system
// -----------------------------------------------
SAR_dynamic_group_respawn = true;

// time after which AI are respawned if configured (can be overwritten in the static AI calls)
SAR_respawn_waittime = 30; // default 30 seconds

// -----------------------------------------------
// Timeout values 
// -----------------------------------------------

// time after which DYNAMIC units and groups despawn after players have left the area/ dynamic grid
SAR_DESPAWN_TIMEOUT = 120; // 2 minutes

// time after which dead AI bodies are deleted 
SAR_DELETE_TIMEOUT = 600; // 2 minutes

// -----------------------------------------------
// System performance 
// -----------------------------------------------

// the max range in meters within AI is detecting Zombies and player bandits and makes them hostile - the bigger this value, the more CPU needed
SAR_DETECT_HOSTILE = 600;

// the max range in meters within AI is detecting player bandits from a vehicle, e.g. heli or land vehicle and makes them hostile - the bigger this value, the more CPU needed
SAR_DETECT_HOSTILE_FROM_VEHICLE = 500;

// the interval in seconds that an AI scans for new hostiles. The lower this value, the more accurate, but your server will see an impact. Recommended value: 15 
SAR_DETECT_INTERVAL = 15;

// the interval in seconds that an AI scans for new hostiles from WITHIN a vehicle. The lower this value, the more accurate, but your server will see an impact. Recommended value: 5 
SAR_DETECT_FROM_VEHICLE_INTERVAL = 5;

// the interval in seconds after that AI and AI in vehicles get new ammo and new fuel if needed
SAR_REAMMO_INTERVAL = 30;

// -----------------------------------------------
// Debug options
// -----------------------------------------------

// Show AI hits and kills by players in the rpt
SAR_HITKILL_DEBUG = false;

// Shows extra debug info in .rpt
SAR_DEBUG = false;

// careful with setting this, this shows a LOT, including the grid properties and definitions for every spawn and despawn event
SAR_EXTREME_DEBUG = false;

//
// SET THIS TO 0 to hide the group markers on the map and see the UPSMON group debug messages
// Possible values: 1 = enabled, 0 = disabled
KRON_UPS_Debug = 0;

//
// SET THIS TO 1 to see waypoints and pathfinding information in your rpt
// Possible values: 1 = enabled, 0 = disabled

KRON_UPS_WP_Debug = 0;

//
// SET THIS TO 1 to enable AI debugging in the rpt. You will be able to debug targets / enemy handling
// Possible values: 1 = enabled, 0 = disabled
KRON_UPS_AI_Debug = 0;


// Show AI ingame markers to see their xplevel, and logs to the rpt 
SAR_SHOW_XP_LVL = false;

//---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//
// Overwriting UPSMON standard values, so they dont have to be changed in the UPSMON package. Be careful with changing these.
//
//---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

//Efective distance for doing perfect ambush (max distance is this x2)
KRON_UPS_ambushdist = 100;

//Frequency for doing calculations for each squad.
KRON_UPS_Cycle = 10; //org 20 , try to adjust for server performance

//Time that leader waits until doing another movement, this time reduced dynamically under fire, and on new targets
KRON_UPS_react = 60;

//Min time to wait for doing another reaction
KRON_UPS_minreact = 30; // org 30

//Max waiting is the maximum time patrol groups will wait when arrived to target for doing another target.
KRON_UPS_maxwaiting = 60;

//Max waiting is the maximum time infantry patrol groups will wait when arrived at a waypoint before moving to the next waypoint. Air and land vehicles will move instantly to a new one.
KRON_UPS_wp_maxwaiting = 120;

// how long AI units should be in alert mode after initially spotting an enemy
KRON_UPS_alerttime = 90;

// how close unit has to be to target to generate a new one target or to enter stealth mode
KRON_UPS_closeenough = 100; // if you have vast plain areas, increase this to sth around 150-300 

// if you are spotted by AI group, how close the other AI group have to be to You , to be informed about your present position. over this, will lose target
KRON_UPS_sharedist = 200;

// If enabled IA communication between them with radio defined sharedist distance, 0/2 
// (must be set to 2 in order to use reinforcement !R)
KRON_UPS_comradio = 2;

// Distance from destination for searching vehicles. (Search area is about 200m), 
// If your destination point is further than KRON_UPS_searchVehicledist, AI will try to find a vehicle to go there.
KRON_UPS_searchVehicledist = 900; // 700, 900  

//Sides that are enemies of resistance // DO NOT CHANGE THIS
KRON_UPS_Res_enemy = [east];

// knowsAbout 0 - 4 to add this enemy to the  "target list" (1-4) the higher number the less detect ability (original in 5.0.7 was 0.5)
// it does not mean the AI will not shoot at you. This means: what must be KNOWN about you to allow the AI to share that information
//
// If you set this higher, only the AI that spotted you will shoot at you, the rest of the group will not know where you are.
// If you set this lower, the AI share your position earlier and all of the group attack you earlier.
//
// Recommended values:  0.4 -> hard!
//
//                      1.0 -> medium
//
//                      2.5 -> easy
//
R_knowsAboutEnemy = 0.6;

//
// ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//
// definition of classes and weapon loadouts
//

//
// type of soldier lists, only allowed DayZ classes listed. adjust if you run rmod or another map that allows different classes
//
// IMPORTANT: The leader types must be different to each other! So you need 3 different leader types here!

// military AI
SAR_leader_sold_list = ["Rocket_DZ"]; // the potential classes of the leader of a soldier group
SAR_sniper_sold_list = ["Sniper1_DZ"]; // the potential classes of the snipers of a soldier group
SAR_soldier_sold_list = ["Soldier1_DZ","Camo1_DZ"]; // the potential classes of the riflemen of a soldier group

// bandit AI
SAR_leader_band_list = ["Bandit1_DZ", "TK_INS_Warlord_EP1_DZ"]; // the potential classes of the leader of a bandit group
SAR_sniper_band_list = ["Sniper1_DZ"]; // the potential classes of the snipers of a bandit group
SAR_soldier_band_list = ["Bandit1_DZ", "BanditW1_DZ","Soldier_Crew_PMC"]; // the potential classes of the riflemen of a bandit group

// survivor AI
SAR_leader_surv_list = ["Survivor3_DZ"]; // the potential classes of the leaders of a survivor group
SAR_sniper_surv_list = ["Sniper1_DZ"]; // the potential classes of the snipers of a survivor group
SAR_soldier_surv_list = ["Survivor2_DZ","SurvivorW2_DZ","Soldier_Crew_PMC"]; // the potential classes of the riflemen of a survivor group


// ---------------------------------------------------------------------------------------------------------------------
// Skills for all possible units
// ---------------------------------------------------------------------------------------------------------------------

//
// military AI
//

// Leader
SAR_leader_sold_skills = [

    ["aimingAccuracy",0.50, 0.10], // skilltype, <min value>, <random value added to min>;
    ["aimingShake",   0.50, 0.10],
    ["aimingSpeed",   0.80, 0.20],
    ["spotDistance",  0.70, 0.30],
    ["spotTime",      0.65, 0.20],
    ["endurance",     0.80, 0.20],
    ["courage",       0.80, 0.20],
    ["reloadSpeed",   0.80, 0.20],
    ["commanding",    0.80, 0.20],
    ["general",       0.80, 0.20]

];

// rifleman
SAR_soldier_sold_skills  = [

    ["aimingAccuracy",0.70, 0.10], // skilltype, <min value>, <random value added to min>;
    ["aimingShake",   0.50, 0.10],
    ["aimingSpeed",   0.80, 0.20],
    ["spotDistance",  0.55, 0.30],
    ["spotTime",      0.80, 0.20],
    ["endurance",     0.60, 0.20],
    ["courage",       0.60, 0.20],
    ["reloadSpeed",   0.60, 0.20],
    ["commanding",    0.60, 0.20],
    ["general",       0.80, 0.20]

];

// Sniper
SAR_sniper_sold_skills = [

    ["aimingAccuracy",0.80, 0.10], // skilltype, <min value>, <random value added to min>;
    ["aimingShake",   0.90, 0.10],
    ["aimingSpeed",   0.80, 0.20],
    ["spotDistance",  0.70, 0.30],
    ["spotTime",      0.75, 0.20],
    ["endurance",     0.80, 0.20],
    ["courage",       0.80, 0.20],
    ["reloadSpeed",   0.80, 0.20],
    ["commanding",    0.80, 0.20],
    ["general",       0.80, 0.20]

];

//
// bandit AI
//

// Leader
SAR_leader_band_skills = [

    ["aimingAccuracy",0.80, 0.70], // skilltype, <min value>, <random value added to min>;
    ["aimingShake",   0.80, 0.70],
    ["aimingSpeed",   0.70, 0.70],
    ["spotDistance",  0.70, 0.70],
    ["spotTime",      0.80, 0.70],
    ["endurance",     0.80, 0.70],
    ["courage",       0.80, 0.70],
    ["reloadSpeed",   0.80, 0.70],
    ["commanding",    0.80, 0.70],
    ["general",       0.80, 0.70]


];
// Rifleman
SAR_soldier_band_skills = [

    ["aimingAccuracy",0.80, 0.70], // skilltype, <min value>, <random value added to min>;
    ["aimingShake",   0.80, 0.70],
    ["aimingSpeed",   0.70, 0.70],
    ["spotDistance",  0.70, 0.70],
    ["spotTime",      0.80, 0.70],
    ["endurance",     0.80, 0.70],
    ["courage",       0.80, 0.70],
    ["reloadSpeed",   0.80, 0.70],
    ["commanding",    0.80, 0.70],
    ["general",       0.80, 0.70]

];
// Sniper
SAR_sniper_band_skills = [

    ["aimingAccuracy",0.80, 0.70], // skilltype, <min value>, <random value added to min>;
    ["aimingShake",   0.80, 0.70],
    ["aimingSpeed",   0.70, 0.70],
    ["spotDistance",  0.70, 0.70],
    ["spotTime",      0.80, 0.70],
    ["endurance",     0.80, 0.70],
    ["courage",       0.80, 0.70],
    ["reloadSpeed",   0.80, 0.70],
    ["commanding",    0.80, 0.70],
    ["general",       0.80, 0.70]
];

//
// survivor AI
//

// Leader
SAR_leader_surv_skills = [

    ["aimingAccuracy",0.50, 0.10], // skilltype, <min value>, <random value added to min>;
    ["aimingShake",   0.50, 0.10],
    ["aimingSpeed",   0.60, 0.20],
    ["spotDistance",  0.50, 0.30],
    ["spotTime",      0.50, 0.20],
    ["endurance",     0.50, 0.20],
    ["courage",       0.50, 0.20],
    ["reloadSpeed",   0.60, 0.20],
    ["commanding",    0.50, 0.20],
    ["general",       0.50, 0.20]

];
// Rifleman
SAR_soldier_surv_skills = [

    ["aimingAccuracy",0.50, 0.10], // skilltype, <min value>, <random value added to min>;
    ["aimingShake",   0.50, 0.10],
    ["aimingSpeed",   0.60, 0.20],
    ["spotDistance",  0.50, 0.30],
    ["spotTime",      0.50, 0.20],
    ["endurance",     0.50, 0.20],
    ["courage",       0.50, 0.20],
    ["reloadSpeed",   0.50, 0.20],
    ["commanding",    0.50, 0.20],
    ["general",       0.50, 0.20]
	

];
// Sniper
SAR_sniper_surv_skills = [

    ["aimingAccuracy",0.70, 0.10], // skilltype, <min value>, <random value added to min>;
    ["aimingShake",   0.80, 0.10],
    ["aimingSpeed",   0.70, 0.20],
    ["spotDistance",  0.70, 0.30],
    ["spotTime",      0.65, 0.20],
    ["endurance",     0.70, 0.20],
    ["courage",       0.70, 0.20],
    ["reloadSpeed",   0.70, 0.20],
    ["commanding",    0.50, 0.20],
    ["general",       0.60, 0.20]

];


// ---------------------------------------------------------------------------------------------------------------------
// Weapon & Item Loadout
// ---------------------------------------------------------------------------------------------------------------------

// a general note: you CAN use either rifles OR pistols. Do not use both. AI will get stuck after switching weapons.

// military

// potential weapon list for leaders
SAR_sold_leader_weapon_list = ["M4A1_Aim","M4A3_CCO_EP1","M16A4_ACG_GL","MP5SD","G36K","M4A1_AIM_SD_camo","M4A1_RCO_GL"];
SAR_sold_leader_pistol_list = [];   

// potential item list for leaders -> Item / Chance 1 - 100
SAR_sold_leader_items = [["ItemWaterbottle",75],["FoodMRE",60],["ItemPainkiller",50],["ItemComboLock",1]];
SAR_sold_leader_tools =  [["ItemMap",50],["ItemCompass",30],["Binocular_Vector",5],["NVGoggles",5],["ItemRadio",100]];

//potential weapon list for riflemen
SAR_sold_rifleman_weapon_list = ["M16A2","M16A2GL","M240","M4A1","M8_holo_sd","M1014","G36C","MG36","RPG7V"];
SAR_sold_rifleman_pistol_list = [];    

// potential item list for riflemen
SAR_sold_rifleman_items = [["ItemWaterbottle",75],["FoodMRE",60],["R_PG7V_AT",2]];
SAR_sold_rifleman_tools = [["ItemMap",50],["ItemCompass",30]];

//potential weapon list for snipers
SAR_sold_sniper_weapon_list = ["M4SPR","M40A3","M107_DZ","M8_sharpshooter","DMR_DZ","SCAR_H_LNG_Sniper"];
SAR_sold_sniper_pistol_list = [];   

// potential item list for snipers
SAR_sold_sniper_items = [["ItemWaterbottle",75],["FoodCanSardines",60],["Skin_Sniper1_DZ",10]];
SAR_sold_sniper_tools = [["ItemMap",50],["ItemCompass",30]];

//
// survivors
//

// potential weapon list for leaders
SAR_surv_leader_weapon_list = ["M4A1","M4A3_CCO_EP1","AK_47_M","G36a","m8_compact","RPG7V"];
SAR_surv_leader_pistol_list = [];   

// potential item list for leaders -> Item / Chance 1 - 100
SAR_surv_leader_items = [["ItemSodaCoke",75],["FoodCanBakedBeans",60],["ItemGoldBar",20],["ItemComboLock",1],["R_PG7V_AT",2]];
SAR_surv_leader_tools =  [["ItemMap",50],["ItemCompass",30],["Binocular_Vector",5],["NVGoggles",5],["ItemRadio",100]];

//potential weapon list for riflemen
SAR_surv_rifleman_weapon_list = ["M4A1","M16A2","Winchester1866","AK_74","LeeEnfield","M1014","AKS_74_kobra","Mk_48","RPG7V"];
SAR_surv_rifleman_pistol_list = [];    

// potential item list for riflemen
SAR_surv_rifleman_items = [["ItemSodaCoke",75],["FoodCanBakedBeans",60],["DZ_Backpack_EP1",10],["R_PG7V_AT",2]];
SAR_surv_rifleman_tools = [["ItemMap",50],["ItemCompass",30]];

//potential weapon list for snipers
SAR_surv_sniper_weapon_list = ["M4A1_Aim","SVD_CAMO","Huntingrifle","M24"];
SAR_surv_sniper_pistol_list = [];   

// potential item list for snipers
SAR_surv_sniper_items = [["ItemSodaCoke",75],["FoodCanBakedBeans",60],["Skin_Sniper1_DZ",10]];
SAR_surv_sniper_tools = [["ItemMap",50],["ItemCompass",30]];

//
// bandits
//

// potential weapon list for leaders
SAR_band_leader_weapon_list = ["M4A1","M4A3_CCO_EP1","AK_47_M","M240_DZ","AKS_GOLD","AK_74_GL","AK_107_GL_kobra","Sa58P_EP1","RPG7V"];
SAR_band_leader_pistol_list = [];   

// potential item list for leaders -> Item / Chance 1 - 100
SAR_band_leader_items = [["ItemSodaCoke",75],["FoodCanPasta",60],["ItemSilverBar",40],["ItemComboLock",1],["R_PG7V_AT",2]];
SAR_band_leader_tools =  [["ItemMap",50],["ItemCompass",30],["Binocular_Vector",5],["NVGoggles",5],["ItemRadio",100]];

//potential weapon list for riflemen
SAR_band_rifleman_weapon_list = ["FN_FAL","bizon","Winchester1866","AK_74","LeeEnfield","Saiga12K","Pecheneg","RPK_74","PK","RPG7V"];
SAR_band_rifleman_pistol_list = [];    

// potential item list for riflemen
SAR_band_rifleman_items = [["ItemSodaPepsi",75],["FoodCanBakedBeans",60],["ItemPainkiller",50],["R_PG7V_AT",2]];
SAR_band_rifleman_tools = [["ItemMap",50],["ItemCompass",30],["Binocular_Vector",2]];

//potential weapon list for snipers
SAR_band_sniper_weapon_list = ["M4A1_Aim","SVD_CAMO","Huntingrifle","DMR","M24","VSS_vintorez","SVD"];
SAR_band_sniper_pistol_list = [];   

// potential item list for snipers
SAR_band_sniper_items = [["ItemSodaRbull",75],["FoodCanBakedBeans",60],["Skin_Sniper1_DZ",100]];
SAR_band_sniper_tools = [["ItemMap",50],["ItemCompass",30],["Binocular_Vector",10],["ItemFlashlight",100]];


// ---------------------------------------------------------------------------------------------------------------------
// heli patrol definiton
// ---------------------------------------------------------------------------------------------------------------------

// define the type of heli(s) you want to use here for the heli patrols - make sure you include helis that have minimum 2 gunner positions, anything else might fail
SAR_heli_type=["UH1H_DZ","Mi17_DZ","Mi171Sh_rockets_CZ_EP1","CH_47F_EP1"];