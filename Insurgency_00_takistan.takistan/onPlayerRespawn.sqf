//Stuff that happens on player respawnVehicle

#include "insurgency_core\client\onRespawn.sqf";
//Deletion of ieds so players can't scum score
{
	player removeMagazines _x;
}forEach ["ACE_IEDLandBig_Range_Ammo","ACE_IEDLandSmall_Range_Ammo","ACE_IEDUrbanBig_Range_Ammo","ACE_IEDUrbanSmall_Range_Ammo"];
//If player isn't west then kick them. Apparently players respawning as civ is an issue?
if(side player == civilian) then{
	call BIS_fnc_endMission;
};

//Make sure medics are medics
if(typeOf player in ["Modern_British_Medic","Modern_USMC_Medic"])then{
	player setVariable ["ace_medical_medicClass",1];
};

//Code to run if player spawns on forWardBase
if((getMarkerPos "respawn_west_forwardBase") distance2D (getPos player) < 200)then{


};


