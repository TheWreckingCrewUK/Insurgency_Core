
if((typeOf player) in ["Modern_British_Sniper_coin", "Modern_British_Spotter_coin"])then{

	_ammoaction = ["teamswitch","Switch Team","",{},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_ammoaction,true] call ace_interact_menu_fnc_addActionToClass;
	
	_snaction1 = ["Spawnsnipbox","US","",{call twc_loadout_snipergroup_us},{((((group player) getvariable ["twc_groupcountry", "baf"])) != "us")}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "teamswitch"],_snaction1,true] call ace_interact_menu_fnc_addActionToClass;
	
	_snaction1 = ["Spawnsnipbox","USMC","",{call twc_loadout_snipergroup_usmc},{((((group player) getvariable ["twc_groupcountry", "baf"])) != "usmc")}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "teamswitch"],_snaction1,true] call ace_interact_menu_fnc_addActionToClass;
	
	_snaction1 = ["Spawnsnipbox","BAF","",{call twc_loadout_snipergroup_baf},{((((group player) getvariable ["twc_groupcountry", "baf"])) != "baf")}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "teamswitch"],_snaction1,true] call ace_interact_menu_fnc_addActionToClass;
	
	_snaction1 = ["Spawnsnipbox","SAS","",{call twc_loadout_snipergroup_uksf},{((((group player) getvariable ["twc_groupcountry", "baf"])) != "uksf")}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "teamswitch"],_snaction1,true] call ace_interact_menu_fnc_addActionToClass;
	
	_snaction1 = ["Spawnsnipbox","ACE","",{call twc_loadout_snipergroup_cag},{((((group player) getvariable ["twc_groupcountry", "baf"])) != "cag") && (isserver)}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "teamswitch"],_snaction1,true] call ace_interact_menu_fnc_addActionToClass;
	
};

if((typeOf player) in ["Modern_British_FSTCommander"])then{

	_ammoaction = ["teamswitch","Switch Team","",{},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_ammoaction,true] call ace_interact_menu_fnc_addActionToClass;
	
	_snaction1 = ["Spawnsnipbox","US","",{call twc_loadout_fstgroup_us},{((((group player) getvariable ["twc_groupcountry", "baf"])) != "us")}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "teamswitch"],_snaction1,true] call ace_interact_menu_fnc_addActionToClass;
	
	_snaction1 = ["Spawnsnipbox","BAF","",{call twc_loadout_fstgroup_baf},{((((group player) getvariable ["twc_groupcountry", "baf"])) != "baf")}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "teamswitch"],_snaction1,true] call ace_interact_menu_fnc_addActionToClass;
};

if((typeOf player) in ["Modern_British_HeliPilot","Modern_British_crewchief"])then{

	_ammoaction = ["teamswitch","Switch Team","",{},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_ammoaction,true] call ace_interact_menu_fnc_addActionToClass;
	
	_snaction1 = ["Spawnsnipbox","US","",{call twc_loadout_pilotgroup_us},{((((group player) getvariable ["twc_groupcountry", "baf"])) != "us")}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "teamswitch"],_snaction1,true] call ace_interact_menu_fnc_addActionToClass;
	
	_snaction1 = ["Spawnsnipbox","160th SOAR","",{call twc_loadout_pilotgroup_cag},{(((((group player) getvariable ["twc_groupcountry", "baf"])) != "cag") && ((missionnamespace getvariable ["twc_iscagactive", 0]) > 0))}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "teamswitch"],_snaction1,true] call ace_interact_menu_fnc_addActionToClass;
	
	_snaction1 = ["Spawnsnipbox","BAF","",{call twc_loadout_pilotgroup_baf},{((((group player) getvariable ["twc_groupcountry", "baf"])) != "baf")}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "teamswitch"],_snaction1,true] call ace_interact_menu_fnc_addActionToClass;
};

