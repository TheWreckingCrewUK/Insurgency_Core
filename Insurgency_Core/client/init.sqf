#include "sys_cleanup\init.sqf";
#include "sys_intel\init.sqf";
#include "sys_diary\init.sqf";
#include "sys_forwardBase\init.sqf";
#include "sys_score\init.sqf";
#include "sys_player\init.sqf";
#include "func\init.sqf";
#include "sys_basedefence\init.sqf";
//#include "sys_ragdoll\init.sqf";
"iedRestrictionZone" setMarkerAlpha 0;

InsP_fnc_deleteMarkers = compile preProcessFileLineNumbers "Insurgency_Core\server\sys_cache\fn_deleteMarkers.sqf";
InsP_fnc_deadCache = compile preProcessFileLineNumbers "Insurgency_Core\server\sys_cache\fnc_deadCache.sqf";
twc_news = compile preprocessfilelinenumbers "Insurgency_Core\client\news.sqf";

waitUntil {!isNull player};

_alphaaction = ["SpawnsmallAlphaCreate","TWC News","",{call twc_news},{true}] call ace_interact_menu_fnc_createAction;
["TWC_Item_Public_Base_LOCSTAT",0,["ACE_MainActions"],_alphaaction,true] call ace_interact_menu_fnc_addActionToClass;

if ((!(forcedMap select 0)) && ((forcedMap select 1))) then {player setdamage 1};

twc_firstspawned = 0;

player addEventHandler ["Respawn", {
	params ["_unit", "_corpse"];
if (twc_firstspawned == 1) exitwith {};
twc_firstspawned = 1;

vehicle player setVariable ["twc_isenemy",0, true];

#include "sys_restrict\init.sqf";


if (!(["infantry", str (group player)] call BIS_fnc_inString)) then {
execvm "insurgency_core\client\sys_restrict\attachmentcount.sqf" 
};

//systemchat "terp init";
if (["interpreter", typeof player] call BIS_fnc_inString) then {
	twc_terp = player;
	publicvariable "twc_terp";
	"You're an interpreter. Read more about this in the diary on your map" remoteExec ["hint",twc_terp];
	
	player CreateDiaryRecord ["Diary",["Interpreter",
	"As an interpreter you can gain access to valuable information regarding enemy activity. As you move through the area you will receive hints regarding cache locations, currently defended towns, IED's and even estimates of stronghold strength. <br /><br />You will only get this information if your PRC152 is set to the correct channel however, and you will need to find the correct channel yourself. You can speed this process up by ACE interacting on a High Value Target (HVT) and getting the radio channel that way."
]];	


{
_getfreq = ["deleteCreate","Get Radio Frequency","",{
_title  = "<t color='#ffbf00' size='1.2' shadow='1' shadowColor='#000000' align='center'>Enemy Intel</t>"; 

 _text1 = format ["<br />The Enemy Is Using Channel %1",twc_enemychannel];
 _terptext = parsetext (_title + _text1);
 hint _terptext;

},{true}] call ace_interact_menu_fnc_createAction;
[_x,0,["ACE_MainActions"],_getfreq,true] call ace_interact_menu_fnc_addActionToClass;

} foreach hvtlist;

};



if (["fst", typeof player] call BIS_fnc_inString) then {
{
_returnvehicle = ["deleteCreate","Return Vehicle","",{deleteVehicle this;

twc_coyotecount=twc_coyotecount - 1;
publicVariable "twc_coyotecount";

},{(count (player nearobjects ["Land_InfoStand_V1_F", 200]) > 0)}] call ace_interact_menu_fnc_createAction;
[_x,0,["ACE_MainActions"],_returnvehicle,true] call ace_interact_menu_fnc_addActionToClass;

} foreach ["UK3CB_BAF_Coyote_L111A1_Base_D","UK3CB_BAF_Coyote_L111A1_Base_W","UK3CB_BAF_Coyote_L134A1_Base_D","UK3CB_BAF_Coyote_L134A1_Base_W"];
};

if (["logi", typeof player] call BIS_fnc_inString) then {

_returnvehicle = ["deleteCreate","Return Vehicle","",{deleteVehicle this;

twc_quadbikecount=twc_quadbikecount - 1;
publicVariable "twc_quadbikecount";

},{(count (player nearobjects ["Land_InfoStand_V1_F", 200]) > 0)}] call ace_interact_menu_fnc_createAction;
["B_Quadbike_01_F",0,["ACE_MainActions"],_returnvehicle,true] call ace_interact_menu_fnc_addActionToClass;


};


if (["pilot", typeof player] call BIS_fnc_inString) then {

	if (typeOf vehicle player == "Modern_British_JetPilot") then {

		//if (( count(allPlayers - entities "HeadlessClient_F")) >= 6) then 
		if (( count(allPlayers - entities "HeadlessClient_F")) >= 0) then 
		{
			hint "You're a pilot. Read how to spawn aircraft in the diary on your map";
		} else
		{
			hint "You're a pilot, but there are less than 6 people on the server so you can't spawn or fly anything. Choose another slot.";
		};
		};
	
	player CreateDiaryRecord ["Diary",["Pilot", 
 "As a pilot you can move and paradrop very large amounts of ammunition and vehicles, as well as provide combat close air support to troops on the ground. You can spawn aircraft at the main spawner that the infantry uses for ammunition spawning.  
<br /><br />Your choice of aircraft is limited based on how many people are in the server, and the spawner will only show you aircraft that you have the playercount to fly at that point. This has a cooldown, and you can return aircraft with ace interaction to mitigate this. If you're a fixed wing pilot spawning a plane, that plane will appear on the apron, not the spawn helipad." 
]]; 
};




if((typeOf player) in ["Modern_British_VehicleCommander", "Modern_British_VehicleCrew"]) then {
	["TWC_ArmourCrewConnected", [getPlayerUID player]] call CBA_fnc_serverEvent;
	
	

			hint "Read how to spawn heavy vehicles in the diary on your map";

		
	
	player CreateDiaryRecord ["Diary",["Armour Crew", 
 "The armour crew is responsible for providing heavy fire support and transport for the infantry. They have much better protection against IED's and rockets than other vehicles, and so have much more freedom in where they can go.
<br /><br />
One of the main advantages of the armour crew is their ability to operate in positions that would be too dangerous for other vehicles. The commander should leverage this advantage while managing the risk to the vehicle.
<br /><br />
The commander can spawn vehicles from the main spawner, and then despawn them by ace interacting on the vehicle when it's in base. Only 2 vehicles may be around at a time, if both of them get destroyed then it allows you 1 more.
<br /><br />
The large vehicles require a full crew of 3 to operate, but the vehicles without a full turret only require a member of the armour crew to drive it. For example, a crewman could drive an FV432 APC with the commander as the gunner and then the second crewman could drive another FV432 with an infantryman as the gunner.
" 
]]; 
	
	
};



if((typeOf player) in ["Modern_British_Sniper_coin", "Modern_British_Spotter_coin"]) then {
	["TWC_SniperConnected", [getPlayerUID player]] call CBA_fnc_serverEvent;
};


if (sunormoon == 0) then {
	player addweapon "rhsusf_ANPVS_14";
};

twc_fnc_idf = compile preprocessfilelinenumbers "insurgency_Core\server\sys_basedefence\IDF_Alarmfire.sqf";
}];