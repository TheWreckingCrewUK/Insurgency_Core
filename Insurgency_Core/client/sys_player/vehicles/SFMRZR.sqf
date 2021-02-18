 _spawnpos = getpos AmmoBoxSpawner;
 
 _veh = _vehtype createvehicle _spawnpos;   

_title  = "<t color='#ffbf00' size='1.2' shadow='1' shadowColor='#000000' align='center'>Vehicle Spawner</t>"; 

 _text1 =  "<br />The Vehicle Has Been Spawned. It's Already Loaded With Ammunition";
_spawntext = parsetext (_title + _text1);
hint _spawntext;



_boxaction = ["deleteCreate","Return Vehicle","",{deleteVehicle this;

},{(count (player nearobjects ["Land_InfoStand_V1_F", 200]) > 0)}] call ace_interact_menu_fnc_createAction;
[_veh,0,["ACE_MainActions"],_boxaction] call ace_interact_menu_fnc_addActionToobject;


if ((missionnamespace getvariable ["twc_wdveh", 0]) == 0) then {
	[
		_veh,
		["mud",1], 
		["tailgateHide",0,"tailgate_open",0,"cage_fold",0]
	] call BIS_fnc_initVehicle;
} else {
	[
		_veh,
		["mud_olive",1], 
		["tailgateHide",0,"tailgate_open",0,"cage_fold",0]
	] call BIS_fnc_initVehicle;
};

clearWeaponCargoGlobal _veh;
clearBackpackCargoGlobal _veh;
clearMagazineCargoGlobal _veh;
clearitemCargoGlobal _veh;


_veh AddWeaponCargoGlobal ["CUP_launch_M72A6",2];

_veh AddMagazineCargoGlobal ["UGL_FlareWhite_F",2];
_veh AddMagazineCargoGlobal ["1Rnd_HE_Grenade_shell",7];
_veh AddMagazineCargoGlobal ["1Rnd_Smoke_Grenade_shell",3];

_veh addItemCargoGlobal ["DemoCharge_Remote_Mag",1];
_veh addItemCargoGlobal ["ACE_Clacker",1];
_veh addItemCargoGlobal ["ACE_EntrenchingTool",1];
_veh addItemCargoGlobal ["ACE_fieldDressing",25];
_veh addItemCargoGlobal ["ACE_elasticBandage",15];
_veh addItemCargoGlobal ["ACE_packingBandage",15];
_veh addItemCargoGlobal ["ACE_salineIV_250",10];
_veh addItemCargoGlobal ["ACE_epinephrine",3];
_veh addItemCargoGlobal ["ACE_morphine",3];
_veh addItemCargoGlobal ["HandGrenade",2];
_veh addItemCargoGlobal ["SmokeShell",3];
_veh addItemCargoGlobal ["SmokeShellRed",3];





[_veh, player, 5] call twc_fnc_genericfillvehicle;