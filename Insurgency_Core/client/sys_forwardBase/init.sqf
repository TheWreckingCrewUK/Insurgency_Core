twc_fnc_spawnForwardBaseItems = compile preProcessFileLineNumbers"Insurgency_Core\client\sys_forwardBase\fnc_spawnForwardBaseItems.sqf";

_action = ["SpawnForwardBase","Spawn PB Gear","",{[_player] call twc_fnc_spawnForwardBaseItems;_return},{leader _player == _player}] call ace_interact_menu_fnc_createAction;

["Land_InfoStand_V2_F",0,["ACE_MainActions"],_action,true] call ace_interact_menu_fnc_addActionToClass;