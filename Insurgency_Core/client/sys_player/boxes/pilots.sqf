
_attackcond = {( count(allPlayers - entities "HeadlessClient_F")) >= 14};

_attackcond2 = {( count(allPlayers - entities "HeadlessClient_F")) >= 14};

_utilitycond = {((totalpoints > 100) && ( count(allPlayers - entities "HeadlessClient_F")) >= 8) || (((count units (group player)) == (count allplayers)))};

_transportcond1 = {true};

_transportcond2 = {(( count(allPlayers - entities "HeadlessClient_F")) >= 7) || (((count units (group player)) == (count allplayers)))};

//_cascond = {( count(allPlayers - entities "HeadlessClient_F")) >= 8};
_cascond = {(totalpoints > (pointlimit / 2))};

_attackcond = {((totalpoints > (pointlimit /3)) && ((count units (group player)) > 1)) || (((count units (group player)) > 1) && (((count units (group player)) == (count allplayers))))};

_attackcond2 = {((totalpoints > (pointlimit /3)) && ((count units (group player)) > 1)) || (((count units (group player)) > 1) && (((count units (group player)) == (count allplayers))))};

_attackcond3 = {((totalpoints > (pointlimit /2)) && ((count units (group player)) > 1)) || (((count units (group player)) > 1) && (((count units (group player)) == (count allplayers))))};

_planecondlow = {( count(allPlayers - entities "HeadlessClient_F")) >= 0};

_planecondmid = {( count(allPlayers - entities "HeadlessClient_F")) >= 0};

_planecondhi = {(( count(allPlayers - entities "HeadlessClient_F")) >= 12) || (((count units (group player)) == (count allplayers)))};

_helicrew = ["Modern_British_HeliPilot","Modern_British_MERT_HeliPilot","2000_British_HeliPilot_Desert","2000_British_HeliPilot","1990_British_HeliPilot","1990_British_Crewchief","1990_British_HeliPilot_Desert","Modern_British_MERT_HeliPilot","Modern_British_crewchief","2000_British_CrewChief","2000_British_CrewChief_Desert","1970_British_HeliPilot","1970_British_Crewchief"];


/*
playercount = 0;
_planecondlow = {playercount >= 5};

_planecondmid = {playercount >= 7};

_planecondhi = {playercount >= 9};

_attackcond = {true};

_utilitycond = {true};

_transportcond = {true};

_transportcond1 = {true};

_transportcond2 = {true};

_cascond = {true};
*/


if((typeOf player) in ["Modern_British_MERT_HeliPilot"])then{

	_helispawn1 = ["SpawnsmallcharlieCreate","Spawn MEDEVAC Chinook","",{
	
	["twc_mert_ch47"] execvm "insurgency_core\client\sys_player\vehicles\heli.sqf"
	
	},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_helispawn1,true] call ace_interact_menu_fnc_addActionToClass;
	};
	
	
if((typeOf player) in ["Modern_British_JetPilot"])then{

	_ammoaction = ["ammospawn","Spawn Ammo","",{},_condition] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_ammoaction,true] call ace_interact_menu_fnc_addActionToClass;

	_ammoaction2 = ["ammospawnlight","Light Ammo","",{},_condition] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions","ammospawn"],_ammoaction2,true] call ace_interact_menu_fnc_addActionToClass;
	
	_ammoaction3 = ["ammospawnsupport","Support Ammo","",{},_condition] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions","ammospawn"],_ammoaction3,true] call ace_interact_menu_fnc_addActionToClass;
	
	_ammoaction4 = ["ammospawnheavy","Heavy Ammo","",{},_condition] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions","ammospawn"],_ammoaction4,true] call ace_interact_menu_fnc_addActionToClass;
	
	
	
};	