if((typeOf player) in ["Modern_UKSF_Squadleader"])then{

	_ammoaction = ["teamswitch","Switch Team","",{},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_ammoaction,true] call ace_interact_menu_fnc_addActionToClass;
	
	_snaction1 = ["Spawnsnipbox","ACE","",{call twc_loadout_sfgroup_cag},{((((group player) getvariable ["twc_groupcountry", "baf"])) != "cag") && isserver}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "teamswitch"],_snaction1,true] call ace_interact_menu_fnc_addActionToClass;
	
	_snaction1 = ["Spawnsnipbox","NSWDG","",{call twc_loadout_sfgroup_st6},{((((group player) getvariable ["twc_groupcountry", "baf"])) != "st6") && isserver}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "teamswitch"],_snaction1,true] call ace_interact_menu_fnc_addActionToClass;
	
	_snaction1 = ["Spawnsnipbox","ANA","",{call twc_loadout_sfgroup_ana},{(((((group player) getvariable ["twc_groupcountry", "baf"])) != "ana") && ((missionnamespace getvariable ["twc_wdveh",0]) == 0))}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "teamswitch"],_snaction1,true] call ace_interact_menu_fnc_addActionToClass;
	
	_snaction1 = ["Spawnsnipbox","SAS","",{call twc_loadout_sfgroup_baf},{((((group player) getvariable ["twc_groupcountry", "baf"])) != "baf")}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "teamswitch"],_snaction1,true] call ace_interact_menu_fnc_addActionToClass;
};

twc_loadout_isgroupnearby = {
	_check = true;
	{
		if ((_x distance player) > 40) then {_check = false};
	} foreach (units group player);
	if (!_check) then {
	
		_title  = "<t color='#ffbf00' size='1.2' shadow='1' shadowColor='#000000' align='center'>Team Switch</t>"; 

		 _text1 = "<br />All members of the group need to be nearby to switch team";
		hint parsetext (_title + _text1);
	};
	_check;
};

twc_loadout_canswitch = {
	
	_check = true;
	
	if (isserver) exitwith {_check};
	
	{
		if ((alive _x) && ((_x distance player) > 20)) then {_check = false};
	} foreach (units group player);
	
	if (!_check) then {
	
		_title  = "<t color='#ffbf00' size='1.2' shadow='1' shadowColor='#000000' align='center'>Team Switch</t>"; 

		 _text1 = "<br />All members of the group need to be nearby to switch team";
		hint parsetext (_title + _text1);
	};
	
	
	_check2 = true;
	
	_timer = group player getvariable ["twc_canswitchloadout", -9999];
	
	if (_timer > (time - 600)) then {_check2 = false};
	
	if (!_check2) then {
		_check = false;
		_title  = "<t color='#ffbf00' size='1.2' shadow='1' shadowColor='#000000' align='center'>Team Switch</t>"; 

		 _text1 = "<br />You can only switch teams once every 10 minutes.";
		hint parsetext (_title + _text1);
	};
	if (_check) then {
		group player setvariable ["twc_canswitchloadout", time];
	};
	_check;
};

	twc_loadout_sfgroup_cag_switch = {
		params ["_unit"];
		if (typeof _unit == "Modern_UKSF_Base") then {
			[_unit] call twc_loadout_ussf_rifleman;
		};
		if (typeof _unit == "Modern_UKSF_Pointman") then {
			[_unit] call twc_loadout_ussf_pointman;
		};
		if (typeof _unit == "Modern_UKSF_2IC") then {
			[_unit] call twc_loadout_ussf_2ic;
		};
		if (typeof _unit == "Modern_UKSF_Squadleader") then {
			[_unit] call twc_loadout_ussf_sl;
		};
		if (typeof _unit == "Modern_UKSF_Grenadier") then {
			[_unit] call twc_loadout_ussf_grenadier;
		};
		if (typeof _unit == "Modern_UKSF_Marksman") then {
			[_unit] call twc_loadout_ussf_marksman;
		};
		if (typeof _unit == "Modern_UKSF_Medic") then {
			[_unit] call twc_loadout_ussf_medic;
		};
	};
