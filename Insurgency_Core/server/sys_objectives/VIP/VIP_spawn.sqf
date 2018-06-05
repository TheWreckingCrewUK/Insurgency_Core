/*
* Author: [TWC] Jayman
* VIP Objective Creator 
*
* Arguments:
* <NONE>
*
* Return Value:
* <NONE>
*
* Example:
* <TBD>
*
* Public: No
*/
params ["_objType"];
//Finds the random building position away from base and not near players
_pos = [0,0,0];
while {_pos distance [0,0,0] < 100 || (_pos distance (getmarkerpos "base")) < 500 || [_pos,500] call twc_fnc_posNearPlayers} do {			

	_houseList = [(worldSize / 2),(worldSize / 2)] nearObjects ["House",(sqrt 2 *(worldSize / 2))];
	sleep .25;
	_c = 0;
	_house = _houseList call BIS_fnc_selectRandom;
	while { format ["%1", _house buildingPos _c] != "[0,0,0]" } do {_c = _c + 1};
	if (_c > 0) then {
		_ranNum = floor(random _c);
		_pos = (_house buildingPos _ranNum);
		sleep 1;
	};
	sleep 0.25;
};
//Creating the VIP
_group = createGroup civilian;
_vip = _group createUnit ["C_journalist_F",_pos,[],0,"NONE"];
[_vip, true] call ACE_captives_fnc_setSurrendered;

_vip setVariable ["active",1,true];

//Adds a Marker with a bit of an offset so players know where to go
_markerPos = [_pos, 2] call CBA_fnc_randPos;

_id = [_markerpos, "Hostage"];

twc_activemissions pushback _id;

/*
_markerstr = createMarker [str (random 1000),_markerPos];
_markerstr setMarkerColor "colorEAST";
_markerstr setMarkerShape "Ellipse";
_markerstr setMarkerBrush "Grid";
_markerstr setMarkerSize [500,500];

_markerstr2 = createMarker [str (random 1000),_markerPos];
_markerstr2 setMarkerShape "ICON";
_markerstr2 setMarkerType "MIL_unknown";
_markerstr2 setMarkerColor "colorWest";
_markerstr2 setMarkerText "Hostage Rescue";
*/

//Spawning the enemies
[_pos]spawn{
_pos = (_this select 0);
_num = 0;
_total = 10;
_group = createGroup East;
	for "_i" from 1 to _total do{
		_unit = _group createUnit [(townspawn select (floor random (count townspawn))), _pos,[], 5,"NONE"];
		_unit addEventHandler ["Killed",{
			[(_this select 0)] call twc_fnc_deleteDead;
			if (side (_this select 1) == WEST) then{
				InsP_enemyMorale = InsP_enemyMorale + 0.06; publicVariable "InsP_enemyMorale";
			};
		}];
//		_unit addMagazines ["handGrenade",2];
		_unit setVariable ["unitsHome",_pos,false];
		//_num = _num + 1;
		sleep 0.2;
	};
	[_group, _group, 50, 3, false] call CBA_fnc_TaskDefend;
};


	
//Waits until the time runs out or the vip dies AND not near players
_time = time + ((10*60)*60);
waitUntil {(!alive _vip || time > _time) && (!([_vip,200] call CBA_fnc_nearPlayer))};

//End of Tasks stuff
["TWC_Insurgency_objCompleted", ["VIP", _objType]] call CBA_fnc_serverEvent;
//deleteMarker _markerstr;
//deleteMarker _markerPos;




sleep 1;

if (!((_vip getvariable "active") == 0)) then {

//Creates the task
_taskID = str (random 1000);
[WEST,[_taskID],["A member of the press was captured by insurgents, and later died","Hostage Rescue"],_markerPos,0,2,true] call BIS_fnc_taskCreate;

	[_taskID,"Failed"] call BIS_fnc_taskSetState;
	};
		twc_activemissions deleteAt (twc_activemissions find _id);

sleep 600;


deleteVehicle _vip;

//If vip is returned then it exits not hurting score
if(isNil "_vip")exitWith{};

["TWC_Insurgency_adjustPoints", -20] call CBA_fnc_serverEvent;