//second check to incorporate the logistics crew without giving them the ability to spawn helis
if((typeOf player) in _helicrew)then{




	_ammoaction = ["ammospawn","Spawn Ammo","",{},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_ammoaction,true] call ace_interact_menu_fnc_addActionToClass;

	_ammoaction2 = ["ammospawnlight","Light Ammo","",{},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions","ammospawn"],_ammoaction2,true] call ace_interact_menu_fnc_addActionToClass;
	
	_ammoaction3 = ["ammospawnsupport","Support Ammo","",{},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions","ammospawn"],_ammoaction3,true] call ace_interact_menu_fnc_addActionToClass;
	
	_ammoaction4 = ["ammospawnheavy","Heavy Ammo","",{},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions","ammospawn"],_ammoaction4,true] call ace_interact_menu_fnc_addActionToClass;
	
	
	
	_vehaction1 = ["vehiclespawnattack","Attack Helicopters","",{},_attackcond] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions","vehiclespawn"],_vehaction1,true] call ace_interact_menu_fnc_addActionToClass;
	
	_vehaction2 = ["vehiclespawnutility","Utility Helicopters","",{},_utilitycond] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions","vehiclespawn"],_vehaction2,true] call ace_interact_menu_fnc_addActionToClass;
	
	_vehaction3 = ["vehiclespawntransport","Transport Helicopters","",{},_transportcond1] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions","vehiclespawn"],_vehaction3,true] call ace_interact_menu_fnc_addActionToClass;
	
	_vehaction4 = ["vehiclespawncas","CAS Helicopters","",{},_cascond] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions","vehiclespawn"],_vehaction4,true] call ace_interact_menu_fnc_addActionToClass;
	

};
	
	
if((typeOf player) in ["Modern_British_JetPilot"])then{


	_helispawn1 = ["SpawnsmallcharlieCreate","Spawn Hercules","",{
	
	["CUP_B_C130J_GB"] execvm "insurgency_core\client\sys_player\vehicles\plane.sqf"
	
	},_planecondlow] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "vehiclespawn"],_helispawn1,true] call ace_interact_menu_fnc_addActionToClass;
	
	_helispawn1 = ["SpawnsmallcharlieCreate","Spawn Hercules VIV","",{
	
	["CUP_B_C130J_Cargo_GB"] execvm "insurgency_core\client\sys_player\vehicles\plane.sqf"
	
	},_planecondlow] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "vehiclespawn"],_helispawn1,true] call ace_interact_menu_fnc_addActionToClass;

	_helispawn1 = ["SpawnsmallcharlieCreate","Spawn Harrier","",{
	
	["CUP_B_GR9_DYN_GB"] execvm "insurgency_core\client\sys_player\vehicles\plane.sqf"
	
	},{(!(((group player) getvariable ["twc_groupcountry", "baf"]) == "ana"))}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "vehiclespawn"],_helispawn1,true] call ace_interact_menu_fnc_addActionToClass;

	_helispawn1 = ["SpawnsmallcharlieCreate","Spawn A-10","",{
	
	["CUP_B_A10_DYN_USA"] execvm "insurgency_core\client\sys_player\vehicles\plane.sqf"
	
	},{(!(((group player) getvariable ["twc_groupcountry", "baf"]) == "ana"))}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "vehiclespawn"],_helispawn1,true] call ace_interact_menu_fnc_addActionToClass;
	

	

	_helispawn1 = ["SpawnsmallcharlieCreate","Spawn AC-130","",{
	
	["USAF_AC130U"] execvm "insurgency_core\client\sys_player\vehicles\plane.sqf"
	
	},{((((group player) getvariable ["twc_groupcountry", "baf"]) == "usasoc"))}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "vehiclespawn"],_helispawn1,true] call ace_interact_menu_fnc_addActionToClass;
	

	
	////////////////////////////////////////////////////////////////////////////////////////////
	////////////////////////////////////////////////////////////////////////////////////////////
	////////////////////////////////////////////////////////////////////////////////////////////

	

	_action = ["SpawnUKCreate","Spawn Large UK Crate","",{"twc_forwardBase_BritishAmmoBox" createVehicle (getPos AmmoBoxSpawner)},_condition] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "ammospawn", "ammospawnheavy"],_action,true] call ace_interact_menu_fnc_addActionToClass;
	
	_action1 = ["SpawnCharlieCreate","Spawn Large US Crate","",{"twc_forwardBase_CharlieAmmoBox" createVehicle (getPos AmmoBoxSpawner)},_condition] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "ammospawn", "ammospawnheavy"],_action1,true] call ace_interact_menu_fnc_addActionToClass;

	_actionempty = ["SpawnemptyCreate","Spawn Large Empty Crate","",{execvm "Insurgency_Core\client\sys_player\boxes\supply_boxes\largeemptycrate.sqf"},_condition] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "ammospawn", "ammospawnsupport"],_actionempty,true] call ace_interact_menu_fnc_addActionToClass;
	

	
	_UKaction3 = ["spawn50","Spawn Night Ops Box","",{execvm "insurgency_core\client\sys_player\boxes\supply_boxes\smallCratenightops.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "ammospawn", "ammospawnlight"],_UKaction3,true] call ace_interact_menu_fnc_addActionToClass;

	_hcharlieaction2 = ["SpawnsmallcharlieCreate","Spawn Small US Crate","",{execvm "insurgency_core\client\sys_player\boxes\supply_boxes\smallcrateusmc.sqf"},_condition] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "ammospawn", "ammospawnlight"],_hcharlieaction2,true] call ace_interact_menu_fnc_addActionToClass;
	
	_hUKaction3 = ["SpawnsmallUKCreate","Spawn Small UK Crate","",{execvm "insurgency_core\client\sys_player\boxes\supply_boxes\smallcrateuk.sqf"},_condition] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "ammospawn", "ammospawnlight"],_hUKaction3,true] call ace_interact_menu_fnc_addActionToClass;	
	
	_hUKactionana = ["SpawnsmallUKCreate","Spawn Small ANA Crate","",{execvm "insurgency_core\client\sys_player\boxes\supply_boxes\smallcrateana.sqf"},_condition] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "ammospawn", "ammospawnlight"],_hUKactionana,true] call ace_interact_menu_fnc_addActionToClass;
	
	
		_UKaction = ["SpawnsmallanaCreate","Spawn Small Polish Crate","",{execvm "insurgency_core\client\sys_player\boxes\supply_boxes\smallcratepol.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "ammospawn", "ammospawnlight"],_UKaction,true] call ace_interact_menu_fnc_addActionToClass;
	
	_UKaction = ["SpawnsmallanaCreate","Spawn Small German Crate","",{execvm "insurgency_core\client\sys_player\boxes\supply_boxes\smallcrateger.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "ammospawn", "ammospawnlight"],_UKaction,true] call ace_interact_menu_fnc_addActionToClass;
	
	/*
	_hUKactionnac = ["SpawnsmallUKCreate","Spawn Small NAC Crate","",{execvm "insurgency_core\client\sys_player\boxes\supply_boxes\smallcrateNAC.sqf"},_condition] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "ammospawn", "ammospawnlight"],_hUKactionnac,true] call ace_interact_menu_fnc_addActionToClass;
	*/
	_haction4 = ["SpawnsmallsniperCreate","Spawn Small Sniper Crate","",{execvm "insurgency_core\client\sys_player\boxes\supply_boxes\smallcratesniper.sqf"},_condition] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "ammospawn", "ammospawnlight"],_haction4,true] call ace_interact_menu_fnc_addActionToClass;
	
	_haction5 = ["SpawnmedCreate","Spawn Medical Crate","",{execvm "insurgency_core\client\sys_player\boxes\supply_boxes\smallMedical.sqf"},_condition] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "ammospawn", "ammospawnlight"],_haction5,true] call ace_interact_menu_fnc_addActionToClass;
	
	_hfstaction3 = ["spawn50","Spawn Spare Wheels","",{execvm "insurgency_core\client\sys_player\boxes\supply_boxes\Repairkit.sqf"},_condition] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "ammospawn", "ammospawnsupport"],_hfstaction3,true] call ace_interact_menu_fnc_addActionToClass;
	
	_hfstaction3 = ["spawn50","Spawn .50 Ammo","",{execvm "insurgency_core\client\sys_player\boxes\supply_boxes\50calammo.sqf"},_condition] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "ammospawn", "ammospawnsupport"],_hfstaction3,true] call ace_interact_menu_fnc_addActionToClass;

	_hfstaction4 = ["spawn762","Spawn 7.62 Ammo","",{execvm "insurgency_core\client\sys_player\boxes\supply_boxes\762ammo.sqf"},_condition] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "ammospawn", "ammospawnsupport"],_hfstaction4,true] call ace_interact_menu_fnc_addActionToClass;
	
	_hfstaction5 = ["spawnm6","Spawn M6 Ammo","",{execvm "insurgency_core\client\sys_player\boxes\supply_boxes\smallMortarAmmo_mix.sqf"},_condition] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "ammospawn", "ammospawnsupport"],_hfstaction5,true] call ace_interact_menu_fnc_addActionToClass;
	
	_hfstaction6 = ["spawn40","Spawn 40mm Ammo","",{execvm "insurgency_core\client\sys_player\boxes\supply_boxes\40ammo.sqf"},_condition] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "ammospawn", "ammospawnsupport"],_hfstaction6,true] call ace_interact_menu_fnc_addActionToClass;


	
};
	
	
if((typeOf player) in ["1970_British_HeliPilot","1970_British_Crewchief"])then{
	

	_helispawn1 = ["SpawnsmallcharlieCreate","Spawn Puma","",{
	
	["CUP_B_SA330_Puma_HC1_BAF"] execvm "insurgency_core\client\sys_player\vehicles\heli.sqf"
	
	},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "vehiclespawn", "vehiclespawntransport"],_helispawn1,true] call ace_interact_menu_fnc_addActionToClass;
	
	
	_UKaction = ["SpawnsmallanaCreate","Spawn Small UK Crate","",{execvm "insurgency_core\client\sys_player\boxes\supply_boxes\smallCrateuk70.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_UKaction,true] call ace_interact_menu_fnc_addActionToClass;
	
	_UKaction3 = ["spawn50","Spawn Night Ops Box","",{execvm "insurgency_core\client\sys_player\boxes\supply_boxes\smallCratenightops.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_UKaction3,true] call ace_interact_menu_fnc_addActionToClass;

	_UKaction5 = ["SpawnmedCreate","Spawn Medical Crate","",{execvm "insurgency_core\client\sys_player\boxes\supply_boxes\smallMedical.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_UKaction5,true] call ace_interact_menu_fnc_addActionToClass;	

	_hfstaction4 = ["spawn762","Spawn 7.62 Ammo","",{execvm "insurgency_core\client\sys_player\boxes\supply_boxes\762ammo.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_hfstaction4,true] call ace_interact_menu_fnc_addActionToClass;
	
};
	
if((typeOf player) in ["Modern_British_HeliPilot","Modern_British_crewchief", "Modern_British_logitech"])then{



	_helispawn1 = ["SpawnsmallcharlieCreate","Spawn Merlin","",{
	
	["UK3CB_BAF_Merlin_HC3_18_GPMG"] execvm "insurgency_core\client\sys_player\vehicles\heli.sqf"
	
	},_transportcond2] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "vehiclespawn", "vehiclespawnutility"],_helispawn1,true] call ace_interact_menu_fnc_addActionToClass;
	

	_helispawn1 = ["SpawnsmallcharlieCreate","Spawn Huey","",{
	
	["CUP_O_UH1H_TKA"] execvm "insurgency_core\client\sys_player\vehicles\heli.sqf"
	
	},_condition] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "vehiclespawn", "vehiclespawnutility"],_helispawn1,true] call ace_interact_menu_fnc_addActionToClass;



	_helispawn1 = ["SpawnsmallcharlieCreate","Spawn Apache","",{
	
	["UK3CB_BAF_Apache_AH1_DynamicLoadout"] execvm "insurgency_core\client\sys_player\vehicles\heli.sqf"
	
	},_attackcond2] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "vehiclespawn", "vehiclespawnattack"],_helispawn1,true] call ace_interact_menu_fnc_addActionToClass;

	_helispawn1 = ["SpawnsmallcharlieCreate","Spawn Cobra","",{
	
	["CUP_B_AH1Z_Dynamic_USMC"] execvm "insurgency_core\client\sys_player\vehicles\heli.sqf"
	
	},_attackcond2] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "vehiclespawn", "vehiclespawnattack"],_helispawn1,true] call ace_interact_menu_fnc_addActionToClass;


	