twc_loadout_sfgroup_cag = {

	_check = call twc_loadout_canswitch;
	if (!_check) exitwith {};
	
	
	_last = (group player) getvariable ["twc_groupcountry", "baf"];
	if (_last != "st6") then {
		_iscag = missionnamespace getvariable ["twc_iscagactive", 0];
		missionnamespace setvariable ["twc_iscagactive", _iscag + 1,true];
	};
	
	if ((_last == "ana")) then {
		{
			_unit = _x;
			_face = face _unit;
			
			_lastface = _unit getvariable ["twc_origface", _face];
			
			[_unit, _lastface] remoteExec ["setFace", 0, _unit];
		} foreach (units group player);
	};
	
	(group player) setvariable ["twc_groupcountry", "cag", true];
	
	{[_x] remoteexec ["twc_loadout_sfgroup_cag_switch", _x]} foreach (units group player);
};

	twc_loadout_sfgroup_st6_switch = {
		params ["_unit"];
		if (typeof _unit == "Modern_UKSF_Base") then {
			[_unit] call twc_loadout_st6_rifleman;
		};
		if (typeof _unit == "Modern_UKSF_Pointman") then {
			[_unit] call twc_loadout_st6_pointman;
		};
		if (typeof _unit == "Modern_UKSF_2IC") then {
			[_unit] call twc_loadout_st6_2ic;
		};
		if (typeof _unit == "Modern_UKSF_Squadleader") then {
			[_unit] call twc_loadout_st6_sl;
		};
		if (typeof _unit == "Modern_UKSF_Grenadier") then {
			[_unit] call twc_loadout_st6_grenadier;
		};
		if (typeof _unit == "Modern_UKSF_Marksman") then {
			[_unit] call twc_loadout_st6_marksman;
		};
		if (typeof _unit == "Modern_UKSF_Medic") then {
			[_unit] call twc_loadout_st6_medic;
		};
	};
twc_loadout_sfgroup_st6 = {

	_check = call twc_loadout_canswitch;
	if (!_check) exitwith {};
	
	
	_last = (group player) getvariable ["twc_groupcountry", "baf"];
	if (_last != "cag") then {
		_iscag = missionnamespace getvariable ["twc_iscagactive", 0];
		missionnamespace setvariable ["twc_iscagactive", _iscag + 1, true];
	};
	
	if ((_last == "ana")) then {
		{
			_unit = _x;
			_face = face _unit;
			
			_lastface = _unit getvariable ["twc_origface", _face];
			
			[_unit, _lastface] remoteExec ["setFace", 0, _unit];
		} foreach (units group player);
	};
	
	(group player) setvariable ["twc_groupcountry", "st6", true];
	{[_x] remoteexec ["twc_loadout_sfgroup_st6_switch", _x]} foreach (units group player);
};

	twc_loadout_sfgroup_baf_switch = {
		params ["_unit"];
		if (typeof _unit == "Modern_UKSF_Base") then {
			[_unit] call twc_loadout_uksf_rifleman;
		};
		if (typeof _unit == "Modern_UKSF_Pointman") then {
			[_unit] call twc_loadout_uksf_pointman;
		};
		if (typeof _unit == "Modern_UKSF_2IC") then {
			[_unit] call twc_loadout_uksf_2ic;
		};
		if (typeof _unit == "Modern_UKSF_Squadleader") then {
			[_unit] call twc_loadout_uksf_sl;
		};
		if (typeof _unit == "Modern_UKSF_Grenadier") then {
			[_unit] call twc_loadout_uksf_grenadier;
		};
		if (typeof _unit == "Modern_UKSF_Marksman") then {
			[_unit] call twc_loadout_uksf_marksman;
		};
		if (typeof _unit == "Modern_UKSF_Medic") then {
			[_unit] call twc_loadout_uksf_medic;
		};
	};
twc_loadout_sfgroup_baf = {

	_check = call twc_loadout_canswitch;
	if (!_check) exitwith {};
	_last = (group player) getvariable ["twc_groupcountry", "baf"];
	if ((_last == "cag") || (_last == "st6")) then {
		_iscag = missionnamespace getvariable ["twc_iscagactive", 0];
		missionnamespace setvariable ["twc_iscagactive", _iscag - 1, true];
	};
	
	if ((_last == "ana")) then {
		{
			_unit = _x;
			_face = face _unit;
			
			_lastface = _unit getvariable ["twc_origface", _face];
			
			[_unit, _lastface] remoteExec ["setFace", 0, _unit];
		} foreach (units group player);
	};
	
	(group player) setvariable ["twc_groupcountry", "baf", true];
	
	
	{[_x] remoteexec ["twc_loadout_sfgroup_baf_switch", _x]} foreach (units group player);
};

	twc_loadout_sfgroup_ana_switch = {
		params ["_unit"];
		if (typeof _unit == "Modern_UKSF_Base") then {
			[_unit] call twc_loadout_anasf_rifleman;
		};
		if (typeof _unit == "Modern_UKSF_Pointman") then {
			[_unit] call twc_loadout_anasf_pointman;
		};
		if (typeof _unit == "Modern_UKSF_2IC") then {
			[_unit] call twc_loadout_anasf_2ic;
		};
		if (typeof _unit == "Modern_UKSF_Squadleader") then {
			[_unit] call twc_loadout_anasf_sl;
		};
		if (typeof _unit == "Modern_UKSF_Grenadier") then {
			[_unit] call twc_loadout_anasf_grenadier;
		};
		if (typeof _unit == "Modern_UKSF_Marksman") then {
			[_unit] call twc_loadout_anasf_marksman;
		};
		if (typeof _unit == "Modern_UKSF_Medic") then {
			[_unit] call twc_loadout_anasf_medic;
		};
		
		_face = face _unit;
		
		_unit setvariable ["twc_origface", _face];
		
		[_unit, ["PersianHead_A3_01","PersianHead_A3_02","PersianHead_A3_03"]call bis_fnc_selectrandom] remoteExec ["setFace", 0, _unit];
		
	};
