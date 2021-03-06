/*
*    TWC public sevrer
*   Sling loadable ammo crates
*
*  Paddock Change all ammo boxes to have the correct ammo and weapons
*
*
*/


 if (isnil "twc_specjavcount") then {
 twc_specjavcount = (- 7200);
 publicVariable "twc_specjavcount";
 };
 
 if (twc_specjavcount > (time)) exitwith {
 
 _title  = "<t color='#ffbf00' size='1.2' shadow='1' shadowColor='#000000' align='center'>Specialist Equipment</t>"; 

 _text1 =  "<br />A Javelin has already been spawned, there are currently no more available.";
_spawntext = parsetext (_title + _text1);
hint _spawntext;
 };
 
 twc_specjavcount = time + 7200;
 publicVariable "twc_specjavcount";


_boxClass = "twc_public_launcherbox_small_jav";

_box = _boxClass createVehicle (getPos AmmoBoxSpawner);

clearWeaponCargoGlobal _box;
clearBackpackCargoGlobal _box;
clearMagazineCargoGlobal _box;
clearitemCargoGlobal _box;

//Weapons
_box AddWeaponCargoGlobal ["UK3CB_BAF_Javelin_Slung_Tube",1];

_box AddWeaponCargoGlobal ["UK3CB_BAF_Javelin_CLU",1];

_title ="<t color='#ffbf00' size='1.2' shadow='1' shadowColor='#000000' align='center'>Ammo Spawner</t>";
_text1 = "<br />The Javelin has been spawned. Look after it, you won't get another. Spawn extra tubes from the ammo section";
hint parsetext (_title + _text1);