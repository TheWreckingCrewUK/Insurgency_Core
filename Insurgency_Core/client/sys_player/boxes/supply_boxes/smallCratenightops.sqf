/*
*    TWC public sevrer
*   Sling loadable ammo crates
*
*  Paddock Change all ammo boxes to have the correct ammo and weapons
*
*
*/
_boxClass = "ACE_Box_Ammo";

_box = _boxClass createVehicle (if (count (player nearobjects ["Land_InfoStand_V1_F", 200]) > 0) then {
(getPos AmmoBoxSpawner)} else 
{(getPos player)});

clearWeaponCargoGlobal _box;
clearBackpackCargoGlobal _box;
clearMagazineCargoGlobal _box;
clearitemCargoGlobal _box;

//Weapons

//supplies
//_box AddMagazineCargoGlobal ["UK3CB_BAF_762_100Rnd_T",1];

_box addItemCargoGlobal ["CUP_NVG_PVS14",15];
_box addItemCargoGlobal ["Chemlight_red",20];
_box addItemCargoGlobal ["Chemlight_blue",20];
_box addItemCargoGlobal ["Chemlight_green",20];
_box addItemCargoGlobal ["Chemlight_ir",20];
_box addItemCargoGlobal ["ACE_Flashlight_KSF1",15];
_box addItemCargoGlobal ["ACE_HandFlare_White",15];
_box addItemCargoGlobal ["ACE_HandFlare_Green",15];
_box addItemCargoGlobal ["twc_l5a4_w",20];
_box addItemCargoGlobal ["ACE_IR_Strobe_Item",10];

[player, _box] call ace_cargo_fnc_startLoadIn;