//snowflake stuff. Only available right near the end of the mission and only sf and snipers can even ride them. Largely pointless, and intentionally so
	_helispawn1 = ["SpawnsmallcharlieCreate","Spawn Littlebird","",{
	
	["CUP_B_MH6M_USA"] execvm "insurgency_core\client\sys_player\vehicles\heli.sqf"
	
	},{(totalpoints > (pointlimit * 0.5)) && (((group player) getvariable ["twc_groupcountry", "baf"]) == "soar")}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "vehiclespawn", "vehiclespawntransport"],_helispawn1,true] call ace_interact_menu_fnc_addActionToClass;
	_helispawn1 = ["SpawnsmallcharlieCreate","Spawn Littlebird (Armed)","",{
	
	["CUP_B_AH6M_USA"] execvm "insurgency_core\client\sys_player\vehicles\heli.sqf"
	
	},{(totalpoints > (pointlimit * 0.5)) && (((group player) getvariable ["twc_groupcountry", "baf"]) == "soar") && ((count (units (group player))) > 1)}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "vehiclespawn", "vehiclespawnattack"],_helispawn1,true] call ace_interact_menu_fnc_addActionToClass;

	_helispawn1 = ["SpawnsmallcharlieCreate","Spawn Chinook","",{
	
	["CUP_B_CH47F_USA"] execvm "insurgency_core\client\sys_player\vehicles\heli.sqf"
	
	},{(((group player) getvariable ["twc_groupcountry", "baf"]) == "us")}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "vehiclespawn", "vehiclespawntransport"],_helispawn1,true] call ace_interact_menu_fnc_addActionToClass;

	_helispawn1 = ["SpawnsmallcharlieCreate","Spawn Chinook","",{
	
	["CUP_B_MH47E_USA"] execvm "insurgency_core\client\sys_player\vehicles\heli.sqf"
	
	},{(((group player) getvariable ["twc_groupcountry", "baf"]) == "soar")}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "vehiclespawn", "vehiclespawntransport"],_helispawn1,true] call ace_interact_menu_fnc_addActionToClass;

	_helispawn1 = ["SpawnsmallcharlieCreate","Spawn Chinook","",{
	
	["CUP_B_MH47E_GB"] execvm "insurgency_core\client\sys_player\vehicles\heli.sqf"
	
	},{(((group player) getvariable ["twc_groupcountry", "baf"]) == "baf")}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "vehiclespawn", "vehiclespawntransport"],_helispawn1,true] call ace_interact_menu_fnc_addActionToClass;


	_helispawn1 = ["SpawnsmallcharlieCreate","Spawn Wildcat (Unarmed)","",{
	
	["UK3CB_BAF_Wildcat_AH1_TRN_8A"] execvm "insurgency_core\client\sys_player\vehicles\heli.sqf"
	
	},_transportcond2] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "vehiclespawn", "vehiclespawntransport"],_helispawn1,true] call ace_interact_menu_fnc_addActionToClass;
	
	_helispawn1 = ["SpawnsmallcharlieCreate","Spawn Mi-8","",{
	
	["CUP_O_Mi8_CHDKZ"] execvm "insurgency_core\client\sys_player\vehicles\heli.sqf"
	
	},_transportcond2] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "vehiclespawn", "vehiclespawntransport"],_helispawn1,true] call ace_interact_menu_fnc_addActionToClass;
	

	
	_helispawn1 = ["SpawnsmallcharlieCreate","Spawn Blackhawk","",{
	
	["CUP_B_UH60M_US"] execvm "insurgency_core\client\sys_player\vehicles\heli.sqf"
	
	},{(((group player) getvariable ["twc_groupcountry", "baf"]) != "soar")}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "vehiclespawn", "vehiclespawntransport"],_helispawn1,true] call ace_interact_menu_fnc_addActionToClass;
	
	_helispawn1 = ["SpawnsmallcharlieCreate","Spawn Blackhawk","",{
	
	["CUP_B_UH60M_FFV_US"] execvm "insurgency_core\client\sys_player\vehicles\heli.sqf"
	
	},{(((group player) getvariable ["twc_groupcountry", "baf"]) == "soar")}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "vehiclespawn", "vehiclespawntransport"],_helispawn1,true] call ace_interact_menu_fnc_addActionToClass;
	

	_helispawn1 = ["SpawnsmallcharlieCreate","Spawn Wildcat","",{
	
	["UK3CB_BAF_Wildcat_AH1_CAS_8B"] execvm "insurgency_core\client\sys_player\vehicles\heli.sqf"
	
	},_condition] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "vehiclespawn", "vehiclespawncas"],_helispawn1,true] call ace_interact_menu_fnc_addActionToClass;

	_helispawn1 = ["SpawnsmallcharlieCreate","Spawn Venom","",{
	
	["CUP_B_UH1Y_UNA_USMC"] execvm "insurgency_core\client\sys_player\vehicles\heli.sqf"
	
	},_condition] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "vehiclespawn", "vehiclespawncas"],_helispawn1,true] call ace_interact_menu_fnc_addActionToClass;
	
	
	_helispawn1 = ["SpawnsmallcharlieCreate","Spawn Hind","",{
	
	["CUP_B_Mi24_D_Dynamic_CDF"] execvm "insurgency_core\client\sys_player\vehicles\heli.sqf"
	
	},{count units group player > 1}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "vehiclespawn", "vehiclespawncas"],_helispawn1,true] call ace_interact_menu_fnc_addActionToClass;

	
	
	////////////////////////////////////////////////////////////////////////////////////////////
	////////////////////////////////////////////////////////////////////////////////////////////
	////////////////////////////////////////////////////////////////////////////////////////////

	

	_action = ["SpawnUKCreate","Spawn Large UK Crate","",{"twc_forwardBase_BritishAmmoBox" createVehicle (getPos AmmoBoxSpawner)},_condition] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "ammospawn", "ammospawnheavy"],_action,true] call ace_interact_menu_fnc_addActionToClass;
	
	_action1 = ["SpawnCharlieCreate","Spawn Large US Crate","",{"twc_forwardBase_CharlieAmmoBox" createVehicle (getPos AmmoBoxSpawner)},_condition] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "ammospawn", "ammospawnheavy"],_action1,true] call ace_interact_menu_fnc_addActionToClass;
