

params["_pos"];

//if (hasinterface) exitwith {};

//Trigger to identify town
//_pos = getPos _town;

_marker = createMarker [str _pos,_pos];
_marker setMarkerShape "Ellipse";
_marker setMarkerSize [250,250];
_marker setMarkerColor "colorOpfor";
_marker setMarkerAlpha 0.5;

_marker = createMarker [str _pos + "flag",_pos];
_marker setMarkerType "Faction_CUP_TKM";


//if (worldname == "zargabad") exitwith {};


_id = [_pos, "Stronghold"];
twc_activestrongholds pushback _id;
publicVariable "twc_activestrongholds";
//_rand = (str random 1000);
_rand = _id;

missionNamespace setVariable [format["stronghold_%1", _rand], 5];

_randsize = 650 + (random 100);
_randtime = 10;
_trg2 = createTrigger ["EmptyDetector", _pos];
_trg2 setTriggerArea [_randsize, _randsize, 30, false];
_trg2 setTriggerActivation ["west", "PRESENT", True];
_trg2 setTriggerTimeout [_randtime,_randtime,_randtime, false];
_trg2 setTriggerStatements ["({(_x getvariable ['twc_isterp', 0] == 1)} count thislist) > 0","[nearestObjects [thistrigger, ['soldiergb'], 500], getpos thistrigger] execvm 'Insurgency_Core\server\sys_terp\fnc_terp_stronghold.sqf'",""];


//Spawning a load of hostiles and the civs

_group = createGroup East;
[_pos, 2, 500, _group] execvm "Insurgency_Core\server\func\fnc_spawnTechnicals.sqf";

_num = 0;
_total = 7;
for "_i" from 1 to _total do{
_infpos = [_pos, 300] call CBA_fnc_randPos;
	_unit = _group createUnit [(townSpawn select (floor random (count townspawn))), _infpos,[], 5,"NONE"];
	_unit addEventHandler ["Killed",{
		[(_this select 0)] call twc_fnc_deleteDead;
		if (side (_this select 1) == WEST) then{
			["TWC_Insurgency_adjustInsurgentMorale", -0.25] call CBA_fnc_serverEvent;
			["TWC_Insurgency_adjustCivilianMorale", 0.25] call CBA_fnc_serverEvent;
		};
	}];
	_unit setVariable ["unitsHome",_pos,false];
	_unit setVariable ["twc_isenemy",1];
	_num = _num + 1;
	sleep 0.2;
};
	[leader _group] spawn TWC_fnc_aiscramble;
//{
//	[_x] call twc_fnc_aispreadout;
//} foreach units _group;
//[_group, _pos, 400, 3, 0.4] call CBA_fnc_taskDefend;
[_group, _pos, 400, 5, "MOVE", "SAFE", "RED", "LIMITED", "FILE"] call CBA_fnc_taskPatrol;


if (!(["90", twc_missionname] call BIS_fnc_inString)) then {
for "_i" from 1 to 2 do{
if ((random 1) < 0.15) then {
		_infpos = [_pos, 300] call CBA_fnc_randPos;
_group createUnit [twc_aaman, _infpos,[], 25,"NONE"];
};
};
};

for "_i" from 1 to 6 do{
	_num = 0;
	_total = 5 + random 5;
	_group = createGroup East;
	for "_i" from 1 to _total do{
		_infpos = [_pos, 300] call CBA_fnc_randPos;
		_unit = _group createUnit [(townSpawn select (floor random (count townspawn))), _infpos,[], 5,"NONE"];
		_unit addEventHandler ["Killed",{
			[(_this select 0)] call twc_fnc_deleteDead;
			if (side (_this select 1) == WEST) then{
				["TWC_Insurgency_adjustInsurgentMorale", -0.25] call CBA_fnc_serverEvent;
				["TWC_Insurgency_adjustCivilianMorale", 0.25] call CBA_fnc_serverEvent;
			};
		}];
		_unit setVariable ["unitsHome",_pos,false];
		_unit setVariable ["twc_isenemy",1];
		_num = _num + 1;
		sleep 0.2;
	};
	[leader _group] spawn TWC_fnc_aiscramble;
//{
//	[_x, 400] call twc_fnc_aispreadout;
//} foreach units _group;

//[_group, _pos, 400, 3, 0.4] call CBA_fnc_taskDefend;
[_group, _pos, 400, 5, "MOVE", "SAFE", "RED", "LIMITED", "FILE"] call CBA_fnc_taskPatrol;

_group setbehaviour "safe";
_group setspeedmode "limited";
	if (random 1 > 2) then {
	[_group, _pos, 400, 5, "MOVE","SAFE","YELLOW","LIMITED","COLUMN"] call CBA_fnc_taskPatrol;}
	else
	{
	//{[_pos, nil, [_x], 200, 2, true, true] call ace_ai_fnc_garrison;} foreach units _group;
	//using the inferior cba defence function after the ace garrison teleport, so that if ace can't find a building then cba takes over
	//[_group, _pos, 300, 3, 0.5, 0.5] call CBA_fnc_taskDefend;
	};
};
//[_pos, 5, 75] call twc_spawnCiv;