twc_loadout_sfgroup_ana = {

	_check = call twc_loadout_canswitch;
	if (!_check) exitwith {};
	_last = (group player) getvariable ["twc_groupcountry", "ana"];
	if ((_last == "cag") || (_last == "st6")) then {
		_iscag = missionnamespace getvariable ["twc_iscagactive", 0];
		missionnamespace setvariable ["twc_iscagactive", _iscag - 1, true];
	};
	
	(group player) setvariable ["twc_groupcountry", "ana", true];
	
	
	{[_x] remoteexec ["twc_loadout_sfgroup_ana_switch", _x]} foreach (units group player);
};

	twc_loadout_pilotgroup_us_switch = {
		params ["_unit"];
		if (typeof _unit == "Modern_British_HeliPilot") then {
			[_unit] call twc_loadout_pilotus_pilot;
		};
		if (typeof _unit == "Modern_British_crewchief") then {
			[_unit] call twc_loadout_pilotus_crewchief;
		};
	};
	twc_loadout_pilotgroup_us = {

	_check = call twc_loadout_canswitch;
	if (!_check) exitwith {};
	
	(group player) setvariable ["twc_groupcountry", "us", true];
	
	{[_x] remoteexec ["twc_loadout_pilotgroup_baf_switch", _x]} foreach (units group player);
};

	twc_loadout_pilotgroup_baf_switch = {
		params ["_unit"];
		if (typeof _unit == "Modern_British_HeliPilot") then {
			[_unit] call twc_loadout_pilotbaf_pilot;
		};
		if (typeof _unit == "Modern_British_crewchief") then {
			[_unit] call twc_loadout_pilotbaf_crewchief;
		};
	};
	twc_loadout_pilotgroup_baf = {

	_check = call twc_loadout_canswitch;
	if (!_check) exitwith {};
	
	(group player) setvariable ["twc_groupcountry", "baf", true];
	
	{[_x] remoteexec ["twc_loadout_pilotgroup_baf_switch", _x]} foreach (units group player);
};

	twc_loadout_pilotgroup_cag_switch = {
		params ["_unit"];
		if (typeof _unit == "Modern_British_HeliPilot") then {
			[_unit] call twc_loadout_pilotcag_pilot;
		};
		if (typeof _unit == "Modern_British_crewchief") then {
			[_unit] call twc_loadout_pilotcag_crewchief;
		};
	};
	twc_loadout_pilotgroup_cag = {

	_check = call twc_loadout_canswitch;
	if (!_check) exitwith {};
	
	(group player) setvariable ["twc_groupcountry", "cag", true];
	
	{[_x] remoteexec ["twc_loadout_pilotgroup_cag_switch", _x]} foreach (units group player);
};

	twc_loadout_fstgroup_us_switch = {
		params ["_unit"];
		if (typeof _unit == "Modern_British_FSTCommander") then {
			[_unit] call twc_loadout_fstus_sl;
		};
		if (typeof _unit == "Modern_British_FSTAssistant") then {
			[_unit] call twc_loadout_fstus_assistant;
		};
		if (typeof _unit == "Modern_British_FSTForwardObserver") then {
			[_unit] call twc_loadout_fstus_observer;
		};
	};