/*
	_actionempty = ["SpawnemptyCreate","Spawn Large Empty Crate","",{"TWC_AmmoBox_Other_Pallet_pub" createVehicle (getPos AmmoBoxSpawner)},_condition] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "ammospawn", "ammospawnheavy"],_actionempty,true] call ace_interact_menu_fnc_addActionToClass;
	*/

		_UKaction = ["SpawnsmallanaCreate","Spawn Small Polish Crate","",{execvm "insurgency_core\client\sys_player\boxes\supply_boxes\smallcratepol.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "ammospawn", "ammospawnlight"],_UKaction,true] call ace_interact_menu_fnc_addActionToClass;

	_UKaction = ["SpawnsmallanaCreate","Spawn Small German Crate","",{execvm "insurgency_core\client\sys_player\boxes\supply_boxes\smallcrateger.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "ammospawn", "ammospawnlight"],_UKaction,true] call ace_interact_menu_fnc_addActionToClass;
	
	_UKaction3 = ["spawn50","Spawn Night Ops Box","",{execvm "insurgency_core\client\sys_player\boxes\supply_boxes\smallCratenightops.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "ammospawn", "ammospawnlight"],_UKaction3,true] call ace_interact_menu_fnc_addActionToClass;

	
	_UKaction1 = ["Spawnheartscrate","Spawn Hearts And Minds Kit","",{execvm "insurgency_core\client\sys_player\boxes\supply_boxes\heartsminds.sqf"},_condition] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "ammospawn", "ammospawnsupport"],_UKaction1,true] call ace_interact_menu_fnc_addActionToClass;
	
	_hUKaction3 = ["SpawnsmallUKCreate","Spawn Small UK Crate","",{execvm "insurgency_core\client\sys_player\boxes\supply_boxes\smallcrateuk.sqf"},_condition] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "ammospawn", "ammospawnlight"],_hUKaction3,true] call ace_interact_menu_fnc_addActionToClass;	
	
	_hcharlieaction2 = ["SpawnsmallcharlieCreate","Spawn Small US Crate","",{execvm "insurgency_core\client\sys_player\boxes\supply_boxes\smallcrateusmc.sqf"},_condition] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "ammospawn", "ammospawnlight"],_hcharlieaction2,true] call ace_interact_menu_fnc_addActionToClass;
	
	_hUKactionana = ["SpawnsmallUKCreate","Spawn Small ANA Crate","",{execvm "insurgency_core\client\sys_player\boxes\supply_boxes\smallcrateana.sqf"},_condition] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "ammospawn", "ammospawnlight"],_hUKactionana,true] call ace_interact_menu_fnc_addActionToClass;
	
	_hUKactionnac = ["SpawnsmallUKCreate","Spawn Small NAC Crate","",{execvm "insurgency_core\client\sys_player\boxes\supply_boxes\smallcrateNAC.sqf"},_condition] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "ammospawn", "ammospawnlight"],_hUKactionnac,true] call ace_interact_menu_fnc_addActionToClass;
	
	_haction4 = ["SpawnsmallsniperCreate","Spawn Small Sniper Crate","",{execvm "insurgency_core\client\sys_player\boxes\supply_boxes\smallcratesniper.sqf"},_condition] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "ammospawn", "ammospawnlight"],_haction4,true] call ace_interact_menu_fnc_addActionToClass;
	
	_haction5 = ["SpawnmedCreate","Spawn Medical Crate","",{execvm "insurgency_core\client\sys_player\boxes\supply_boxes\smallMedical.sqf"},_condition] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "ammospawn", "ammospawnlight"],_haction5,true] call ace_interact_menu_fnc_addActionToClass;
	
		_hfstaction3 = ["spawn50","Spawn Spare Wheels","",{execvm "insurgency_core\client\sys_player\boxes\supply_boxes\Repairkit.sqf"},_condition] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "ammospawn", "ammospawnsupport"],_hfstaction3,true] call ace_interact_menu_fnc_addActionToClass;
	
	_hfstaction3 = ["spawn50","Spawn .50 Ammo","",{execvm "insurgency_core\client\sys_player\boxes\supply_boxes\50calammo.sqf"},_condition] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "ammospawn", "ammospawnheavy"],_hfstaction3,true] call ace_interact_menu_fnc_addActionToClass;

	_hfstaction4 = ["spawn762","Spawn 7.62 Ammo","",{execvm "insurgency_core\client\sys_player\boxes\supply_boxes\762ammo.sqf"},_condition] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "ammospawn", "ammospawnheavy"],_hfstaction4,true] call ace_interact_menu_fnc_addActionToClass;
	
	_hfstaction5 = ["spawnm6","Spawn 60mm Ammo","",{execvm "insurgency_core\client\sys_player\boxes\supply_boxes\smallMortarAmmo_mix.sqf"},_condition] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "ammospawn", "ammospawnheavy"],_hfstaction5,true] call ace_interact_menu_fnc_addActionToClass;
	
	_hfstaction5 = ["spawn82","Spawn 82mm Ammo","",{execvm "insurgency_core\client\sys_player\boxes\supply_boxes\staticL16_mix.sqf"},_condition] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "ammospawn", "ammospawnheavy"],_hfstaction5,true] call ace_interact_menu_fnc_addActionToClass;
	
	_hfstaction6 = ["spawn40","Spawn 40mm Ammo","",{execvm "insurgency_core\client\sys_player\boxes\supply_boxes\40ammo.sqf"},_condition] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "ammospawn", "ammospawnheavy"],_hfstaction6,true] call ace_interact_menu_fnc_addActionToClass;
	
