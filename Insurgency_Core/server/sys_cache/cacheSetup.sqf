/*Written by WiredTiger for use on the TWC Public server.
Not to be used without consent from TWC or WiredTiger
Thanks for the consent -[TWC] jayman
*/
diag_log "hoblog cachesetup 5";
if (isNil "InsP_cacheGroup") then {

	cacheBoxA = "Box_FIA_Ammo_F" createVehicle (getMarkerPos "cacheSpawn" vectorAdd[5,0,0]);
	cacheBoxA allowdamage false;
	publicVariable "cacheBoxA";
diag_log "hoblog cachesetup 12";
	cacheBoxB = "Box_FIA_Ammo_F" createVehicle (getMarkerPos "cacheSpawn" vectorAdd[10,0,0]);
	
	
	publicVariable "cacheBoxB";

	cacheBoxC = "Box_FIA_Ammo_F" createVehicle (getMarkerPos "cacheSpawn" vectorAdd[15,0,0]);
	publicVariable "cacheBoxC";

	InsP_cacheGroup = [cacheBoxA, cacheBoxB, cacheBoxC];
	publicVariable "InsP_cacheGroup";
	diag_log "hoblog cachesetup 25";
	waitUntil {!(isNil "cacheBoxA") && !(isNil "cacheBoxB") &&!(isNil "cacheBoxC") && !(isNil "InsP_cacheGroup")};
diag_log "hoblog cachesetup 27";
_houseList = [(worldSize / 2),(worldSize / 2)] nearObjects ["House",(sqrt 2 *(worldSize / 2))];
	{
		//Cache cannot cause near to Blufor respawn
		_x allowdamage false;
 		while {(_x distance (getMarkerPos "cacheSpawn")) <500 || (_x distance (getmarkerpos "base")) < 1500 || (_x distance (getmarkerpos "respawn_west_forwardbase")) < 1500 } do {			
			_cacheMarker = "";
	
			
			sleep .25;
			_c = 0;
			_house = _houseList call BIS_fnc_selectRandom;
			while { format ["%1", _house buildingPos _c] != "[0,0,0]" } do {_c = _c + 1};
			if (_c > 0) then {
				_ranNum = floor(random _c);
				_x setPos (_house buildingPos _ranNum);
				sleep 1;
			};
			sleep 0.25;
		};
		clearItemCargoGlobal _x;
		clearWeaponcargoGlobal _x;
		clearMagazineCargoGlobal _x;
		clearBackpackCargoGlobal _x;
		diag_log "hoblog cachesetup 49";
		_randsize = 250 + (random 500);
		_randtime = 2;
		_trg2 = createTrigger ["EmptyDetector", getpos _x];
		_trg2 SETVARIABLE ["twc_cache", _x];
		_trg2 setTriggerArea [_randsize, _randsize, 30, false];
		_trg2 setTriggerActivation ["west", "PRESENT", True];
		_trg2 setTriggerTimeout [_randtime,_randtime,_randtime, false];
		_trg2 setTriggerStatements ["(({(({((_x getvariable ['twc_isterp', 0]) == 1)} count (crew _x)) > 0)} count thislist) > 0)","[getpos thistrigger, (thistrigger getvariable ['twc_cache', objnull])] execvm 'Insurgency_Core\server\sys_terp\fnc_terp_cache.sqf'",""];
				diag_log "hoblog cachesetup 58";
		
		_x AddMagazineCargoGlobal ["CUP_PG7V_M",random 5];
		_x AddMagazineCargoGlobal ["CUP_OG7_M",random 5];
		_x AddMagazineCargoGlobal ["CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M",random 10];
		_x AddMagazineCargoGlobal ["CUP_30Rnd_762x39_AK47_M",random 10];
		_x AddMagazineCargoGlobal ["IEDLandBig_Remote_Mag",random 2];
		_x AddMagazineCargoGlobal ["IEDUrbanBig_Remote_Mag",random 2];
		
		if (isserver && hasinterface) then {
			_intelPos = getpos _x;
			_marker = createMarker [(str (random 1000)), _intelPos];
			_marker setMarkerType "hd_join";
			_marker setMarkerColor "ColorOrange";
			_marker setMarkerText "Cache";
			_marker setMarkerSize [0.5,0.5];
		};
		
		[_x] spawn {
		params ["_cache"];
		_pos = getpos _cache;
		sleep 30;
		_cache allowdamage true;};

		_x addMPEventHandler ["MPKilled", {
			params ["_cache", "_killer", "_instigator", "_useEffects"];
			
			if (!(local _cache)) exitwith {};
			
			_var = _cache getvariable ["twccachehasbeenhit", 0];
			//this is set by deadcache, don't set it here
			if (_var == 1) exitwith {};
			
			[_cache] call InsP_fnc_deadCache;
			
		}];
		
		
		_x addMPEventHandler ["MPHit", {
			params ["_cache", "_source", "_damage", "_instigator"];
			
			if (!(local _cache)) exitwith {};
			
			_var = _cache getvariable ["twccachehasbeenhit", 0];
			//this is set by deadcache, don't set it here
			if (_var == 1) exitwith {};
			
			if ((damage _cache) > 0.88) then {
				[_cache] call InsP_fnc_deadCache;
			};
		}];

		
		
		_num = 0;
		_total = 21;
		_group = createGroup East;
		_pos = getPos _x;
		for "_i" from 1 to _total do{
			_unit = _group createUnit [(townSpawn select (floor random (count townspawn))), _pos,[], 5,"NONE"];
			_unit addEventHandler ["Killed",{
				[(_this select 0)] call twc_fnc_deleteDead;
				if (side (_this select 1) == WEST) then{
					["TWC_Insurgency_adjustInsurgentMorale", -0.25] call CBA_fnc_serverEvent;
					["TWC_Insurgency_adjustCivilianMorale", 0.25] call CBA_fnc_serverEvent;
				};
			}];
			_unit addMagazines ["handGrenade",2];
			_unit setVariable ["unitsHome",_pos,false];
			_unit setUnitPos "UP";
			//_num = _num + 1;
			sleep 0.2;
		};
		
		[leader _group, 1] spawn TWC_fnc_aiscramble;
		if (!(["90", twc_missionname] call BIS_fnc_inString)) then {
		for "_i" from 1 to 2 do{
if ((random 1) < 0.15) then {
_group createUnit [twc_aaman, _pos,[], 25,"NONE"];
};
};
};

	_units = [_pos, nil, units _group, 40, 2, true, true] call ace_ai_fnc_garrison;
	
	[_group, _pos, 100, 3, 0.9] call CBA_fnc_taskDefend;
	
	/*
{
	[_x, 10] call twc_fnc_aispreadout;
} foreach units _group;
		_null = [leader _group, leader _group,150] spawn TWC_fnc_Defend;
		*/
	} forEach InsP_cacheGroup;
};