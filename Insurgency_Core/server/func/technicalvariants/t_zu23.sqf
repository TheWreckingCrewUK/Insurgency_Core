/*
* Author(s): [TWC] Hobbs
* Technical Spawner

* Arguments:
* <Array> Position
* <Group> Group to attach the technical to
* <Number> Whether to attach a flag to it
*
* Return Value:
* <NONE>
*
* 
* 
*
* Public: No
*/
params ["_pos", "_group", "_flag"];

_type = selectrandom ["CUP_I_Ural_ZU23_TK_Gue", "CUP_O_Hilux_zu23_TK_INS"];

_truck = _type createvehicle _pos; 
_truck setVehicleLock "LOCKEDPLAYER";
_truck setfuel 0;

if (_type == "CUP_O_Hilux_zu23_TK_INS") then {
	_colour = (["White", "Red", "Olive", "Grey", "Black", "Camo", "DarkBlue", "DarkGrey"] call bis_fnc_selectrandom);
[
	_truck,
	[_colour,1], 
	true
] call BIS_fnc_initVehicle;
};

_direction = 180;	
_nearRoads = _pos nearRoads 30;

if(count _nearRoads > 0) then
{
	_road = _nearRoads select 0;
	_road2 = _nearRoads select 1;
	_direction = random 360;
	if (!isnil "_road2") then {
		_direction = _road2 getdir _road;
	};
};

if (((_direction + 180 -(_truck getdir _pos)) < -90) || ((_direction + 180 -(_truck getdir _pos)) > 90)) then { 
	
	_direction = _direction +180;
};

_truck addEventHandler ["Fired", {  
   params ["_unit", "_weapon", "_muzzle", "_mode", "_ammo", "_magazine", "_projectile", "_gunner"]; 
   _mult = 3; _projectile setvelocity [(velocity _projectile select 0) + (((random 16) - 8) * _mult), (velocity _projectile select 1) + (((random 16) - 8) * _mult),  (velocity _projectile select 2) + (((random 8) - 3) * _mult)];;  
     
  }];

_truck setdir _direction;
	
	_pos = getpos _truck;
	

[_pos, _truck, _group] spawn {
	params ["_pos", "_truck", "_group"];
	sleep 5;
	_unit = _group createUnit [(selectRandom townSpawn), [0,0,0], [], 5, "NONE"];
	_unit addEventHandler ["Killed",{
		[(_this select 0)] call twc_fnc_deleteDead;
		if (side (_this select 1) == WEST) then{
			["TWC_Insurgency_adjustInsurgentMorale", -0.25] call CBA_fnc_serverEvent;
			["TWC_Insurgency_adjustCivilianMorale", 0.25] call CBA_fnc_serverEvent;
		};
	}];
	_unit setVariable ["unitsHome",_pos,false];
	_unit setVariable ["twc_isenemy",1];
	sleep 5;
	_unit assignasgunner _truck;
	_group addvehicle _truck;
	_unit moveIngunner _truck;
};


_groupcount = 3 + (random 5);
	
	for "_i" from 1 to _groupcount do {
	_unit = _group createUnit [(townSpawn select (floor random (count townspawn))), _pos,[], 5,"NONE"];
	_unit addEventHandler ["Killed",{
		[(_this select 0)] call twc_fnc_deleteDead;
		if (side (_this select 1) == WEST) then{
			["TWC_Insurgency_adjustInsurgentMorale", -0.25] call CBA_fnc_serverEvent;
			["TWC_Insurgency_adjustCivilianMorale", 0.25] call CBA_fnc_serverEvent;
		};
	}];
	_group selectleader _unit;

//[_unit, getpos _unit,150, 2, true] spawn TWC_fnc_Defend;
//[_unit,getpos _unit,150,"LIMITED","COLUMN","SAFE"] call twc_fnc_patrol;
//[_group,getpos _unit, 150, 7, "MOVE", "SAFE", "YELLOW", "LIMITED", "COLUMN"] call CBA_fnc_taskPatrol;


	_unit setpos ([_pos, 3, 50, 3, 0, 20, 0] call BIS_fnc_findSafePos);

	
	};
		[leader _group, 1] spawn TWC_fnc_aiscramble;
		[_group, _pos, 50, 3, 0.3] call CBA_fnc_taskDefend;

	
_truck addEventHandler ["Killed",{
	params ["_unit", "_killer", "_instigator", "_useEffects"];
	["TWC_Insurgency_adjustInsurgentMorale", -1] call CBA_fnc_serverEvent;
	["TWC_Insurgency_adjustCivilianMorale", 1] call CBA_fnc_serverEvent;
	["TWC_Insurgency_adjustPoints", 20] call CBA_fnc_serverEvent;
	{
		_x setdamage 1;
	} foreach (attachedobjects _unit);
}];