_fstaction5 = ["l16ammo","Spawn Javelin Tube","",{execvm "insurgency_core\client\sys_player\boxes\supply_boxes\smallcratejav_tube.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "ammospawn", "ammospawnheavy"],_fstaction5,true] call ace_interact_menu_fnc_addActionToClass;
	

	
};
	


if((typeOf player) in ["2000_British_HeliPilot_Desert","2000_British_HeliPilot","2000_British_CrewChief","2000_British_CrewChief_Desert"])then{


	_hcharlieaction2 = ["SpawnsmallcharlieCreate","Spawn US Crate","",{execvm "insurgency_core\client\sys_player\boxes\supply_boxes\smallcrateUS2000.sqf"},_condition] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "ammospawn", "ammospawnlight"],_hcharlieaction2,true] call ace_interact_menu_fnc_addActionToClass;
	
	_hUKaction3 = ["SpawnsmallUKCreate","Spawn UK Crate","",{execvm "insurgency_core\client\sys_player\boxes\supply_boxes\smallcrateuk2000.sqf"},_condition] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "ammospawn", "ammospawnlight"],_hUKaction3,true] call ace_interact_menu_fnc_addActionToClass;
	
		_hUKactionana = ["SpawnsmallUKCreate","Spawn Small ANA Crate","",{execvm "insurgency_core\client\sys_player\boxes\supply_boxes\smallcrateana.sqf"},_condition] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "ammospawn", "ammospawnlight"],_hUKactionana,true] call ace_interact_menu_fnc_addActionToClass;
	
		_hUKactionana = ["SpawnsmallUKCreate","Spawn Sniper Crate","",{execvm "insurgency_core\client\sys_player\boxes\supply_boxes\smallcratesniper2000.sqf"},_condition] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "ammospawn", "ammospawnlight"],_hUKactionana,true] call ace_interact_menu_fnc_addActionToClass;
	
	_haction5 = ["SpawnmedCreate","Spawn Medical Crate","",{execvm "insurgency_core\client\sys_player\boxes\supply_boxes\smallMedical.sqf"},_condition] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "ammospawn", "ammospawnlight"],_haction5,true] call ace_interact_menu_fnc_addActionToClass;
	
	_hfstaction3 = ["spawn50","Spawn .50 Ammo","",{execvm "insurgency_core\client\sys_player\boxes\supply_boxes\50calammo.sqf"},_condition] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "ammospawn", "ammospawnsupport"],_hfstaction3,true] call ace_interact_menu_fnc_addActionToClass;

	_hfstaction4 = ["spawn762","Spawn 7.62 Ammo","",{execvm "insurgency_core\client\sys_player\boxes\supply_boxes\762ammo.sqf"},_condition] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "ammospawn", "ammospawnsupport"],_hfstaction4,true] call ace_interact_menu_fnc_addActionToClass;
	



	_helispawn1 = ["SpawnsmallcharlieCreate","Spawn Puma","",{
	
	["CUP_B_SA330_Puma_HC2_BAF"] execvm "insurgency_core\client\sys_player\vehicles\heli.sqf"
	
	},_transportcond2] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "vehiclespawn", "vehiclespawntransport"],_helispawn1,true] call ace_interact_menu_fnc_addActionToClass;
	

	_helispawn1 = ["SpawnsmallcharlieCreate","Spawn Huey","",{
	
	["CUP_O_UH1H_TKA"] execvm "insurgency_core\client\sys_player\vehicles\heli.sqf"
	
	},_condition] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "vehiclespawn", "vehiclespawnutility"],_helispawn1,true] call ace_interact_menu_fnc_addActionToClass;



	_helispawn1 = ["SpawnsmallcharlieCreate","Spawn Apache","",{
	
	["UK3CB_BAF_Apache_AH1_DynamicLoadout"] execvm "insurgency_core\client\sys_player\vehicles\heli.sqf"
	
	},_attackcond2] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "vehiclespawn", "vehiclespawnattack"],_helispawn1,true] call ace_interact_menu_fnc_addActionToClass;

	_helispawn1 = ["SpawnsmallcharlieCreate","Spawn Cobra","",{
	
	["CUP_B_AH1Z_Dynamic_USMC"] execvm "insurgency_core\client\sys_player\vehicles\heli.sqf"
	
	},_attackcond2] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "vehiclespawn", "vehiclespawnattack"],_helispawn1,true] call ace_interact_menu_fnc_addActionToClass;


	

	_helispawn1 = ["SpawnsmallcharlieCreate","Spawn Chinook","",{
	
	["CUP_B_CH47F_GB"] execvm "insurgency_core\client\sys_player\vehicles\heli.sqf"
	
	},_condition] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "vehiclespawn", "vehiclespawntransport"],_helispawn1,true] call ace_interact_menu_fnc_addActionToClass;
	
	_helispawn1 = ["SpawnsmallcharlieCreate","Spawn Mi-8","",{
	
	["CUP_O_Mi8_CHDKZ"] execvm "insurgency_core\client\sys_player\vehicles\heli.sqf"
	
	},_transportcond2] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "vehiclespawn", "vehiclespawntransport"],_helispawn1,true] call ace_interact_menu_fnc_addActionToClass;
	

	
	_helispawn1 = ["SpawnsmallcharlieCreate","Spawn Blackhawk","",{
	
	["CUP_B_UH60M_US"] execvm "insurgency_core\client\sys_player\vehicles\heli.sqf"
	
	},_transportcond1] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "vehiclespawn", "vehiclespawntransport"],_helispawn1,true] call ace_interact_menu_fnc_addActionToClass;
	

	
	_helispawn1 = ["SpawnsmallcharlieCreate","Spawn Blackhawk (Armed)","",{
	
	["CUP_B_UH60M_US_ESSS"] execvm "insurgency_core\client\sys_player\vehicles\heli.sqf"
	
	},_transportcond1] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "vehiclespawn", "vehiclespawncas"],_helispawn1,true] call ace_interact_menu_fnc_addActionToClass;
	
	
	
	_helispawn1 = ["SpawnsmallcharlieCreate","Spawn Hind","",{
	
	["CUP_B_Mi24_D_Dynamic_CDF"] execvm "insurgency_core\client\sys_player\vehicles\heli.sqf"
	
	},{count units group player > 1}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "vehiclespawn", "vehiclespawncas"],_helispawn1,true] call ace_interact_menu_fnc_addActionToClass;

	
	
	////////////////////////////////////////////////////////////////////////////////////////////
	////////////////////////////////////////////////////////////////////////////////////////////
	////////////////////////////////////////////////////////////////////////////////////////////

	