twc_loadout_fstgroup_us = {

	_check = call twc_loadout_canswitch;
	if (!_check) exitwith {};
	
	(group player) setvariable ["twc_groupcountry", "us", true];
	
	{[_x] remoteexec ["twc_loadout_fstgroup_us_switch", _x]} foreach (units group player);
};

	twc_loadout_fstgroup_baf_switch = {
		params ["_unit"];
		if (typeof _unit == "Modern_British_FSTCommander") then {
			[_unit] call twc_loadout_fstbaf_sl;
		};
		if (typeof _unit == "Modern_British_FSTAssistant") then {
			[_unit] call twc_loadout_fstbaf_assistant;
		};
		if (typeof _unit == "Modern_British_FSTForwardObserver") then {
			[_unit] call twc_loadout_fstbaf_observer;
		};
	};
twc_loadout_fstgroup_baf = {

	_check = call twc_loadout_canswitch;
	if (!_check) exitwith {};
	
	(group player) setvariable ["twc_groupcountry", "baf", true];
	
	{[_x] remoteexec ["twc_loadout_fstgroup_baf_switch", _x]} foreach (units group player);
};

	twc_loadout_snipergroup_us_switch = {
		params ["_unit"];
		if (typeof player == "Modern_British_Sniper_coin") then {
			[_unit] call twc_loadout_ussniper_shooter;
		};
		if (typeof player == "Modern_British_Spotter_coin") then {
			[_unit] call twc_loadout_ussniper_spotter;
		};
	};

twc_loadout_snipergroup_us = {

	_check = call twc_loadout_canswitch;
	if (!_check) exitwith {};
	
	_last = (group player) getvariable ["twc_groupcountry", "baf"];
	(group player) setvariable ["twc_groupcountry", "us", true];
	
	if (_last == "cag") then {
		_iscag = missionnamespace getvariable ["twc_iscagactive", 0];
		missionnamespace setvariable ["twc_iscagactive", _iscag - 1, true];
	};
	{[_x] remoteexec ["twc_loadout_snipergroup_us_switch", _x]} foreach (units group player);
};


	twc_loadout_snipergroup_usmc_switch = {
		params ["_unit"];
		if (typeof _unit == "Modern_British_Sniper_coin") then {
			[_unit] call twc_loadout_usmcsniper_shooter;
		};
		if (typeof _unit == "Modern_British_Spotter_coin") then {
			[_unit] call twc_loadout_usmcsniper_spotter;
		};
	};
twc_loadout_snipergroup_usmc = {

	_check = call twc_loadout_canswitch;
	if (!_check) exitwith {};
	
	_last = (group player) getvariable ["twc_groupcountry", "baf"];
	(group player) setvariable ["twc_groupcountry", "usmc", true];
	
	if (_last == "cag") then {
		_iscag = missionnamespace getvariable ["twc_iscagactive", 0];
		missionnamespace setvariable ["twc_iscagactive", _iscag - 1, true];
	};

	{[_x] remoteexec ["twc_loadout_snipergroup_usmc_switch", _x]} foreach (units group player);
};


	twc_loadout_snipergroup_baf_switch = {
		params ["_unit"];
		if (typeof _unit == "Modern_British_Sniper_coin") then {
			[_unit] call twc_loadout_bafsniper_shooter;
		};
		if (typeof _unit == "Modern_British_Spotter_coin") then {
			[_unit] call twc_loadout_bafsniper_spotter;
		};
	};
twc_loadout_snipergroup_baf = {

	_check = call twc_loadout_canswitch;
	if (!_check) exitwith {};
	
	_last = (group player) getvariable ["twc_groupcountry", "baf"];
	(group player) setvariable ["twc_groupcountry", "baf", true];
	
	if (_last == "cag") then {
		_iscag = missionnamespace getvariable ["twc_iscagactive", 0];
		missionnamespace setvariable ["twc_iscagactive", _iscag - 1, true];
	};

	{[_x] remoteexec ["twc_loadout_snipergroup_baf_switch", _x]} foreach (units group player);
};


	twc_loadout_snipergroup_uksf_switch = {
		params ["_unit"];
		if (typeof _unit == "Modern_British_Sniper_coin") then {
			[_unit] call twc_loadout_uksfsniper_shooter;
		};
		if (typeof _unit == "Modern_British_Spotter_coin") then {
			[_unit] call twc_loadout_uksfsniper_spotter;
		};
	};
