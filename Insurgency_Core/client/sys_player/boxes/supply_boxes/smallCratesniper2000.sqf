/*
*    TWC public sevrer
*   Sling loadable ammo crates
*
*  Paddock Change all ammo boxes to have the correct ammo and weapons
*
*
*/
_boxClass = "ACE_Box_Ammo";

_box = _boxClass createVehicle (getPos AmmoBoxSpawner);

clearWeaponCargoGlobal _box;
clearBackpackCargoGlobal _box;
clearMagazineCargoGlobal _box;
clearitemCargoGlobal _box;

//Weapons

//supplies
_box AddMagazineCargoGlobal ["UK3CB_BAF_127_10Rnd",5];
_box AddMagazineCargoGlobal ["CUP_10Rnd_127x99_m107",3];

_box AddMagazineCargoGlobal ["UK3CB_BAF_9_15Rnd",10];

_box AddMagazineCargoGlobal ["UK3CB_BAF_762_L42A1_10Rnd_T",2];
_box AddMagazineCargoGlobal ["UK3CB_BAF_762_L42A1_10Rnd",7];


_box addItemCargoGlobal ["ACE_fieldDressing",5];
_box addItemCargoGlobal ["ACE_elasticBandage",5];
_box addItemCargoGlobal ["ACE_quikclot",5];
_box addItemCargoGlobal ["ACE_packingBandage",5];
_box addItemCargoGlobal ["ACE_epinephrine",5];
_box addItemCargoGlobal ["ACE_morphine",5];
_box addItemCargoGlobal ["HandGrenade",2];
_box addItemCargoGlobal ["SmokeShell",2];
_box addItemCargoGlobal ["SmokeShellRed",2];

[_box, player, 2] spawn twc_fnc_genericfillvehicle;

[player, _box] call ace_cargo_fnc_startLoadIn;