/*
	_action = ["SpawnUKCreate","Spawn Large UK Crate","",{"twc_forwardBase_BritishAmmoBox" createVehicle (getPos AmmoBoxSpawner)},_condition] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "ammospawn", "ammospawnheavy"],_action,true] call ace_interact_menu_fnc_addActionToClass;
	
	_action1 = ["SpawnCharlieCreate","Spawn Large US Crate","",{"twc_forwardBase_CharlieAmmoBox" createVehicle (getPos AmmoBoxSpawner)},_condition] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "ammospawn", "ammospawnheavy"],_action1,true] call ace_interact_menu_fnc_addActionToClass;

	_actionempty = ["SpawnemptyCreate","Spawn Large Empty Crate","",{"TWC_AmmoBox_Other_Pallet_pub" createVehicle (getPos AmmoBoxSpawner)},_condition] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "ammospawn", "ammospawnheavy"],_actionempty,true] call ace_interact_menu_fnc_addActionToClass;
*/
	
		_hfstaction3 = ["spawn50","Spawn Spare Wheels","",{execvm "insurgency_core\client\sys_player\boxes\supply_boxes\Repairkit.sqf"},_condition] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "ammospawn", "ammospawnsupport"],_hfstaction3,true] call ace_interact_menu_fnc_addActionToClass;
	

	

	
};

	