twc_loadout_snipergroup_uksf = {

	_check = call twc_loadout_canswitch;
	if (!_check) exitwith {};
	
	_last = (group player) getvariable ["twc_groupcountry", "baf"];
	(group player) setvariable ["twc_groupcountry", "uksf", true];
	
	if (_last == "cag") then {
		_iscag = missionnamespace getvariable ["twc_iscagactive", 0];
		missionnamespace setvariable ["twc_iscagactive", _iscag - 1, true];
	};

	{[_x] remoteexec ["twc_loadout_snipergroup_baf_switch", _x]} foreach (units group player);
};

//not ready yet, pending RHS update. there's an isserver check in the ace interact to allow testing

	twc_loadout_snipergroup_cag_switch = {
		params ["_unit"];
		if (typeof _unit == "Modern_British_Sniper_coin") then {
			[_unit] call twc_loadout_cagsniper_shooter;
		};
		if (typeof _unit == "Modern_British_Spotter_coin") then {
			[_unit] call twc_loadout_cagsniper_spotter;
		};
	};
twc_loadout_snipergroup_cag = {

	_check = call twc_loadout_canswitch;
	if (!_check) exitwith {};
	
	_last = (group player) getvariable ["twc_groupcountry", "baf"];
	(group player) setvariable ["twc_groupcountry", "cag", true];
	
	_iscag = missionnamespace getvariable ["twc_iscagactive", 0];
	missionnamespace setvariable ["twc_iscagactive", _iscag + 1, true];
	

	{[_x] remoteexec ["twc_loadout_snipergroup_cag_switch", _x]} foreach (units group player);
};


twc_loadout_insurgentdetain = {

	player setpos [0,0,1000];
	player setdamage 1;
};


