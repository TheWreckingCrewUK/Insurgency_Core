if (isnil "twc_primaryrestrict_active") then {
twc_primaryrestrict_active = 0};

if (twc_primaryrestrict_active == 1) exitwith {};

twc_primaryrestrict_active = 1;

player addEventHandler ["Fired", {
		if ((currentWeapon player in twc_restrictedPrimaryWeapons) && ((side player) != east)) then {
			if ((random 1>0.97) && ((side player != east))) then {
			[player, currentWeapon player] call ace_overheating_fnc_jamWeapon;	
			};	
		};
}];
