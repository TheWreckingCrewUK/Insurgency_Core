params["_removeQuestioning"];
_randNumber = floor(random 2);
//evilciv removed until I get remoteexec on the evilciv code, because addweapon isn't global
if (random 1>10.9) exitwith {
[5, [_randNumber, _removeQuestioning], {}, {}, "Questioning civilian..."] call ace_common_fnc_progressBar
;[_this select 0] execvm "Insurgency_Core\server\sys_civ\evilCiv.sqf";};
[5, [_randNumber, _removeQuestioning], {[_this select 0] spawn InsP_fnc_possibleIntel;}, {}, "Questioning civilian..."] call ace_common_fnc_progressBar;

