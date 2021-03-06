//Script that spawns the attack on the forward base.
_pos = getMarkerPos "respawn_west_forwardBase";

_distance = 2000;
_town = [0];

{
	_isfriend = profilenamespace getvariable ['twcenemytown' + (str _x), 5];
	
	if (_isfriend == 1) then {
		if (((_x distance _pos) < _distance) && (!([_x,1000] call twc_fnc_posNearPlayers))) then {
			_town = _x;
			_distance = (_x distance _pos);
		};
	};
} foreach twc_locationarray_trgs;

if ((count _town ) == 1) exitwith {};

_spawnpos = [_town, 1, 50, 5, 0, 20, 0] call BIS_fnc_findSafePos;



_group = creategroup east;
_total = 5 + random 5;
for "_i" from 1 to _total do {
	_unit = _group createUnit [(selectRandom townSpawn), _spawnPos, [], 5, "NONE"];
	_unit addEventHandler ["Killed",{
		[(_this select 0)] call twc_fnc_deleteDead;

		if (side (_this select 1) == WEST) then{
			["TWC_Insurgency_adjustInsurgentMorale", -0.25] call CBA_fnc_serverEvent;
			["TWC_Insurgency_adjustCivilianMorale", 0.25] call CBA_fnc_serverEvent;
		};
	}];
	
	_unit setVariable ["twc_isenemy",1];
	
};

[leader _group] spawn TWC_fnc_aiscramble;

 _group addwaypoint [_spawnPos, 200]; 