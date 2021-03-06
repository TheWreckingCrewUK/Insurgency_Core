params ["_objType"];

//Selects a random town then makes sure it is far enough from base and friendlies
_town = townLocationArray call bis_fnc_selectRandom;
_pos = getPos _town;
while{([_pos,500] call twc_fnc_posNearPlayers) || _pos distance2D (getMarkerPos "base") < 1000 || _town in badTownArray}do{
	_town = townLocationArray call bis_fnc_selectRandom;
	_pos = getPos _town;
};
//Creating the truck
_pos = [getPos _town,[0,300],[0,360],0] call SHK_pos;
_veh = "CUP_C_Datsun_Plain" createVehicle _pos;

//Adds a marker with a bit of an ofset
_markerPos = [_pos, 300] call CBA_fnc_randPos;

_markerstr = createMarker [str (random 1000),_markerPos];
_markerstr setMarkerColor "colorEAST";
_markerstr setMarkerShape "Ellipse";
_markerstr setMarkerBrush "Grid";
_markerstr setMarkerSize [500,500];

_markerstr2 = createMarker [str (random 1000),_markerPos];
_markerstr2 setMarkerShape "ICON";
_markerstr2 setMarkerType "MIL_unknown";
_markerstr2 setMarkerColor "colorWest";
_markerstr2 setMarkerText "Car Bomb";

//Creating the task
_taskID = str (random 1000);
[WEST,[_taskID],["A Suspicious Vehicle has been left in the area. We need to investigate it.","Car Bomb"],_markerstr2,0,2,true] call BIS_fnc_taskCreate;

//Waits until blufor is near then BoOM
waitUntil{[_veh, 100] call CBA_fnc_nearPlayer};
"Bo_GBU12_LGB" createVehicle (getPos _veh);
_veh setDamage 1;

_num = 0;
sleep 3;
//Add Wounded Civilians
for "_i" from 1 to 5 do{
	_unitPos = [(getPos _veh), 30] call CBA_fnc_randPos;
	_group = createGroup civilian;
	_unit = _group createUnit [(civilianType select (floor random (count civilianType))),_unitPos,[],0,"NONE"];
	
	for "_i" from 1 to 5 do {
		[_unit,random 0.8,["stab"]] call twc_fnc_aiWounds;
	};
	
	_unit addEventHandler ["killed",{
		["TWC_Insurgency_adjustPoints", -5] call CBA_fnc_serverEvent;
	}];
	
	[_unit, true, 1800, true] call ace_medical_fnc_setUnconscious;
};
//Add Enemies

_nearest=objNull;
_nearestdist=200;
{
	_dist=vehicle _x distance _pos;
	if (isPlayer _x and _dist<_nearestdist) then {
		_nearest=_x;
		_nearestdist=_dist;
	};
} forEach allPlayers;
[_pos,2,[200,300],[_nearest]] spawn twc_spawnAIUnits;

//Complete or fail

[
	{
		[(_this select 1)] call bis_fnc_deleteTask;
		deleteMarker (_this select 2);
		deleteMarker (_this select 3);
		["TWC_Insurgency_objCompleted", ["CarBomb", (_this select 0)]] call CBA_fnc_serverEvent;
	},
	[_objType, _taskID, _markerstr, _markerstr2],
	(60 + ((floor random 10) * 6))
] call CBA_fnc_waitAndExecute;