if((typeOf player) in ["1990_British_HeliPilot_Desert","1990_British_HeliPilot","1990_British_Crewchief","1990_British_CrewChief_Desert"])then{



	_hcharlieaction2 = ["SpawnsmallcharlieCreate","Spawn US Crate","",{execvm "insurgency_core\client\sys_player\boxes\supply_boxes\smallcrateUS90.sqf"},_condition] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "ammospawn", "ammospawnlight"],_hcharlieaction2,true] call ace_interact_menu_fnc_addActionToClass;
	
	
	_hUKactionana = ["SpawnsmallUKCreate","Spawn Sniper Crate","",{execvm "insurgency_core\client\sys_player\boxes\supply_boxes\smallcratesniper2000.sqf"},_condition] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "ammospawn", "ammospawnlight"],_hUKactionana,true] call ace_interact_menu_fnc_addActionToClass;
	
	_hUKaction3 = ["SpawnsmallUKCreate","Spawn UK Crate","",{execvm "insurgency_core\client\sys_player\boxes\supply_boxes\smallcrateuk90.sqf"},_condition] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "ammospawn", "ammospawnlight"],_hUKaction3,true] call ace_interact_menu_fnc_addActionToClass;
	
	_hUKaction3 = ["SpawnsmallUKCreate","Spawn UKRM Crate","",{execvm "insurgency_core\client\sys_player\boxes\supply_boxes\smallcrateuk90rm.sqf"},_condition] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "ammospawn", "ammospawnlight"],_hUKaction3,true] call ace_interact_menu_fnc_addActionToClass;
	
		_hUKactionana = ["SpawnsmallUKCreate","Spawn Small ANA Crate","",{execvm "insurgency_core\client\sys_player\boxes\supply_boxes\smallcrateana.sqf"},_condition] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "ammospawn", "ammospawnlight"],_hUKactionana,true] call ace_interact_menu_fnc_addActionToClass;
	
	_haction5 = ["SpawnmedCreate","Spawn Medical Crate","",{execvm "insurgency_core\client\sys_player\boxes\supply_boxes\smallMedical.sqf"},_condition] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "ammospawn", "ammospawnlight"],_haction5,true] call ace_interact_menu_fnc_addActionToClass;
	
		_hfstaction3 = ["spawn50","Spawn Spare Wheels","",{execvm "insurgency_core\client\sys_player\boxes\supply_boxes\Repairkit.sqf"},_condition] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "ammospawn", "ammospawnsupport"],_hfstaction3,true] call ace_interact_menu_fnc_addActionToClass;
	
	_hfstaction3 = ["spawn50","Spawn .50 Ammo","",{execvm "insurgency_core\client\sys_player\boxes\supply_boxes\50calammo.sqf"},_condition] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "ammospawn", "ammospawnsupport"],_hfstaction3,true] call ace_interact_menu_fnc_addActionToClass;

	_hfstaction4 = ["spawn762","Spawn 7.62 Ammo","",{execvm "insurgency_core\client\sys_player\boxes\supply_boxes\762ammo.sqf"},_condition] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "ammospawn", "ammospawnsupport"],_hfstaction4,true] call ace_interact_menu_fnc_addActionToClass;
	

	_helispawn1 = ["SpawnsmallcharlieCreate","Spawn Puma","",{
	
	["CUP_B_SA330_Puma_HC2_BAF"] execvm "insurgency_core\client\sys_player\vehicles\heli.sqf"
	
	},_transportcond2] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "vehiclespawn", "vehiclespawntransport"],_helispawn1,true] call ace_interact_menu_fnc_addActionToClass;
	

	_helispawn1 = ["SpawnsmallcharlieCreate","Spawn Huey","",{
	
	["CUP_O_UH1H_TKA"] execvm "insurgency_core\client\sys_player\vehicles\heli.sqf"
	
	},_condition] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "vehiclespawn", "vehiclespawnutility"],_helispawn1,true] call ace_interact_menu_fnc_addActionToClass;


	

	_helispawn1 = ["SpawnsmallcharlieCreate","Spawn Chinook","",{
	
	["CUP_B_CH47F_GB"] execvm "insurgency_core\client\sys_player\vehicles\heli.sqf"
	
	},_condition] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "vehiclespawn", "vehiclespawntransport"],_helispawn1,true] call ace_interact_menu_fnc_addActionToClass;

	
	_helispawn1 = ["SpawnsmallcharlieCreate","Spawn Mi-8","",{
	
	["CUP_O_Mi8_CHDKZ"] execvm "insurgency_core\client\sys_player\vehicles\heli.sqf"
	
	},_transportcond2] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "vehiclespawn", "vehiclespawntransport"],_helispawn1,true] call ace_interact_menu_fnc_addActionToClass;
	

	
	_helispawn1 = ["SpawnsmallcharlieCreate","Spawn Blackhawk","",{
	
	["CUP_B_UH60M_US"] execvm "insurgency_core\client\sys_player\vehicles\heli.sqf"
	
	},_transportcond1] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "vehiclespawn", "vehiclespawntransport"],_helispawn1,true] call ace_interact_menu_fnc_addActionToClass;
	
	_helispawn1 = ["SpawnsmallcharlieCreate","Spawn Blackhawk (Armed)","",{
	
	["CUP_B_UH60M_US_ESSS"] execvm "insurgency_core\client\sys_player\vehicles\heli.sqf"
	
	},_transportcond1] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "vehiclespawn", "vehiclespawncas"],_helispawn1,true] call ace_interact_menu_fnc_addActionToClass;

	_helispawn1 = ["SpawnsmallcharlieCreate","Spawn Apache","",{
	
	["UK3CB_BAF_Apache_AH1_DynamicLoadout"] execvm "insurgency_core\client\sys_player\vehicles\heli.sqf"
	
	},_attackcond3] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "vehiclespawn", "vehiclespawnattack"],_helispawn1,true] call ace_interact_menu_fnc_addActionToClass;
	

	

	
	
	////////////////////////////////////////////////////////////////////////////////////////////
	////////////////////////////////////////////////////////////////////////////////////////////
	////////////////////////////////////////////////////////////////////////////////////////////

	/*

	_action = ["SpawnUKCreate","Spawn Large UK Crate","",{"twc_forwardBase_BritishAmmoBox" createVehicle (getPos AmmoBoxSpawner)},_condition] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "ammospawn", "ammospawnheavy"],_action,true] call ace_interact_menu_fnc_addActionToClass;
	
	_action1 = ["SpawnCharlieCreate","Spawn Large US Crate","",{"twc_forwardBase_CharlieAmmoBox" createVehicle (getPos AmmoBoxSpawner)},_condition] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "ammospawn", "ammospawnheavy"],_action1,true] call ace_interact_menu_fnc_addActionToClass;

	_actionempty = ["SpawnemptyCreate","Spawn Large Empty Crate","",{"TWC_AmmoBox_Other_Pallet_pub" createVehicle (getPos AmmoBoxSpawner)},_condition] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "ammospawn", "ammospawnheavy"],_actionempty,true] call ace_interact_menu_fnc_addActionToClass;
*/
	
		_hfstaction3 = ["spawn50","Spawn Spare Wheels","",{execvm "insurgency_core\client\sys_player\boxes\supply_boxes\Repairkit.sqf"},_condition] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "ammospawn", "ammospawnsupport"],_hfstaction3,true] call ace_interact_menu_fnc_addActionToClass;
	

	

	
};