/*
_housecheck = (_pos) nearObjects ["House",200];
if(count _housecheck > 0) then{

for "_i" from 1 to 4 do{
	_boxType = ["CUP_BAF_IEDBox","Box_IED_Exp_F"];
	_box = (_boxType call bis_fnc_selectRandom) createVehicle _pos;
	clearBackpackCargoGlobal _box;
	_box addEventHandler ["Killed",{
		[(_this select 0)] call twc_fnc_deleteDead;
		if (side (_this select 1) == WEST) then{
			["TWC_Insurgency_adjustInsurgentMorale", -2] call CBA_fnc_serverEvent;
			["TWC_Insurgency_adjustCivilianMorale", 2] call CBA_fnc_serverEvent;
			["TWC_Insurgency_adjustPoints", 15] call CBA_fnc_serverEvent;
		};
	}];
	[_box]spawn{
		params["_box"];
		_pos = getPos _box;
		while{getPos _box distance _pos < 10}do{
			_houseList = (getPos _box) nearObjects ["House",200];
			sleep 0.25;
			_c = 0;
			_house = _houseList call BIS_fnc_selectRandom;
			while { format ["%1", _house buildingPos _c] != "[0,0,0]" } do {_c = _c + 1};
			if (_c > 0) then {
				_ranNum = floor(random _c);
				_box setPos (_house buildingPos _ranNum);
			};
		};
	};
};
};

*/

_idpos = twc_activestrongholds find _id;
// Creates Trigger that checks when East is dead and awards points
_trg = createTrigger ["EmptyDetector", _pos];
_trg setTriggerArea [600, 600, 0, false];
_trg setTriggerActivation ["EAST", "PRESENT", False];
_trg setTriggerTimeout[2, 2, 2, true];
_trg setTriggerStatements ["count thisList < 7",format ["
['TWC_Insurgency_adjustPoints', 150] call CBA_fnc_serverEvent;

_taskID = (str random 1000);

[WEST,[_taskID],['Reconnaissance identified a large stronghold which was later destroyed by friendly forces','Stronghold'],(getpos thistrigger),0,2,true] call BIS_fnc_taskCreate;

	[_taskID,'Succeeded'] call BIS_fnc_taskSetState;
	_marker = createMarker [format ['stronghold%1', (random 1000)], getpos thistrigger];
	_marker setMarkerType 'mil_triangle';
	_marker setMarkerColor 'ColorGreen';
	_marker setMarkerText ('Stronghold Cleared');
	_marker setMarkerSize [0.75, 0.75];
	
	missionNamespace setVariable ['stronghold_%1', 2];
['TWC_Insurgency_adjustCivilianMorale', 15] call CBA_fnc_serverEvent;", _rand],""];

waituntil {!isnil "InsP_cacheGroup"};

_trg = createTrigger ["EmptyDetector", _pos];
_trg setTriggerArea [300, 300, 0, false];
_trg setTriggerActivation ["EAST", "PRESENT", True];
_trg setTriggerTimeout[2, 2, 2, true];
_trg setTriggerStatements [format ["((count thisList < (35 + ((count InsP_cacheGroup) * 5))) && ((missionNamespace getVariable ['stronghold_%1', 0]) != 2))", _rand],format ["
_t = [(getpos thistrigger), count thisList] call twc_fnc_strongholdreinforcements; while {((((count thisList) + _t))) < (40 + ((count InsP_cacheGroup) * 5))} do {
_t2 = [(getpos thistrigger), count thisList] call twc_fnc_strongholdreinforcements; _t = _t + _t2;}", _rand],""];

while {
	(missionNamespace getVariable [format['stronghold_%1', _rand], 0]) != 2} do {
		sleep 60;
	};

//deletevehicle _trg2;

		twc_activestrongholds deleteAt (twc_activestrongholds find _id);
publicVariable 'twc_activestrongholds';


_p1 = profilenamespace getvariable ["twc_perstrongholds", []];

_strongholdArray = [];
_entry = [];
{
	if ((_x select 0) == missionname) then {
		
		_entry = _x;
	};
} foreach _p1;
_list = _entry select 1;

		_list deleteAt (_list find _pos);
		_p1 deleteat (_p1 find _entry);
		
		_p1 pushback [missionname, _list];
		profilenamespace setvariable ["twc_perstrongholds", _p1];
	
		saveprofilenamespace;