twc_loadout_insurgentswitch = {

	params ["_type"];
	
	_players = count allplayers;
	
	_arr = missionnamespace getvariable ["twc_enemyplayerroles", []];
	if ((!([player] call TWC_Core_fnc_ismanagement)) && (((_players < 13) || (((count _arr) > 3) && (_players < 23))) && (!isserver))) exitwith {hint "there aren't enough players online to support you as an enemy, or there are too many enemies active already";
	};
	if (!(["blank", typeof player] call BIS_fnc_inString)) exitwith {
		hint "You can't switch to enemy if you're not using a blank unit first";
	};
	
	if (isnil "twc_enemyplayerspawnpos") then {
		[] spawn twc_fnc_enemyspawnpos;
	} else {
		if ([twc_enemyplayerspawnpos, 1800] call twc_fnc_isnearblufor) then {
			[] spawn twc_fnc_enemyspawnpos;
		};
	};
	
	
	
	
	if (_type in _arr) exitwith { hint "someone's already taken that role, try another"};
	
	
	_pos = missionnamespace getvariable ["twc_enemyplayerspawnpos", []];
	
	if (count _pos == 0) exitwith {hint "the system hasn't found somewhere for you to spawn, which means the system is either broken or the mission is still booting";};
	
	
	_group = missionnamespace getvariable ["twc_enemygroup", (group player)];
	if (_group == (group player)) then {
		_group = creategroup east;
	};
	
	if (_type == "rifleman") then {
		[player] call twc_loadout_insurgent_rifleman;
	};
	if (_type == "grenadier") then {
		[player] call twc_loadout_insurgent_grenadier;
	};
	if (_type == "sniper") then {
		[player] call twc_loadout_insurgent_sniper;
	};
	if (_type == "mg") then {
		[player] call twc_loadout_insurgent_MG;
	};
	if (_type == "rpg") then {
		[player] call twc_loadout_insurgent_RPG;
	};
	if (_type == "medic") then {
		[player] call twc_loadout_insurgent_medic;
	};
	[_group] spawn {
		params ["_group"];
		player setpos [0,0,1000];
		player allowdamage false;
		[player] joinsilent _group;
		waituntil {(side player) == east};
		sleep 0.5;
		player setpos twc_enemyplayerspawnpos;
		sleep 3;
		player allowdamage true;
		((player) setVariable ["twc_isenemy",1, true])
	};
	_location = "Unnamed Village";
	_location = text ((nearestLocations [getpos player, ["NameVillage","NameCity","NameCityCapital","nameLocal"], 1500]) select 0); 
	_t0 = floor (twc_enemyplayerspawnpos select 0);
	_t1 = floor (twc_enemyplayerspawnpos select 1);
	hint format ["You've spawned in %3 at grid 0%1 0%2. You can spawn a car from the self interact menu if there are no coalition forces within 2km of you.", _t0, _t1, _location];
	["pa"] call acre_api_fnc_babelSetSpokenLanguages;
	twc_ehamy = 18;
	if ((player getvariable ["twc_hasenemyeh", 0]) == 0) then {
		player addEventHandler ["FiredMan", {_mult = 0.7; _xvar = 26; if ((vehicle player) != player) then {_mult = 0.8; _xvar = 18}; if ((_this select 1) == (secondaryweapon player)) then {_mult = 1; _xvar = 12}; _bullet = _this select 6; _bullet setvelocity [(velocity _bullet select 0) + (((random _xvar) - (_xvar / 2)) * _mult), (velocity _bullet select 1) + (((random _xvar) - (_xvar / 2)) * _mult), 	(velocity _bullet select 2) + (((random twc_ehamy) - (twc_ehamy / 2)) * _mult)];}];
		player setvariable ["twc_hasenemyeh", 1];
		
		_vehaction1 = ["enemy_Interact","TWC","",{},{true}] call ace_interact_menu_fnc_createAction;
		[player, 1, ["ACE_SelfActions"], _vehaction1] call ace_interact_menu_fnc_addActionToObject;

		_action2 = ["Zeus","Heal Self","",{_me = player;["twc_medical_evh_fullHeal", [_me], _me] call CBA_fnc_targetEvent;},{(!([getpos player, 2000] call twc_fnc_isnearblufor)) && ((player distance twc_basepos) > 2000)}] call ace_interact_menu_fnc_createAction;
		[player, 1, ["ACE_SelfActions", "enemy_Interact"], _action2] call ace_interact_menu_fnc_addActionToObject;
		
		_action3 = ["enemymenu","Change Loadout","",{},{(!([getpos player, 2000] call twc_fnc_isnearblufor)) && ((player distance twc_basepos) > 2000)}] call ace_interact_menu_fnc_createAction;
		[player, 1, ["ACE_SelfActions", "enemy_Interact"], _action3] call ace_interact_menu_fnc_addActionToObject;
		
		_boxaction = ["enemymenurif","Rifleman","",{[player] call twc_loadout_insurgent_rifleman;},{true}] call ace_interact_menu_fnc_createAction;
		[player, 1, ["ACE_SelfActions", "enemy_Interact", "enemymenu"], _boxaction] call ace_interact_menu_fnc_addActionToObject;

		_boxaction = ["enemymenurif","MG","",{[player] call twc_loadout_insurgent_MG;
		},{true}] call ace_interact_menu_fnc_createAction;
		[player, 1, ["ACE_SelfActions", "enemy_Interact", "enemymenu"], _boxaction] call ace_interact_menu_fnc_addActionToObject;

		_boxaction = ["enemymenurif","Grenadier","",{[player] call twc_loadout_insurgent_grenadier;
		},{true}] call ace_interact_menu_fnc_createAction;
		[player, 1, ["ACE_SelfActions", "enemy_Interact", "enemymenu"], _boxaction] call ace_interact_menu_fnc_addActionToObject;

		_boxaction = ["enemymenurif","RPG Gunner","",{[player] call twc_loadout_insurgent_RPG;
		},{true}] call ace_interact_menu_fnc_createAction;
		[player, 1, ["ACE_SelfActions", "enemy_Interact", "enemymenu"], _boxaction] call ace_interact_menu_fnc_addActionToObject;

		_boxaction = ["enemymenurif","Sniper","",{[player] call twc_loadout_insurgent_sniper;
		},{true}] call ace_interact_menu_fnc_createAction;
		[player, 1, ["ACE_SelfActions", "enemy_Interact", "enemymenu"], _boxaction] call ace_interact_menu_fnc_addActionToObject;

		_boxaction = ["enemymenurif","Medic","",{[player] call twc_loadout_insurgent_medic;
		},{true}] call ace_interact_menu_fnc_createAction;
		[player, 1, ["ACE_SelfActions", "enemy_Interact", "enemymenu"], _boxaction] call ace_interact_menu_fnc_addActionToObject;

		_boxaction = ["enemymenurif","Heavy Gunner","",{[player] call twc_loadout_insurgent_heavygunner;
		},{(totalpoints > (pointlimit * 0.3))}] call ace_interact_menu_fnc_createAction;
		[player, 1, ["ACE_SelfActions", "enemy_Interact", "enemymenu"], _boxaction] call ace_interact_menu_fnc_addActionToObject;

		_boxaction = ["enemymenurif","Heavy Sniper","",{[player] call twc_loadout_insurgent_heavysniper;
		},{(totalpoints > (pointlimit * 0.8))}] call ace_interact_menu_fnc_createAction;
		[player, 1, ["ACE_SelfActions", "enemy_Interact", "enemymenu"], _boxaction] call ace_interact_menu_fnc_addActionToObject;
	
		twc_fn_getcivcar = ["getcivcar","Spawn Car","",{execvm "insurgency_core\client\sys_player\vehicles\civcar.sqf"},{(!([getpos player, 2000] call twc_fnc_isnearblufor)) && ((player distance twc_basepos) > 2000)}] call ace_interact_menu_fnc_createAction;
		[player, 1, ["ACE_SelfActions", "enemy_Interact"], twc_fn_getcivcar] call ace_interact_menu_fnc_addActionToObject;
	
		twc_fn_getcivcar = ["getcivcar","Find Enemy","",{call twc_fnc_findnearestblufor},{(!([getpos player, 500] call twc_fnc_isnearblufor)) && ((player distance twc_basepos) > 2000) && (call twc_fnc_checkenemyradio)}] call ace_interact_menu_fnc_createAction;
		[player, 1, ["ACE_SelfActions", "enemy_Interact"], twc_fn_getcivcar] call ace_interact_menu_fnc_addActionToObject;
		
		for "_i" from 1 to 3 do {
			_color = "ColorOrange";
			_object = InsP_cacheGroup call BIS_fnc_selectRandom;
			_distance = [50,75,100,150,25] call BIS_fnc_selectRandom;
			_intelPos = [_object, _distance] call CBA_fnc_randPos;
			_marker = createMarkerlocal [format["%1%2", _object, (str _intelPos)], _intelPos];
			_marker setMarkerTypelocal "hd_join";
			_marker setMarkerColorlocal _color;
			_marker setMarkerTextlocal (str(_distance) + "m");
			_marker setMarkerSizelocal [0.5,0.5];
			switch (_object) do {
				case (cacheBoxA): {cacheAMarkers pushBack _marker; publicVariable "cacheAMarkers"};
				case (cacheBoxB): {cacheBMarkers pushBack _marker; publicVariable "cacheBMarkers"};
				case (cacheBoxC): {cacheCMarkers pushBack _marker; publicVariable "cacheCMarkers"};
				default {hint "Something went wrong";};
			};
		};
		
		//players seem to be turning blufor when handcuffed and released
		["ace_captiveStatusChanged",  {
			params ["_unit"]; 
			if (_unit != player) exitwith {};
			_group = creategroup east;
			_unit joinsilent _group;
		}] call CBA_fnc_addEventHandler; 
		
		player addEventHandler ["Killed", {
			params ["_unit", "_killer", "_instigator", "_useEffects"];
	
			if (isnil "twc_enemyplayerspawnpos") then {
				[] spawn twc_fnc_enemyspawnpos;
			} else {
				if (([twc_enemyplayerspawnpos, 1800] call twc_fnc_isnearblufor) || (!([twc_enemyplayerspawnpos, 2500] call twc_fnc_isnearblufor)) || ((((twc_enemyplayerspawnpos) distance getmarkerpos "respawn_west_forwardBase") < 2000))) then {
					[] spawn twc_fnc_enemyspawnpos;
				};
			};
		}];
	};
};

twc_removeoldenemyrole = {
	params ["_prev"];
	sleep 300;
	_a1 = missionnamespace getvariable ["twc_enemyplayerroles", []];
	_a1 deleteat (_a1 find _prev);
	missionnamespace setvariable ["twc_enemyplayerroles", _a1, true];
};

#include "insurgents.sqf";
#include "sniper.sqf";
#include "pilots.sqf";
#include "fst.sqf";
#include "sf.sqf";