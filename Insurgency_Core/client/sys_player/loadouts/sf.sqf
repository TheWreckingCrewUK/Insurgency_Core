

twc_loadout_ana_sl = [
	//uniform
	(["rhsgref_uniform_woodland", "rhs_uniform_g3_m81"] call bis_fnc_selectrandom),

	//uniformitems
	([["ACRE_PRC152", 1], ["ACRE_PRC148", 1], ["ACE_MapTools", 1]] + twc_loadout_basicuniformitems),

	//helmet

	"CUP_H_USArmy_Helmet_ECH1_Black",

	//vest
	(["rhsusf_mbav_rifleman", "V_PlateCarrier1_blk", "V_PlateCarrier1_rgr"] call bis_fnc_selectrandom),

	//vestitems

	[["rhsusf_mag_15Rnd_9x19_FMJ", 2], ["HandGrenade", 2], ["SmokeShell", 1], ["rhs_mag_30Rnd_556x45_M855A1_Stanag", 11]],

	//backpack
	"",

	//backpackitems

	[],

	//night kit
	["rhs_uniform_g3_m81", "rhsusf_ANPVS_14", [["ACE_Flashlight_KSF1", 1], ["ACE_Chemlight_IR", 3], ["Chemlight_red", 3]]],

	//weapons

	[[(["twc_rhs_weap_m4a1_acog_lazer"] call bis_fnc_selectrandom), []], ["rhsusf_weap_m9", []], ["ACE_Yardage450", []]],

	//linkeditems

	(["itemcTab"] + twc_loadout_basiclinkeditems),
	
	//weapons to remove from crate, weapons to add
	
	[["all"], ([["twc_m4_cco_vfg", 1]] + twc_crateweapons)],
	
	//mags to remove from crate, mags to add
	
	[["all"], ([["rhs_mag_30Rnd_556x45_M855A1_Stanag", 50], ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red", 10], ["rhsusf_mag_15Rnd_9x19_FMJ", 10]] + twc_cratemagazines)],
	
	//items to remove from crate, mags to add
	
	[["UK3CB_BAF_Kite"], ([["DemoCharge_Remote_Mag", 3], ["ACE_M26_Clacker", 1]])],
	
	//backpacks to remove from crate, backpacks to add
	
	[["all"], [["CUP_B_Bergen_BAF", 2]]]

];

twc_loadout_ana_2ic = [
	//uniform
	(["rhsgref_uniform_woodland", "rhs_uniform_g3_m81"] call bis_fnc_selectrandom),

	//uniformitems
	([["ACRE_PRC152", 1], ["ACE_MapTools", 1]] + twc_loadout_basicuniformitems),

	//helmet

	"CUP_H_USArmy_Helmet_ECH1_Black",

	//vest
	"CUP_V_B_Ciras_Olive",

	//vestitems

	[["rhsusf_mag_15Rnd_9x19_FMJ", 2], ["rhs_mag_30Rnd_556x45_M855A1_Stanag", 7], ["HandGrenade", 1], ["SmokeShell", 1], ["rhs_mag_30Rnd_556x45_M855A1_Stanag", 11]],

	//backpack
	"twc_genbackPack_oli",

	//backpackitems

	[["rhs_mag_30Rnd_556x45_M855A1_Stanag", 14], ["ACE_EntrenchingTool", 1], ["DemoCharge_Remote_Mag", 1], ["ACE_M26_Clacker", 1]],

	//night kit
	["rhs_uniform_g3_m81", "rhsusf_ANPVS_14", [["ACE_Flashlight_KSF1", 1], ["ACE_Chemlight_IR", 3], ["Chemlight_red", 3]]],

	//weapons

	[[(["twc_rhs_weap_m4a1_acog_lazer"] call bis_fnc_selectrandom), []], ["rhsusf_weap_m9", []], ["ACE_Yardage450", []]],

	//linkeditems

	([""] + twc_loadout_basiclinkeditems),
	
	//weapons to remove from crate, weapons to add
	
	[["all"], ([["twc_m4_cco_vfg", 1]] + twc_crateweapons)],
	
	//mags to remove from crate, mags to add
	
	[["all"], ([["rhs_mag_30Rnd_556x45_M855A1_Stanag", 50], ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red", 10]] + twc_cratemagazines)],
	
	//items to remove from crate, mags to add
	
	[["UK3CB_BAF_Kite"], ([["ACE_SpraypaintGreen", 1]])],
	
	//backpacks to remove from crate, backpacks to add
	
	[["all"], [["UK3CB_BAF_B_Carryall_OLI", 2]]]

];


twc_loadout_ana_pointman = [
	//uniform
	(["rhsgref_uniform_woodland", "rhs_uniform_g3_m81"] call bis_fnc_selectrandom),

	//uniformitems
	([["ACRE_PRC152", 1]] + twc_loadout_basicuniformitems),

	//helmet

	"CUP_H_USArmy_Helmet_ECH1_Black",

	//vest
	(["rhsusf_mbav_rifleman", "V_PlateCarrier1_blk", "V_PlateCarrier1_rgr"] call bis_fnc_selectrandom),

	//vestitems

	[["rhsusf_mag_15Rnd_9x19_FMJ", 3], ["rhs_mag_30Rnd_556x45_M855A1_Stanag", 8], ["rhs_grenade_mkiiia1_mag", 2], ["SmokeShell", 1], ["rhs_mag_30Rnd_556x45_M855A1_Stanag", 11]],

	//backpack
	"",

	//backpackitems

	[],

	//night kit
	["rhs_uniform_g3_m81", "rhsusf_ANPVS_14", [["ACE_Flashlight_KSF1", 1], ["ACE_Chemlight_IR", 3], ["Chemlight_red", 3]]],

	//weapons

	[[(["twc_rhs_weap_m4a1_acog_lazer"] call bis_fnc_selectrandom), []], ["rhsusf_weap_m9", []]],

	//linkeditems

	([""] + twc_loadout_basiclinkeditems),
	
	//weapons to remove from crate, weapons to add
	
	[["all"], ([["twc_m4_cco_vfg", 1]] + twc_crateweapons)],
	
	//mags to remove from crate, mags to add
	
	[["all"], ([["rhs_mag_30Rnd_556x45_M855A1_Stanag", 50], ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red", 10], ["rhsusf_mag_15Rnd_9x19_FMJ", 10]] + twc_cratemagazines)],
	
	//items to remove from crate, mags to add
	
	[["UK3CB_BAF_Kite"], ([["ACE_SpraypaintGreen", 1]])],
	
	//backpacks to remove from crate, backpacks to add
	
	[["all"], [["B_TacticalPack_blk", 2]]]

];



twc_loadout_ana_rifleman = [
	//uniform
	(["rhsgref_uniform_woodland", "rhs_uniform_g3_m81"] call bis_fnc_selectrandom),

	//uniformitems
	([["ACRE_PRC152", 1]] + twc_loadout_basicuniformitems),

	//helmet

	"CUP_H_USArmy_Helmet_ECH1_Black",

	//vest
	(["rhsusf_mbav_rifleman", "V_PlateCarrier1_blk", "V_PlateCarrier1_rgr"] call bis_fnc_selectrandom),

	//vestitems

	[["rhsusf_mag_15Rnd_9x19_FMJ", 2], ["rhs_mag_30Rnd_556x45_M855A1_Stanag", 8], ["HandGrenade", 2], ["SmokeShell", 1], ["rhs_mag_30Rnd_556x45_M855A1_Stanag", 11]],

	//backpack
	"",

	//backpackitems

	[],

	//night kit
	["rhs_uniform_g3_m81", "rhsusf_ANPVS_14", [["ACE_Flashlight_KSF1", 1], ["ACE_Chemlight_IR", 3], ["Chemlight_red", 3]]],

	//weapons

	[[(["twc_rhs_weap_m4a1_acog_lazer"] call bis_fnc_selectrandom), []], ["rhsusf_weap_m9", []]],

	//linkeditems

	([""] + twc_loadout_basiclinkeditems),
	
	//weapons to remove from crate, weapons to add
	
	[["all"], ([["twc_m4_eotech_vfg_laser", 1]] + twc_crateweapons)],
	
	//mags to remove from crate, mags to add
	
	[["all"], ([["rhs_mag_30Rnd_556x45_M855A1_Stanag", 50], ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red", 10], ["rhsusf_mag_15Rnd_9x19_FMJ", 10]] + twc_cratemagazines)],
	
	//items to remove from crate, mags to add
	
	[["UK3CB_BAF_Kite"], ([["ACE_SpraypaintGreen", 1]])],
	
	//backpacks to remove from crate, backpacks to add
	
	[["all"], [["B_TacticalPack_blk", 2]]]

];



twc_loadout_ana_grenadier = [
	//uniform
	(["rhsgref_uniform_woodland", "rhs_uniform_g3_m81"] call bis_fnc_selectrandom),

	//uniformitems
	([["ACRE_PRC152", 1]] + twc_loadout_basicuniformitems),

	//helmet

	"CUP_H_USArmy_Helmet_ECH1_Black",

	//vest
	(["CUP_V_B_Ciras_Olive"] call bis_fnc_selectrandom),

	//vestitems

	[["rhs_mag_30Rnd_556x45_M855A1_Stanag", 8], ["1Rnd_HE_Grenade_shell", 20], ["HandGrenade", 1], ["SmokeShell", 1], ["1Rnd_SmokeRed_Grenade_shell", 5], ["rhs_mag_30Rnd_556x45_M855A1_Stanag", 11]],

	//backpack
	"",

	//backpackitems

	[],

	//night kit
	["rhs_uniform_g3_m81", "rhsusf_ANPVS_14", [["ACE_Flashlight_KSF1", 1], ["ACE_Chemlight_IR", 3], ["Chemlight_red", 3]]],

	//weapons

	[[(["twc_m4_203_acog_lazer"] call bis_fnc_selectrandom), []], ["rhsusf_weap_m9", []]],

	//linkeditems

	([""] + twc_loadout_basiclinkeditems),
	
	//weapons to remove from crate, weapons to add
	
	[["all"], ([["twc_m4_203_cco", 1]] + twc_crateweapons)],
	
	//mags to remove from crate, mags to add
	
	[["all"], ([["rhs_mag_30Rnd_556x45_M855A1_Stanag", 50], ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red", 10], ["rhsusf_mag_15Rnd_9x19_FMJ", 10], ["1Rnd_HE_Grenade_shell", 50]] + twc_cratemagazines)],
	
	//items to remove from crate, mags to add
	
	[["UK3CB_BAF_Kite"], ([["ACE_SpraypaintGreen", 1]])],
	
	//backpacks to remove from crate, backpacks to add
	
	[["all"], [["B_TacticalPack_blk", 2]]]

];



twc_loadout_ana_marksman = [
	//uniform
	(["rhsgref_uniform_woodland", "rhs_uniform_g3_m81"] call bis_fnc_selectrandom),

	//uniformitems
	([["ACRE_PRC152", 1]] + twc_loadout_basicuniformitems),

	//helmet

	"CUP_H_USArmy_Helmet_ECH1_Black",

	//vest
	(["rhsusf_mbav_rifleman", "V_PlateCarrier1_blk", "V_PlateCarrier1_rgr"] call bis_fnc_selectrandom),

	//vestitems

	[["HandGrenade", 1], ["SmokeShell", 1], ["rhsusf_mag_15Rnd_9x19_FMJ", 2], ["rhs_mag_30Rnd_556x45_Mk262_Stanag", 15]],

	//backpack
	"",

	//backpackitems

	[],

	//night kit
	["rhs_uniform_g3_m81", "rhsusf_ANPVS_14", [["ACE_Flashlight_KSF1", 1], ["ACE_Chemlight_IR", 3], ["Chemlight_red", 3]]],

	//weapons

	[[("twc_m16_dmr"), []], ["rhsusf_weap_m9", []]],

	//linkeditems

	([""] + twc_loadout_basiclinkeditems),
	
	//weapons to remove from crate, weapons to add
	
	[["all"], ([["twc_m249_para_acog", 1]] + twc_crateweapons)],
	
	//mags to remove from crate, mags to add
	
	[["all"], ([["rhs_mag_30Rnd_556x45_Mk262_Stanag", 50], ["rhsusf_100Rnd_556x45_mixed_soft_pouch", 10], ["rhsusf_mag_15Rnd_9x19_FMJ", 10]] + twc_cratemagazines)],
	
	//items to remove from crate, mags to add
	
	[["UK3CB_BAF_Kite"], ([["ACE_SpraypaintGreen", 1]])],
	
	//backpacks to remove from crate, backpacks to add
	
	[["all"], [["B_TacticalPack_blk", 2]]]

];


twc_loadout_ana_medic = [
	//uniform
	(["rhsgref_uniform_woodland"] call bis_fnc_selectrandom),

	//uniformitems
	([["ACRE_PRC152", 1]] + twc_loadout_basicuniformitems),

	//helmet

	"CUP_H_USArmy_Helmet_ECH1_Black",

	//vest
	(["rhsusf_mbav_rifleman", "V_PlateCarrier1_blk", "V_PlateCarrier1_rgr"] call bis_fnc_selectrandom),

	//vestitems

	[["TWC_Item_Medical_SutureKit_20", 1], ["ACE_tourniquet", 3], ["rhsusf_mag_15Rnd_9x19_FMJ", 3], ["rhs_mag_30Rnd_556x45_M855A1_Stanag", 15]],

	//backpack
	"UK3CB_BAF_B_Kitbag_OLI",

	//backpackitems

	[["ACE_fieldDressing", 25], ["ACE_packingBandage", 25], ["ACE_elasticBandage", 25], ["ACE_quikclot", 25], ["ACE_salineIV_500", 15], ["ACE_salineIV_250", 10], ["ACE_epinephrine", 10], ["ACE_morphine", 10]],

	//night kit
	["rhs_uniform_g3_m81", "rhsusf_ANPVS_14", [["ACE_Flashlight_KSF1", 1], ["ACE_Chemlight_IR", 3], ["Chemlight_red", 3]]],

	//weapons

	[[(["twc_rhs_weap_m4a1_acog_lazer"] call bis_fnc_selectrandom), []], ["rhsusf_weap_m9", []]],

	//linkeditems

	([""] + twc_loadout_basiclinkeditems),
	
	//weapons to remove from crate, weapons to add
	
	[["all"], ([["twc_m4_cco_vfg", 1]] + twc_crateweapons)],
	
	//mags to remove from crate, mags to add
	
	[["all"], ([["rhs_mag_30Rnd_556x45_M855A1_Stanag", 50], ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red", 10], ["rhsusf_mag_15Rnd_9x19_FMJ", 10], ["rhsusf_mag_40Rnd_46x30_FMJ", 50]] + twc_cratemagazines)],
	
	//items to remove from crate, mags to add
	
	[["UK3CB_BAF_Kite"], ([["ACE_SpraypaintGreen", 1]] + twc_loadout_basicmedicitems)],
	
	//backpacks to remove from crate, backpacks to add
	
	[["all"], [["B_TacticalPack_blk", 2]]]

];


twc_loadout_st6_sl = [
	//uniform
	(["rhs_uniform_FROG01_d", "rhs_uniform_FROG01_d", "rhs_uniform_g3_mc"] call bis_fnc_selectrandom),

	//uniformitems
	([["ACRE_PRC152", 1], ["ACRE_PRC148", 1], ["ACE_MapTools", 1]] + twc_loadout_basicuniformitems),

	//helmet

	"rhsusf_opscore_aor1_pelt_nsw",

	//vest
	(["twc_aor1_spc_squadleader", "twc_oli_spc_squadleader", "twc_mtp_spc_squadleader", "rhsusf_plateframe_teamleader", "twc_rhsusf_plateframe_SL_aor1", "CUP_V_B_Ciras_Khaki", "CUP_V_B_Ciras_MCam", "CUP_V_B_Ciras_Olive", "CUP_V_B_JPC_MCam", "CUP_V_B_JPC_Tan"] call bis_fnc_selectrandom),

	//vestitems

	[["rhsusf_mag_40Rnd_46x30_FMJ", 2], ["rhs_mag_30Rnd_556x45_M855A1_Stanag", 7], ["HandGrenade", 2], ["SmokeShell", 1]],

	//backpack
	"rhsusf_falconii_breach",

	//backpackitems

	[["rhs_mag_30Rnd_556x45_M855A1_Stanag", 5]],

	//night kit
	["rhs_uniform_g3_blk", "CUP_NVG_GPNVG_black", [["ACE_Flashlight_KSF1", 1], ["ACE_Chemlight_IR", 3], ["Chemlight_red", 3]]],

	//weapons

	[[(["twc_hk416_mag_desert", "twc_hk416_mag", "twc_hk416_mag_desert"] call bis_fnc_selectrandom), []], ["twc_hgun_MP7A1", []], ["ACE_Vector", []]],

	//linkeditems

	(["itemcTab"] + twc_loadout_basiclinkeditems),
	
	//weapons to remove from crate, weapons to add
	
	[["all"], ([["rhsusf_weap_MP7A2_desert", 1]] + twc_crateweapons)],
	
	//mags to remove from crate, mags to add
	
	[["all"], ([["rhs_mag_30Rnd_556x45_M855A1_Stanag", 50], ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red", 10], ["rhsusf_mag_40Rnd_46x30_FMJ", 50]] + twc_cratemagazines)],
	
	//items to remove from crate, mags to add
	
	[["UK3CB_BAF_Kite"], ([["DemoCharge_Remote_Mag", 3], ["ACE_M26_Clacker", 1]])],
	
	//backpacks to remove from crate, backpacks to add
	
	[["all"], [["B_Kitbag_tan", 2]]]

];

twc_loadout_st6_2ic = [
	//uniform
	(["rhs_uniform_FROG01_d", "rhs_uniform_FROG01_d", "rhs_uniform_g3_mc"] call bis_fnc_selectrandom),

	//uniformitems
	([["ACRE_PRC152", 1], ["ACE_MapTools", 1]] + twc_loadout_basicuniformitems),

	//helmet

	"rhsusf_opscore_aor1_pelt_nsw",

	//vest
	"twc_rhsusf_plateframe_rifleman_aor1",

	//vestitems

	[["rhsusf_mag_17Rnd_9x19_JHP", 2], ["rhs_mag_30Rnd_556x45_M855A1_Stanag", 7], ["HandGrenade", 1], ["SmokeShell", 1]],

	//backpack
	"twc_genbackPack_tan",

	//backpackitems

	[["rhs_mag_30Rnd_556x45_M855A1_Stanag", 14], ["ACE_EntrenchingTool", 1], ["DemoCharge_Remote_Mag", 1], ["ACE_M26_Clacker", 1]],

	//night kit
	["rhs_uniform_g3_blk", "CUP_NVG_GPNVG_black", [["ACE_Flashlight_KSF1", 1], ["ACE_Chemlight_IR", 3], ["Chemlight_red", 3]]],

	//weapons

	[[(["twc_hk416_mag_desert", "twc_hk416_mag", "twc_hk416_mag_desert"] call bis_fnc_selectrandom), []], ["rhsusf_weap_glock17g4", ["cup_acc_cz_m3x"]], ["ACE_MX2A", []]],

	//linkeditems

	([""] + twc_loadout_basiclinkeditems),
	
	//weapons to remove from crate, weapons to add
	
	[["all"], ([["rhsusf_weap_MP7A2_desert", 1]] + twc_crateweapons)],
	
	//mags to remove from crate, mags to add
	
	[["all"], ([["rhs_mag_30Rnd_556x45_M855A1_Stanag", 50], ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red", 10], ["rhsusf_mag_40Rnd_46x30_FMJ", 50]] + twc_cratemagazines)],
	
	//items to remove from crate, mags to add
	
	[["UK3CB_BAF_Kite"], ([["ACE_SpraypaintGreen", 1]])],
	
	//backpacks to remove from crate, backpacks to add
	
	[["all"], [["TWC_BAF_B_Bergen_OLI_Rifleman_XL_A", 2]]]

];


twc_loadout_st6_pointman = [
	//uniform
	(["rhs_uniform_FROG01_d", "rhs_uniform_FROG01_d", "rhs_uniform_g3_mc"] call bis_fnc_selectrandom),

	//uniformitems
	([["ACRE_PRC152", 1]] + twc_loadout_basicuniformitems),

	//helmet

	"rhsusf_opscore_aor1_pelt_nsw",

	//vest
	(["twc_rhsusf_plateframe_pointman_aor1", "twc_rhsusf_plateframe_rifleman_aor1"] call bis_fnc_selectrandom),

	//vestitems

	[["rhsusf_mag_40Rnd_46x30_FMJ", 3], ["rhs_mag_30Rnd_556x45_M855A1_Stanag", 8], ["HandGrenade", 2], ["SmokeShell", 1]],

	//backpack
	"twc_scoutpack_tan",

	//backpackitems

	[["rhs_mag_30Rnd_556x45_M855A1_Stanag", 3], ["ACE_M84", 2]],

	//night kit
	["rhs_uniform_g3_blk", "CUP_NVG_GPNVG_black", [["ACE_Flashlight_KSF1", 1], ["ACE_Chemlight_IR", 3], ["Chemlight_red", 3]]],

	//weapons

	[[(["twc_hk416_mag_desert", "twc_hk416_mag", "twc_hk416_mag_desert"] call bis_fnc_selectrandom), []], ["twc_hgun_MP7A1", []]],

	//linkeditems

	([""] + twc_loadout_basiclinkeditems),
	
	//weapons to remove from crate, weapons to add
	
	[["all"], ([["rhsusf_weap_MP7A2_desert", 1], ["rhsusf_weap_glock17g4", 1]] + twc_crateweapons)],
	
	//mags to remove from crate, mags to add
	
	[["all"], ([["rhs_mag_30Rnd_556x45_M855A1_Stanag", 50], ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red", 10], ["rhsusf_mag_17Rnd_9x19_JHP", 10], ["rhsusf_mag_40Rnd_46x30_FMJ", 50]] + twc_cratemagazines)],
	
	//items to remove from crate, mags to add
	
	[["UK3CB_BAF_Kite"], ([["ACE_SpraypaintGreen", 1]])],
	
	//backpacks to remove from crate, backpacks to add
	
	[["all"], [["B_TacticalPack_blk", 2]]]

];



twc_loadout_st6_rifleman = [
	//uniform
	(["rhs_uniform_FROG01_d", "rhs_uniform_FROG01_d", "rhs_uniform_g3_mc"] call bis_fnc_selectrandom),

	//uniformitems
	([["ACRE_PRC152", 1]] + twc_loadout_basicuniformitems),

	//helmet

	"rhsusf_opscore_aor1_pelt_nsw",

	//vest
	(["twc_rhsusf_plateframe_pointman_aor1", "twc_rhsusf_plateframe_rifleman_aor1"] call bis_fnc_selectrandom),

	//vestitems

	[["rhsusf_mag_17Rnd_9x19_JHP", 2], ["rhs_mag_30Rnd_556x45_M855A1_Stanag", 8], ["HandGrenade", 2], ["SmokeShell", 1]],

	//backpack
	"twc_scoutpack_tan",

	//backpackitems

	[["rhs_mag_30Rnd_556x45_M855A1_Stanag", 3], ["ACE_M84", 2]],

	//night kit
	["rhs_uniform_g3_blk", "CUP_NVG_GPNVG_black", [["ACE_Flashlight_KSF1", 1], ["ACE_Chemlight_IR", 3], ["Chemlight_red", 3]]],

	//weapons

	[[(["twc_hk416_mag_desert", "twc_hk416_mag", "twc_hk416_mag_desert"] call bis_fnc_selectrandom), []], ["rhsusf_weap_glock17g4", []]],

	//linkeditems

	([""] + twc_loadout_basiclinkeditems),
	
	//weapons to remove from crate, weapons to add
	
	[["all"], ([["rhsusf_weap_MP7A2_desert", 1], ["rhsusf_weap_glock17g4", 1]] + twc_crateweapons)],
	
	//mags to remove from crate, mags to add
	
	[["all"], ([["rhs_mag_30Rnd_556x45_M855A1_Stanag", 50], ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red", 10], ["rhsusf_mag_17Rnd_9x19_JHP", 10], ["rhsusf_mag_40Rnd_46x30_FMJ", 50]] + twc_cratemagazines)],
	
	//items to remove from crate, mags to add
	
	[["UK3CB_BAF_Kite"], ([["ACE_SpraypaintGreen", 1]])],
	
	//backpacks to remove from crate, backpacks to add
	
	[["all"], [["B_TacticalPack_blk", 2]]]

];



twc_loadout_st6_grenadier = [
	//uniform
	(["rhs_uniform_FROG01_d", "rhs_uniform_FROG01_d", "rhs_uniform_g3_mc"] call bis_fnc_selectrandom),

	//uniformitems
	([["ACRE_PRC152", 1]] + twc_loadout_basicuniformitems),

	//helmet

	"rhsusf_opscore_aor1_pelt_nsw",

	//vest
	(["twc_rhsusf_plateframe_grenadier_mtp"] call bis_fnc_selectrandom),

	//vestitems

	[["rhs_mag_30Rnd_556x45_M855A1_Stanag", 8], ["1Rnd_HE_Grenade_shell", 15], ["HandGrenade", 1], ["SmokeShell", 1]],

	//backpack
	"twc_ussf_scoutpack",

	//backpackitems

	[["CUP_1Rnd_Smoke_M203", 5], ["rhs_mag_30Rnd_556x45_M855A1_Stanag", 3]],

	//night kit
	["rhs_uniform_g3_blk", "CUP_NVG_GPNVG_black", [["ACE_Flashlight_KSF1", 1], ["ACE_Chemlight_IR", 3], ["Chemlight_red", 3]]],

	//weapons

	[[(["twc_hk416_mag_desert", "twc_hk416_mag", "twc_hk416_mag_desert"] call bis_fnc_selectrandom), []], ["rhs_weap_M320", []]],

	//linkeditems

	([""] + twc_loadout_basiclinkeditems),
	
	//weapons to remove from crate, weapons to add
	
	[["all"], ([["rhsusf_weap_MP7A2_desert", 1], ["rhsusf_weap_glock17g4", 1]] + twc_crateweapons)],
	
	//mags to remove from crate, mags to add
	
	[["all"], ([["rhs_mag_30Rnd_556x45_M855A1_Stanag", 50], ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red", 10], ["rhsusf_mag_17Rnd_9x19_JHP", 10], ["rhsusf_mag_40Rnd_46x30_FMJ", 50], ["1Rnd_HE_Grenade_shell", 50]] + twc_cratemagazines)],
	
	//items to remove from crate, mags to add
	
	[["UK3CB_BAF_Kite"], ([["ACE_SpraypaintGreen", 1]])],
	
	//backpacks to remove from crate, backpacks to add
	
	[["all"], [["B_TacticalPack_blk", 2]]]

];



twc_loadout_st6_marksman = [
	//uniform
	(["rhs_uniform_FROG01_d", "rhs_uniform_FROG01_d", "rhs_uniform_g3_mc"] call bis_fnc_selectrandom),

	//uniformitems
	([["ACRE_PRC152", 1]] + twc_loadout_basicuniformitems),

	//helmet

	"rhsusf_opscore_aor1_pelt_nsw",

	//vest
	(["twc_rhsusf_plateframe_marskman_aor1"] call bis_fnc_selectrandom),

	//vestitems

	[["HandGrenade", 1], ["SmokeShell", 1], ["rhsusf_mag_17Rnd_9x19_JHP", 2], ["rhs_mag_20Rnd_SCAR_762x51_m80a1_epr", 9]],

	//backpack
	"twc_scoutpack_tan",

	//backpackitems

	[["rhs_mag_20Rnd_SCAR_762x51_m80a1_epr", 10]],

	//night kit
	["rhs_uniform_g3_blk", "CUP_NVG_GPNVG_black", [["ACE_Flashlight_KSF1", 1], ["ACE_Chemlight_IR", 3], ["Chemlight_red", 3]]],

	//weapons

	[[("twc_mk17_elcan"), []], ["rhsusf_weap_glock17g4", []]],

	//linkeditems

	([""] + twc_loadout_basiclinkeditems),
	
	//weapons to remove from crate, weapons to add
	
	[["all"], ([["rhsusf_weap_MP7A2_desert", 1], ["twc_sr25_us_marksman", 1]] + twc_crateweapons)],
	
	//mags to remove from crate, mags to add
	
	[["all"], ([["rhs_mag_20Rnd_SCAR_762x51_m80a1_epr", 50], ["rhs_mag_20Rnd_SCAR_762x51_m62_tracer", 10], ["rhsusf_20Rnd_762x51_SR25_m993_Mag", 50], ["rhsusf_20Rnd_762x51_SR25_m62_Mag", 10], ["rhsusf_mag_17Rnd_9x19_JHP", 10], ["rhsusf_mag_40Rnd_46x30_FMJ", 50]] + twc_cratemagazines)],
	
	//items to remove from crate, mags to add
	
	[["UK3CB_BAF_Kite"], ([["ACE_SpraypaintGreen", 1]])],
	
	//backpacks to remove from crate, backpacks to add
	
	[["all"], [["B_TacticalPack_blk", 2]]]

];


twc_loadout_st6_medic = [
	//uniform
	(["rhs_uniform_g3_m81"] call bis_fnc_selectrandom),

	//uniformitems
	([["ACRE_PRC152", 1]] + twc_loadout_basicuniformitems),

	//helmet

	"H_HelmetB_light_sand",

	//vest
	(["twc_rhsusf_mbav_medic_aor1", "twc_aor1_spc_squadleader"] call bis_fnc_selectrandom),

	//vestitems

	[["TWC_Item_Medical_SutureKit_20", 1], ["ACE_tourniquet", 3], ["rhsusf_mag_17Rnd_9x19_JHP", 3], ["rhs_mag_30Rnd_556x45_M855A1_Stanag", 8]],

	//backpack
	"UK3CB_BAF_B_Kitbag_OLI",

	//backpackitems

	[["ACE_fieldDressing", 25], ["ACE_packingBandage", 25], ["ACE_elasticBandage", 25], ["ACE_quikclot", 25], ["ACE_salineIV_500", 15], ["ACE_salineIV_250", 10], ["ACE_epinephrine", 10], ["ACE_morphine", 10]],

	//night kit
	["rhs_uniform_g3_blk", "rhsusf_ANPVS_15", [["ACE_Flashlight_KSF1", 1], ["ACE_Chemlight_IR", 3], ["Chemlight_red", 3]]],

	//weapons

	[[(["twc_hk416_mag_desert", "twc_hk416_mag"] call bis_fnc_selectrandom), []], ["rhsusf_weap_glock17g4", []]],

	//linkeditems

	([""] + twc_loadout_basiclinkeditems),
	
	//weapons to remove from crate, weapons to add
	
	[["all"], ([["rhsusf_weap_MP7A2_desert", 1], ["rhsusf_weap_glock17g4", 1]] + twc_crateweapons)],
	
	//mags to remove from crate, mags to add
	
	[["all"], ([["rhs_mag_30Rnd_556x45_M855A1_Stanag", 50], ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red", 10], ["rhsusf_mag_17Rnd_9x19_JHP", 10], ["rhsusf_mag_40Rnd_46x30_FMJ", 50]] + twc_cratemagazines)],
	
	//items to remove from crate, mags to add
	
	[["UK3CB_BAF_Kite"], ([["ACE_SpraypaintGreen", 1]] + twc_loadout_basicmedicitems)],
	
	//backpacks to remove from crate, backpacks to add
	
	[["all"], [["B_TacticalPack_blk", 2]]]

];

///ACE

twc_loadout_ace_sl = [
	//uniform
	(["CUP_U_CRYEG3_V2", "CUP_U_CRYEG3_V1", "CUP_U_CRYE_V1_Full", "CUP_U_CRYE_V2_Full", "rhs_uniform_g3_mc"] call bis_fnc_selectrandom),

	//uniformitems
	([["ACRE_PRC152", 1], ["ACRE_PRC148", 1], ["ACE_MapTools", 1]] + twc_loadout_basicuniformitems),

	//helmet

	(["CUP_H_OpsCore_Covered_MCAM_US_SF", "rhsusf_opscore_mc_cover_pelt_cam", "CUP_H_OpsCore_Spray_US_SF", "CUP_H_OpsCore_Covered_MCAM_US", "CUP_H_OpsCore_Spray_US", "H_HelmetB_light_snakeskin", "H_HelmetB_light_sand", "H_HelmetB_light_desert", "H_HelmetB_light"] call bis_fnc_selectrandom),

	//vest
	(["twc_oli_spc_squadleader", "twc_mtp_spc_squadleader", "twc_rhsusf_plateframe_SL_mtp", "CUP_V_B_Ciras_Khaki", "CUP_V_B_Ciras_MCam", "CUP_V_B_Ciras_Olive", "CUP_V_B_JPC_MCam", "CUP_V_B_JPC_Tan"] call bis_fnc_selectrandom),

	//vestitems

	[[(["UK3CB_BAF_H_Earphone", "CUP_H_PMC_Cap_EP_Tan", "CUP_H_PMC_Cap_EP_Grey", "CUP_H_PMC_Cap_Back_EP_Grey", "CUP_H_PMC_Cap_Back_EP_Tan"] call bis_fnc_selectrandom), 1], ["rhsusf_mag_17Rnd_9x19_JHP", 2], ["HandGrenade", 2], ["SmokeShell", 1], ["rhs_mag_30Rnd_556x45_M855A1_Stanag", 8], ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red", 4]],

	//backpack
	"rhsusf_falconii_breach",

	//backpackitems

	[["rhs_mag_30Rnd_556x45_M855A1_Stanag", 5]],

	//night kit
	["rhs_uniform_g3_blk", "CUP_NVG_GPNVG_black", [["rhsusf_acc_eotech_xps3", 1], ["ACE_Flashlight_KSF1", 1], ["ACE_Chemlight_IR", 3], ["Chemlight_red", 3]]],

	//weapons

	[[(["twc_m4b2_us_shortdot"] call bis_fnc_selectrandom), []], ["twc_g17_optics_laser", []], ["ACE_Vector", []]],

	//linkeditems

	(["itemcTab"] + twc_loadout_basiclinkeditems),
	
	//weapons to remove from crate, weapons to add
	
	[["all"], ([["twc_m4b2_us_spectre", 1], ["twc_m4b2_us_mag", 1], ["twc_g17_optics_laser", 1]] + twc_crateweapons)],
	
	//mags to remove from crate, mags to add
	
	[["all"], ([["rhs_mag_30Rnd_556x45_M855A1_Stanag", 50], ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red", 10], ["rhsusf_mag_17Rnd_9x19_JHP", 50]] + twc_cratemagazines)],
	
	//items to remove from crate, mags to add
	
	[["UK3CB_BAF_Kite"], ([["DemoCharge_Remote_Mag", 3], ["ACE_M26_Clacker", 1]])],
	
	//backpacks to remove from crate, backpacks to add
	
	[["all"], [["B_Kitbag_tan", 2]]]

];

twc_loadout_ace_2ic = [
	//uniform
	(["CUP_U_CRYEG3_V2", "CUP_U_CRYEG3_V1", "CUP_U_CRYE_V1_Full", "CUP_U_CRYE_V2_Full", "rhs_uniform_g3_mc"] call bis_fnc_selectrandom),

	//uniformitems
	([["ACRE_PRC152", 1], ["ACE_MapTools", 1]] + twc_loadout_basicuniformitems),

	//helmet

	(["CUP_H_OpsCore_Covered_MCAM_US_SF", "rhsusf_opscore_mc_cover_pelt_cam", "CUP_H_OpsCore_Spray_US_SF", "CUP_H_OpsCore_Covered_MCAM_US", "CUP_H_OpsCore_Spray_US", "H_HelmetB_light_snakeskin", "H_HelmetB_light_sand", "H_HelmetB_light_desert", "H_HelmetB_light"] call bis_fnc_selectrandom),

	//vest
	"twc_rhsusf_plateframe_rifleman_mtp",

	//vestitems

	[[(["UK3CB_BAF_H_Earphone", "CUP_H_PMC_Cap_EP_Tan", "CUP_H_PMC_Cap_EP_Grey", "CUP_H_PMC_Cap_Back_EP_Grey", "CUP_H_PMC_Cap_Back_EP_Tan"] call bis_fnc_selectrandom), 1], ["rhsusf_mag_17Rnd_9x19_JHP", 2], ["rhs_mag_30Rnd_556x45_M855A1_Stanag", 7], ["HandGrenade", 1], ["SmokeShell", 1]],

	//backpack
	"twc_genbackPack_oli",

	//backpackitems

	[["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red", 7], ["rhs_mag_30Rnd_556x45_M855A1_Stanag", 7], ["ACE_EntrenchingTool", 1], ["DemoCharge_Remote_Mag", 1], ["ACE_M26_Clacker", 1]],

	//night kit
	["rhs_uniform_g3_blk", "CUP_NVG_GPNVG_black", [["rhsusf_acc_eotech_xps3", 1], ["ACE_Flashlight_KSF1", 1], ["ACE_Chemlight_IR", 3], ["Chemlight_red", 3]]],

	//weapons

	[[(["twc_m4b2_us_shortdot"] call bis_fnc_selectrandom), []], ["twc_g17_optics_laser", []], ["ACE_MX2A", []]],

	//linkeditems

	([""] + twc_loadout_basiclinkeditems),
	
	//weapons to remove from crate, weapons to add
	
	[["all"], ([["twc_m4b2_us_spectre", 1], ["twc_m4b2_us_mag", 1]] + twc_crateweapons)],
	
	//mags to remove from crate, mags to add
	
	[["all"], ([["rhs_mag_30Rnd_556x45_M855A1_Stanag", 50], ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red", 10], ["rhsusf_mag_17Rnd_9x19_JHP", 50]] + twc_cratemagazines)],
	
	//items to remove from crate, mags to add
	
	[["UK3CB_BAF_Kite"], ([["ACE_SpraypaintGreen", 1]])],
	
	//backpacks to remove from crate, backpacks to add
	
	[["all"], [["TWC_BAF_B_Bergen_OLI_Rifleman_XL_A", 2]]]

];


twc_loadout_ace_pointman = [
	//uniform
	(["CUP_U_CRYEG3_V2", "CUP_U_CRYEG3_V1", "CUP_U_CRYE_V1_Full", "CUP_U_CRYE_V2_Full", "rhs_uniform_g3_mc"] call bis_fnc_selectrandom),

	//uniformitems
	([["ACRE_PRC152", 1]] + twc_loadout_basicuniformitems),

	//helmet

	(["CUP_H_OpsCore_Covered_MCAM_US_SF", "rhsusf_opscore_mc_cover_pelt_cam", "CUP_H_OpsCore_Spray_US_SF", "CUP_H_OpsCore_Covered_MCAM_US", "CUP_H_OpsCore_Spray_US", "H_HelmetB_light_snakeskin", "H_HelmetB_light_sand", "H_HelmetB_light_desert", "H_HelmetB_light"] call bis_fnc_selectrandom),

	//vest
	(["CUP_V_B_Ciras_MCam"] call bis_fnc_selectrandom),

	//vestitems

	[[(["UK3CB_BAF_H_Earphone", "CUP_H_PMC_Cap_EP_Tan", "CUP_H_PMC_Cap_EP_Grey", "CUP_H_PMC_Cap_Back_EP_Grey", "CUP_H_PMC_Cap_Back_EP_Tan"] call bis_fnc_selectrandom), 1], ["rhsusf_mag_40Rnd_46x30_FMJ", 3], ["rhsusf_mag_17Rnd_9x19_JHP", 3], ["rhs_mag_30Rnd_556x45_M855A1_Stanag", 8], ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red", 4], ["HandGrenade", 2], ["SmokeShell", 1]],

	//backpack
	"B_AssaultPack_rgr",

	//backpackitems 

	[["twc_mk18_shortdot", 1], ["rhsusf_mag_40Rnd_46x30_FMJ", 4], ["rhs_mag_30Rnd_556x45_M855A1_Stanag", 2], ["ACE_M84", 2]],

	//night kit
	["rhs_uniform_g3_blk", "CUP_NVG_GPNVG_black", [["rhsusf_acc_eotech_xps3", 1], ["ACE_Flashlight_KSF1", 1], ["ACE_Chemlight_IR", 3], ["Chemlight_red", 3]]],

	//weapons

	[[(["rhsusf_weap_MP7A2_desert"] call bis_fnc_selectrandom), []], ["twc_g17_optics_laser", []]],

	//linkeditems

	([""] + twc_loadout_basiclinkeditems),
	
	//weapons to remove from crate, weapons to add
	
	[["all"], ([["twc_m4b2_us_spectre", 1], ["twc_m4b2_us_mag", 1], ["rhsusf_weap_MP7A2_desert", 1], ["rhsusf_weap_glock17g4", 1]] + twc_crateweapons)],
	
	//mags to remove from crate, mags to add
	
	[["all"], ([["rhs_mag_30Rnd_556x45_M855A1_Stanag", 50], ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red", 10], ["rhsusf_mag_17Rnd_9x19_JHP", 10], ["rhsusf_mag_40Rnd_46x30_FMJ", 20]] + twc_cratemagazines)],
	
	//items to remove from crate, mags to add
	
	[["UK3CB_BAF_Kite"], ([["ACE_SpraypaintGreen", 1]])],
	
	//backpacks to remove from crate, backpacks to add
	
	[["all"], [["B_TacticalPack_blk", 2]]]

];



twc_loadout_ace_rifleman = [
	//uniform
	(["CUP_U_CRYEG3_V2", "CUP_U_CRYEG3_V1", "CUP_U_CRYE_V1_Full", "CUP_U_CRYE_V2_Full", "rhs_uniform_g3_mc"] call bis_fnc_selectrandom),

	//uniformitems
	([["ACRE_PRC152", 1]] + twc_loadout_basicuniformitems),

	//helmet

	(["CUP_H_OpsCore_Covered_MCAM_US_SF", "rhsusf_opscore_mc_cover_pelt_cam", "CUP_H_OpsCore_Spray_US_SF", "CUP_H_OpsCore_Covered_MCAM_US", "CUP_H_OpsCore_Spray_US", "H_HelmetB_light_snakeskin", "H_HelmetB_light_sand", "H_HelmetB_light_desert", "H_HelmetB_light"] call bis_fnc_selectrandom),

	//vest
	(["CUP_V_B_JPC_MCam", "twc_rhsusf_plateframe_rifleman_mtp"] call bis_fnc_selectrandom),

	//vestitems

	[[(["UK3CB_BAF_H_Earphone", "CUP_H_PMC_Cap_EP_Tan", "CUP_H_PMC_Cap_EP_Grey", "CUP_H_PMC_Cap_Back_EP_Grey", "CUP_H_PMC_Cap_Back_EP_Tan"] call bis_fnc_selectrandom), 1], ["rhsusf_mag_17Rnd_9x19_JHP", 2], ["rhs_mag_30Rnd_556x45_M855A1_Stanag", 8], ["HandGrenade", 2], ["SmokeShell", 1]],

	//backpack
	"twc_scoutpack_tan",

	//backpackitems

	[["rhs_mag_30Rnd_556x45_M855A1_Stanag", 3], ["ACE_M84", 2]],

	//night kit
	["rhs_uniform_g3_blk", "CUP_NVG_GPNVG_black", [["rhsusf_acc_eotech_xps3", 1], ["ACE_Flashlight_KSF1", 1], ["ACE_Chemlight_IR", 3], ["Chemlight_red", 3]]],

	//weapons

	[[(["twc_m4b2_us_shortdot"] call bis_fnc_selectrandom), []], ["twc_g17_optics_laser", []]],

	//linkeditems

	([""] + twc_loadout_basiclinkeditems),
	
	//weapons to remove from crate, weapons to add
	
	[["all"], ([["twc_m4b2_us_spectre", 1], ["twc_m4b2_us_mag", 1], ["twc_g17_optics_laser", 1]] + twc_crateweapons)],
	
	//mags to remove from crate, mags to add
	
	[["all"], ([["rhs_mag_30Rnd_556x45_M855A1_Stanag", 50], ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red", 10], ["rhsusf_mag_17Rnd_9x19_JHP", 10]] + twc_cratemagazines)],
	
	//items to remove from crate, mags to add
	
	[["UK3CB_BAF_Kite"], ([["ACE_SpraypaintGreen", 1]])],
	
	//backpacks to remove from crate, backpacks to add
	
	[["all"], [["B_TacticalPack_blk", 2]]]

];



twc_loadout_ace_grenadier = [
	//uniform
	(["CUP_U_CRYEG3_V2", "CUP_U_CRYEG3_V1", "CUP_U_CRYE_V1_Full", "CUP_U_CRYE_V2_Full", "rhs_uniform_g3_mc"] call bis_fnc_selectrandom),

	//uniformitems
	([["ACRE_PRC152", 1]] + twc_loadout_basicuniformitems),

	//helmet

	(["CUP_H_OpsCore_Covered_MCAM_US_SF", "rhsusf_opscore_mc_cover_pelt_cam", "CUP_H_OpsCore_Spray_US_SF", "CUP_H_OpsCore_Covered_MCAM_US", "CUP_H_OpsCore_Spray_US", "H_HelmetB_light_snakeskin", "H_HelmetB_light_sand", "H_HelmetB_light_desert", "H_HelmetB_light"] call bis_fnc_selectrandom),

	//vest
	(["twc_rhsusf_plateframe_grenadier_mtp"] call bis_fnc_selectrandom),

	//vestitems

	[[(["UK3CB_BAF_H_Earphone", "CUP_H_PMC_Cap_EP_Tan", "CUP_H_PMC_Cap_EP_Grey", "CUP_H_PMC_Cap_Back_EP_Grey", "CUP_H_PMC_Cap_Back_EP_Tan"] call bis_fnc_selectrandom), 1], ["rhs_mag_30Rnd_556x45_M855A1_Stanag", 8], ["1Rnd_HE_Grenade_shell", 15], ["HandGrenade", 1], ["SmokeShell", 1]],

	//backpack
	"twc_ussf_scoutpack",

	//backpackitems

	[["CUP_1Rnd_Smoke_M203", 5], ["rhs_mag_30Rnd_556x45_M855A1_Stanag", 3]],

	//night kit
	["rhs_uniform_g3_blk", "CUP_NVG_GPNVG_black", [["rhsusf_acc_eotech_xps3", 1], ["ACE_Flashlight_KSF1", 1], ["ACE_Chemlight_IR", 3], ["Chemlight_red", 3]]],

	//weapons

	[[(["twc_m4b2_us_shortdot"] call bis_fnc_selectrandom), []], ["rhs_weap_M320", []]],

	//linkeditems

	([""] + twc_loadout_basiclinkeditems),
	
	//weapons to remove from crate, weapons to add
	
	[["all"], ([["twc_m4b2_us_spectre", 1], ["twc_m4b2_us_mag", 1], ["rhsusf_weap_MP7A2_desert", 1], ["twc_g17_optics_laser", 1]] + twc_crateweapons)],
	
	//mags to remove from crate, mags to add
	
	[["all"], ([["rhs_mag_30Rnd_556x45_M855A1_Stanag", 50], ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red", 10], ["rhsusf_mag_17Rnd_9x19_JHP", 10], ["rhsusf_mag_40Rnd_46x30_FMJ", 15], ["1Rnd_HE_Grenade_shell", 50]] + twc_cratemagazines)],
	
	//items to remove from crate, mags to add
	
	[["UK3CB_BAF_Kite"], ([["ACE_SpraypaintGreen", 1]])],
	
	//backpacks to remove from crate, backpacks to add
	
	[["all"], [["B_TacticalPack_blk", 2]]]

];



twc_loadout_ace_marksman = [
	//uniform
	(["CUP_U_CRYEG3_V2", "CUP_U_CRYEG3_V1", "CUP_U_CRYE_V1_Full", "CUP_U_CRYE_V2_Full", "rhs_uniform_g3_mc"] call bis_fnc_selectrandom),

	//uniformitems
	([["ACRE_PRC152", 1]] + twc_loadout_basicuniformitems),

	//helmet

	(["CUP_H_OpsCore_Covered_MCAM_US_SF", "rhsusf_opscore_mc_cover_pelt_cam", "CUP_H_OpsCore_Spray_US_SF", "CUP_H_OpsCore_Covered_MCAM_US", "CUP_H_OpsCore_Spray_US", "H_HelmetB_light_snakeskin", "H_HelmetB_light_sand", "H_HelmetB_light_desert", "H_HelmetB_light"] call bis_fnc_selectrandom),

	//vest
	(["CUP_V_B_JPC_MCam"] call bis_fnc_selectrandom),

	//vestitems

	[[(["UK3CB_BAF_H_Earphone", "CUP_H_PMC_Cap_EP_Tan", "CUP_H_PMC_Cap_EP_Grey", "CUP_H_PMC_Cap_Back_EP_Grey", "CUP_H_PMC_Cap_Back_EP_Tan"] call bis_fnc_selectrandom), 1], ["HandGrenade", 1], ["SmokeShell", 1], ["rhsusf_mag_17Rnd_9x19_JHP", 2], ["rhsusf_20Rnd_762x51_SR25_m993_Mag", 9]],

	//backpack
	"twc_scoutpack_tan",

	//backpackitems

	[["rhsusf_20Rnd_762x51_SR25_m62_Mag", 10]],

	//night kit
	["rhs_uniform_g3_blk", "CUP_NVG_GPNVG_black", [["rhsusf_acc_premier_anpvs27", 1], ["ACE_Flashlight_KSF1", 1], ["ACE_Chemlight_IR", 3], ["Chemlight_red", 3]]],

	//weapons

	[[("twc_sr25_us_marksman"), []], ["twc_g17_optics_laser", []]],

	//linkeditems

	([""] + twc_loadout_basiclinkeditems),
	
	//weapons to remove from crate, weapons to add
	
	[["all"], ([["rhsusf_weap_MP7A2_desert", 1], ["twc_m4b2_us_shortdot", 1], ["twc_m4b2_us_mag", 1], ["twc_mk17_elcan", 1]] + twc_crateweapons)],
	
	//mags to remove from crate, mags to add
	
	[["all"], ([["rhs_mag_20Rnd_SCAR_762x51_m80a1_epr", 50], ["rhs_mag_20Rnd_SCAR_762x51_m62_tracer", 10], ["rhsusf_20Rnd_762x51_SR25_m993_Mag", 50], ["rhsusf_20Rnd_762x51_SR25_m62_Mag", 10], ["rhsusf_mag_17Rnd_9x19_JHP", 10], ["rhsusf_mag_40Rnd_46x30_FMJ", 15], ["rhs_mag_20Rnd_556x45_Mk262_Stanag", 10]] + twc_cratemagazines)],
	
	//items to remove from crate, mags to add
	
	[[], ([["cup_optic_an_pvs_10", 1]])],
	
	//backpacks to remove from crate, backpacks to add
	
	[["all"], [["B_TacticalPack_blk", 2]]]

];


twc_loadout_ace_medic = [
	//uniform
	(["CUP_U_CRYEG3_V2", "CUP_U_CRYEG3_V1", "CUP_U_CRYE_V1_Full", "CUP_U_CRYE_V2_Full", "rhs_uniform_g3_mc"] call bis_fnc_selectrandom),

	//uniformitems
	([["ACRE_PRC152", 1]] + twc_loadout_basicuniformitems),

	//helmet

	(["CUP_H_OpsCore_Covered_MCAM_US_SF", "rhsusf_opscore_mc_cover_pelt_cam", "CUP_H_OpsCore_Spray_US_SF", "CUP_H_OpsCore_Covered_MCAM_US", "CUP_H_OpsCore_Spray_US", "H_HelmetB_light_snakeskin", "H_HelmetB_light_sand", "H_HelmetB_light_desert", "H_HelmetB_light"] call bis_fnc_selectrandom),

	//vest
	(["twc_rhsusf_mbav_rifleman_mtp"] call bis_fnc_selectrandom),

	//vestitems

	[[(["UK3CB_BAF_H_Earphone", "CUP_H_PMC_Cap_EP_Tan", "CUP_H_PMC_Cap_EP_Grey", "CUP_H_PMC_Cap_Back_EP_Grey", "CUP_H_PMC_Cap_Back_EP_Tan"] call bis_fnc_selectrandom), 1], ["TWC_Item_Medical_SutureKit_20", 1], ["ACE_tourniquet", 3], ["rhsusf_mag_17Rnd_9x19_JHP", 3], ["rhs_mag_30Rnd_556x45_M855A1_Stanag", 8]],

	//backpack
	"UK3CB_BAF_B_Kitbag_OLI",

	//backpackitems

	[["ACE_fieldDressing", 25], ["ACE_packingBandage", 25], ["ACE_elasticBandage", 25], ["ACE_quikclot", 25], ["ACE_salineIV_500", 15], ["ACE_salineIV_250", 10], ["ACE_epinephrine", 10], ["ACE_morphine", 10]],

	//night kit
	["rhs_uniform_g3_blk", "rhsusf_ANPVS_15", [["rhsusf_acc_eotech_xps3", 1], ["ACE_Flashlight_KSF1", 1], ["ACE_Chemlight_IR", 3], ["Chemlight_red", 3]]],

	//weapons

	[[(["twc_m4b2_us_shortdot"] call bis_fnc_selectrandom), []], ["twc_g17_optics_laser", []]],

	//linkeditems

	([""] + twc_loadout_basiclinkeditems),
	
	//weapons to remove from crate, weapons to add
	
	[["all"], ([["twc_m4b2_us_spectre", 1], ["twc_m4b2_us_mag", 1], ["rhsusf_weap_glock17g4", 1]] + twc_crateweapons)],
	
	//mags to remove from crate, mags to add
	
	[["all"], ([["rhs_mag_30Rnd_556x45_M855A1_Stanag", 50], ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red", 10], ["rhsusf_mag_17Rnd_9x19_JHP", 10]] + twc_cratemagazines)],
	
	//items to remove from crate, mags to add
	
	[["UK3CB_BAF_Kite"], ([["ACE_SpraypaintGreen", 1]] + twc_loadout_basicmedicitems)],
	
	//backpacks to remove from crate, backpacks to add
	
	[["all"], [["B_TacticalPack_blk", 2]]]

];


///Rangers

twc_loadout_ussf_sl = [
	//uniform
	(["CUP_U_CRYEG3_V2", "CUP_U_CRYEG3_V1", "CUP_U_CRYE_V1_Full", "CUP_U_CRYE_V2_Full", "rhs_uniform_g3_mc"] call bis_fnc_selectrandom),

	//uniformitems
	([["ACE_MapTools", 1]] + twc_loadout_basicuniformitems),

	//helmet

	(["rhsusf_opscore_ut_pelt", "H_HelmetB_light_snakeskin", "H_HelmetB_light_sand", "H_HelmetB_light_desert", "rhsusf_opscore_mc_cover_pelt_cam"] call bis_fnc_selectrandom),

	//vest
	(["twc_oli_spc_squadleader", "twc_mtp_spc_squadleader", "CUP_V_B_Ciras_Khaki", "CUP_V_B_Ciras_MCam", "CUP_V_B_Ciras_Olive"] call bis_fnc_selectrandom),

	//vestitems

	[["ACRE_PRC152", 1], ["ACRE_PRC148", 1], ["rhsusf_mag_17Rnd_9x19_JHP", 2], ["HandGrenade", 2], ["SmokeShell", 1], ["rhs_mag_30Rnd_556x45_M855A1_Stanag", 8], ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red", 4]],

	//backpack
	"rhsusf_falconii_breach",

	//backpackitems

	[["rhs_mag_30Rnd_556x45_M855A1_Stanag", 5]],

	//night kit
	[(["CUP_U_CRYEG3_V2", "CUP_U_CRYEG3_V1", "CUP_U_CRYE_V1_Full", "CUP_U_CRYE_V2_Full", "rhs_uniform_g3_mc"] call bis_fnc_selectrandom), "rhsusf_ANPVS_15", [["ACE_Flashlight_KSF1", 1], ["ACE_Chemlight_IR", 3], ["Chemlight_red", 3]]],

	//weapons

	[[(["twc_mk18_specter"] call bis_fnc_selectrandom), []], ["twc_g17_optics_laser", []], ["ACE_Vector", []]],

	//linkeditems

	(["itemcTab"] + twc_loadout_basiclinkeditems),
	
	//weapons to remove from crate, weapons to add
	
	[["all"], ([["twc_mk18_eotech", 1], ["twc_g17_optics_laser", 1]] + twc_crateweapons)],
	
	//mags to remove from crate, mags to add
	
	[["all"], ([["rhs_mag_30Rnd_556x45_M855A1_Stanag", 50], ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red", 10], ["rhsusf_mag_17Rnd_9x19_JHP", 50]] + twc_cratemagazines)],
	
	//items to remove from crate, mags to add
	
	[["UK3CB_BAF_Kite"], ([["DemoCharge_Remote_Mag", 3], ["ACE_M26_Clacker", 1]])],
	
	//backpacks to remove from crate, backpacks to add
	
	[["all"], [["B_Kitbag_tan", 2]]]

];

twc_loadout_ussf_2ic = [
	//uniform
	(["CUP_U_CRYEG3_V2", "CUP_U_CRYEG3_V1", "CUP_U_CRYE_V1_Full", "CUP_U_CRYE_V2_Full", "rhs_uniform_g3_mc"] call bis_fnc_selectrandom),

	//uniformitems
	([["ACRE_PRC152", 1], ["ACE_MapTools", 1]] + twc_loadout_basicuniformitems),

	//helmet

	(["rhsusf_opscore_ut_pelt", "H_HelmetB_light_snakeskin", "H_HelmetB_light_sand", "H_HelmetB_light_desert", "rhsusf_opscore_mc_cover_pelt_cam"] call bis_fnc_selectrandom),

	//vest
	"twc_rhsusf_plateframe_rifleman_mtp",

	//vestitems

	[["rhsusf_mag_17Rnd_9x19_JHP", 2], ["rhs_mag_30Rnd_556x45_M855A1_Stanag", 7], ["HandGrenade", 1], ["SmokeShell", 1]],

	//backpack
	"twc_genbackPack_oli",

	//backpackitems

	[["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red", 7], ["rhs_mag_30Rnd_556x45_M855A1_Stanag", 7], ["ACE_M84", 2], ["ACE_EntrenchingTool", 1], ["DemoCharge_Remote_Mag", 1], ["ACE_M26_Clacker", 1]],

	//night kit
	[(["CUP_U_CRYEG3_V2", "CUP_U_CRYEG3_V1", "CUP_U_CRYE_V1_Full", "CUP_U_CRYE_V2_Full", "rhs_uniform_g3_mc"] call bis_fnc_selectrandom), "rhsusf_ANPVS_15", [["rhsusf_acc_eotech_xps3", 1], ["ACE_Flashlight_KSF1", 1], ["ACE_Chemlight_IR", 3], ["Chemlight_red", 3]]],

	//weapons

	[[(["twc_mk18_shortdot"] call bis_fnc_selectrandom), []], ["twc_g17_optics_laser", []], ["ACE_MX2A", []]],

	//linkeditems

	([""] + twc_loadout_basiclinkeditems),
	
	//weapons to remove from crate, weapons to add
	
	[["all"], ([["twc_mk18_specter", 1]] + twc_crateweapons)],
	
	//mags to remove from crate, mags to add
	
	[["all"], ([["rhs_mag_30Rnd_556x45_M855A1_Stanag", 50], ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red", 10], ["rhsusf_mag_17Rnd_9x19_JHP", 50]] + twc_cratemagazines)],
	
	//items to remove from crate, mags to add
	
	[["UK3CB_BAF_Kite"], ([["ACE_SpraypaintGreen", 1]])],
	
	//backpacks to remove from crate, backpacks to add
	
	[["all"], [["TWC_BAF_B_Bergen_OLI_Rifleman_XL_A", 2]]]

];


twc_loadout_ussf_pointman = [
	//uniform
	(["CUP_U_CRYEG3_V2", "CUP_U_CRYEG3_V1", "CUP_U_CRYE_V1_Full", "CUP_U_CRYE_V2_Full", "rhs_uniform_g3_mc"] call bis_fnc_selectrandom),

	//uniformitems
	([["ACRE_PRC152", 1]] + twc_loadout_basicuniformitems),

	//helmet

	(["rhsusf_opscore_ut_pelt", "H_HelmetB_light_snakeskin", "H_HelmetB_light_sand", "H_HelmetB_light_desert", "rhsusf_opscore_mc_cover_pelt_cam"] call bis_fnc_selectrandom),

	//vest
	(["CUP_V_B_Ciras_MCam"] call bis_fnc_selectrandom),

	//vestitems

	[["rhsusf_mag_17Rnd_9x19_JHP", 3], ["ACE_M84", 2], ["rhs_mag_30Rnd_556x45_M855A1_Stanag", 10], ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red", 4], ["HandGrenade", 2], ["SmokeShell", 1]],

	//backpack
	"twc_ussf_scoutpack",

	//backpackitems 

	[["rhs_mag_30Rnd_556x45_M855A1_Stanag", 3], ["ACE_M84", 2]],

	//night kit
	[(["CUP_U_CRYEG3_V2", "CUP_U_CRYEG3_V1", "CUP_U_CRYE_V1_Full", "CUP_U_CRYE_V2_Full", "rhs_uniform_g3_mc"] call bis_fnc_selectrandom), "rhsusf_ANPVS_15", [["ACE_Flashlight_KSF1", 1], ["ACE_Chemlight_IR", 3], ["Chemlight_red", 3]]],

	//weapons

	[[(["twc_mk18_eotech"] call bis_fnc_selectrandom), []], ["twc_g17_optics_laser", []]],

	//linkeditems

	([""] + twc_loadout_basiclinkeditems),
	
	//weapons to remove from crate, weapons to add
	
	[["all"], ([["twc_m4b2_us_eotech", 1], ["rhsusf_weap_glock17g4", 1]] + twc_crateweapons)],
	
	//mags to remove from crate, mags to add
	
	[["all"], ([["rhs_mag_30Rnd_556x45_M855A1_Stanag", 50], ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red", 10], ["rhsusf_mag_17Rnd_9x19_JHP", 10]] + twc_cratemagazines)],
	
	//items to remove from crate, mags to add
	
	[["UK3CB_BAF_Kite"], ([["ACE_SpraypaintGreen", 1]])],
	
	//backpacks to remove from crate, backpacks to add
	
	[["all"], [["B_TacticalPack_blk", 2]]]

];



twc_loadout_ussf_rifleman = [
	//uniform
	(["CUP_U_CRYEG3_V2", "CUP_U_CRYEG3_V1", "CUP_U_CRYE_V1_Full", "CUP_U_CRYE_V2_Full", "rhs_uniform_g3_mc"] call bis_fnc_selectrandom),

	//uniformitems
	([["ACRE_PRC152", 1]] + twc_loadout_basicuniformitems),

	//helmet

	(["rhsusf_opscore_ut_pelt", "H_HelmetB_light_snakeskin", "H_HelmetB_light_sand", "H_HelmetB_light_desert", "rhsusf_opscore_mc_cover_pelt_cam"] call bis_fnc_selectrandom),

	//vest
	(["CUP_V_B_JPC_MCam", "twc_rhsusf_plateframe_rifleman_mtp"] call bis_fnc_selectrandom),

	//vestitems

	[["rhsusf_mag_17Rnd_9x19_JHP", 2], ["rhs_mag_30Rnd_556x45_M855A1_Stanag", 8], ["HandGrenade", 2], ["SmokeShell", 1]],

	//backpack
	"twc_scoutpack_tan",

	//backpackitems

	[["rhs_mag_30Rnd_556x45_M855A1_Stanag", 3], ["ACE_M84", 2]],

	//night kit
	[(["CUP_U_CRYEG3_V2", "CUP_U_CRYEG3_V1", "CUP_U_CRYE_V1_Full", "CUP_U_CRYE_V2_Full", "rhs_uniform_g3_mc"] call bis_fnc_selectrandom), "rhsusf_ANPVS_15", [["ACE_Flashlight_KSF1", 1], ["ACE_Chemlight_IR", 3], ["Chemlight_red", 3]]],

	//weapons

	[[(["twc_mk18_eotech"] call bis_fnc_selectrandom), []], ["twc_g17_optics_laser", []]],

	//linkeditems

	([""] + twc_loadout_basiclinkeditems),
	
	//weapons to remove from crate, weapons to add
	
	[["all"], ([["twc_m4b2_us_spectre", 1], ["twc_g17_optics_laser", 1]] + twc_crateweapons)],
	
	//mags to remove from crate, mags to add
	
	[["all"], ([["rhs_mag_30Rnd_556x45_M855A1_Stanag", 50], ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red", 10], ["rhsusf_mag_17Rnd_9x19_JHP", 10]] + twc_cratemagazines)],
	
	//items to remove from crate, mags to add
	
	[["UK3CB_BAF_Kite"], ([["ACE_SpraypaintGreen", 1]])],
	
	//backpacks to remove from crate, backpacks to add
	
	[["all"], [["B_TacticalPack_blk", 2]]]

];



twc_loadout_ussf_grenadier = [
	//uniform
	(["CUP_U_CRYEG3_V2", "CUP_U_CRYEG3_V1", "CUP_U_CRYE_V1_Full", "CUP_U_CRYE_V2_Full", "rhs_uniform_g3_mc"] call bis_fnc_selectrandom),

	//uniformitems
	([["ACRE_PRC152", 1]] + twc_loadout_basicuniformitems),

	//helmet

	(["rhsusf_opscore_ut_pelt", "H_HelmetB_light_snakeskin", "H_HelmetB_light_sand", "H_HelmetB_light_desert", "rhsusf_opscore_mc_cover_pelt_cam"] call bis_fnc_selectrandom),

	//vest
	(["twc_rhsusf_plateframe_grenadier_mtp"] call bis_fnc_selectrandom),

	//vestitems

	[["twc_acc_rotex5_grey", 1], ["rhs_mag_30Rnd_556x45_M855A1_Stanag", 8], ["1Rnd_HE_Grenade_shell", 15], ["HandGrenade", 1], ["SmokeShell", 1]],

	//backpack
	"twc_ussf_scoutpack",

	//backpackitems

	[["CUP_1Rnd_Smoke_M203", 5], ["rhs_mag_30Rnd_556x45_M855A1_Stanag", 3]],

	//night kit
	[(["CUP_U_CRYEG3_V2", "CUP_U_CRYEG3_V1", "CUP_U_CRYE_V1_Full", "CUP_U_CRYE_V2_Full", "rhs_uniform_g3_mc"] call bis_fnc_selectrandom), "rhsusf_ANPVS_15", [["ACE_Flashlight_KSF1", 1], ["ACE_Chemlight_IR", 3], ["Chemlight_red", 3]]],

	//weapons

	[[(["twc_m4b2_us_eotech"] call bis_fnc_selectrandom), []], ["rhs_weap_M320", []]],

	//linkeditems

	([""] + twc_loadout_basiclinkeditems),
	
	//weapons to remove from crate, weapons to add
	
	[["all"], ([["twc_m4b2_us_eotech", 1], ["twc_g17_optics_laser", 1]] + twc_crateweapons)],
	
	//mags to remove from crate, mags to add
	
	[["all"], ([["rhs_mag_30Rnd_556x45_M855A1_Stanag", 50], ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red", 10], ["rhsusf_mag_17Rnd_9x19_JHP", 10], ["1Rnd_HE_Grenade_shell", 50]] + twc_cratemagazines)],
	
	//items to remove from crate, mags to add
	
	[["UK3CB_BAF_Kite"], ([["ACE_SpraypaintGreen", 1]])],
	
	//backpacks to remove from crate, backpacks to add
	
	[["all"], [["B_TacticalPack_blk", 2]]]

];



twc_loadout_ussf_marksman = [
	//uniform
	(["CUP_U_CRYEG3_V2", "CUP_U_CRYEG3_V1", "CUP_U_CRYE_V1_Full", "CUP_U_CRYE_V2_Full", "rhs_uniform_g3_mc"] call bis_fnc_selectrandom),

	//uniformitems
	([["ACRE_PRC152", 1]] + twc_loadout_basicuniformitems),

	//helmet

	(["rhsusf_opscore_ut_pelt", "H_HelmetB_light_snakeskin", "H_HelmetB_light_sand", "H_HelmetB_light_desert", "rhsusf_opscore_mc_cover_pelt_cam"] call bis_fnc_selectrandom),

	//vest
	(["twc_warriorvest_dcs"] call bis_fnc_selectrandom),

	//vestitems

	[["HandGrenade", 1], ["SmokeShell", 1], ["rhsusf_mag_17Rnd_9x19_JHP", 2], ["rhsusf_20Rnd_762x51_SR25_m993_Mag", 9],["rhsusf_20Rnd_762x51_SR25_m62_Mag", 10]],

	//backpack
	"twc_ussf_scoutpack",

	//backpackitems

	[["rhsusf_20Rnd_762x51_SR25_m62_Mag", 10]],

	//night kit
	[(["CUP_U_CRYEG3_V2", "CUP_U_CRYEG3_V1", "CUP_U_CRYE_V1_Full", "CUP_U_CRYE_V2_Full", "rhs_uniform_g3_mc"] call bis_fnc_selectrandom), "rhsusf_ANPVS_15", [["rhsusf_acc_premier_anpvs27", 1], ["ACE_Flashlight_KSF1", 1], ["ACE_Chemlight_IR", 3], ["Chemlight_red", 3]]],

	//weapons
	[[("twc_sr25_us_marksman"), []], ["twc_g17_optics_laser", []]],

	//linkeditems

	([""] + twc_loadout_basiclinkeditems),
	
	//weapons to remove from crate, weapons to add
	
	[["all"], ([["twc_m4b2_us_shortdot", 1]] + twc_crateweapons)],
	
	//mags to remove from crate, mags to add
	
	[["all"], ([["rhsusf_20Rnd_762x51_SR25_m993_Mag", 50], ["rhsusf_20Rnd_762x51_SR25_m62_Mag", 10], ["rhs_mag_30Rnd_556x45_Mk262_PMAG_Tan", 10], ["rhs_mag_30Rnd_556x45_M855A1_Stanag", 30], ["rhsusf_mag_17Rnd_9x19_JHP", 10]] + twc_cratemagazines)],
	
	//items to remove from crate, mags to add
	
	[["UK3CB_BAF_Kite", "cup_optic_an_pas_13c1"], ([["rhsusf_acc_premier_anpvs27", 1]])],
	
	//backpacks to remove from crate, backpacks to add
	
	[["all"], [["B_TacticalPack_blk", 2]]]

];


twc_loadout_ussf_medic = [
	//uniform
	(["CUP_U_CRYEG3_V2", "CUP_U_CRYEG3_V1", "CUP_U_CRYE_V1_Full", "CUP_U_CRYE_V2_Full", "rhs_uniform_g3_mc"] call bis_fnc_selectrandom),

	//uniformitems
	([["ACRE_PRC152", 1]] + twc_loadout_basicuniformitems),

	//helmet

	(["rhsusf_opscore_ut_pelt", "H_HelmetB_light_snakeskin", "H_HelmetB_light_sand", "H_HelmetB_light_desert", "rhsusf_opscore_mc_cover_pelt_cam"] call bis_fnc_selectrandom),

	//vest
	(["twc_rhsusf_mbav_rifleman_mtp"] call bis_fnc_selectrandom),

	//vestitems

	[["TWC_Item_Medical_SutureKit_20", 1], ["ACE_tourniquet", 3], ["rhsusf_mag_17Rnd_9x19_JHP", 3], ["rhs_mag_30Rnd_556x45_M855A1_Stanag", 8]],

	//backpack
	"UK3CB_BAF_B_Kitbag_OLI",

	//backpackitems

	[["ACE_fieldDressing", 25], ["ACE_packingBandage", 25], ["ACE_elasticBandage", 25], ["ACE_quikclot", 25], ["ACE_salineIV_500", 15], ["ACE_salineIV_250", 10], ["ACE_epinephrine", 10], ["ACE_morphine", 10]],

	//night kit
	[(["CUP_U_CRYEG3_V2", "CUP_U_CRYEG3_V1", "CUP_U_CRYE_V1_Full", "CUP_U_CRYE_V2_Full", "rhs_uniform_g3_mc"] call bis_fnc_selectrandom), "rhsusf_ANPVS_15", [["ACE_Flashlight_KSF1", 1], ["ACE_Chemlight_IR", 3], ["Chemlight_red", 3]]],

	//weapons

	[[(["twc_m4b2_us_eotech"] call bis_fnc_selectrandom), []], ["twc_g17_optics_laser", []]],

	//linkeditems

	([""] + twc_loadout_basiclinkeditems),
	
	//weapons to remove from crate, weapons to add
	
	[["all"], ([["twc_mk18_eotech", 1], ["rhsusf_weap_glock17g4", 1]] + twc_crateweapons)],
	
	//mags to remove from crate, mags to add
	
	[["all"], ([["rhs_mag_30Rnd_556x45_M855A1_Stanag", 50], ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red", 10], ["rhsusf_mag_17Rnd_9x19_JHP", 10], ["1Rnd_HE_Grenade_shell", 50]] + twc_cratemagazines)],
	
	//items to remove from crate, mags to add
	
	[["UK3CB_BAF_Kite"], ([["ACE_SpraypaintGreen", 1]] + twc_loadout_basicmedicitems)],
	
	//backpacks to remove from crate, backpacks to add
	
	[["all"], [["B_TacticalPack_blk", 2]]]

];


///UKSF

twc_loadout_uksf_sl = [
	//uniform
	(["UK3CB_BAF_U_CombatUniform_MTP_ShortSleeve"] call bis_fnc_selectrandom),

	//uniformitems
	([["ACRE_PRC343", 1], ["ACE_MapTools", 1], ["ACRE_PRC152", 1]] + twc_loadout_basicuniformitems),

	//helmet
	"rhsusf_opscore_mc_cover_pelt_cam",

	//vest
	(["twc_mtp_spc_squadleader"] call bis_fnc_selectrandom),

	//vestitems
	[["rhsusf_mag_17Rnd_9x19_JHP", 2], ["HandGrenade", 2], ["SmokeShell", 1], ["rhs_mag_30Rnd_556x45_M855A1_Stanag", 8], ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red", 8]],

	//backpack
	"",

	//backpackitems
	[["ACE_fieldDressing", 0]],

	//night kit
	["rhs_uniform_g3_blk", "rhsusf_ANPVS_15", [["ACE_Flashlight_KSF1", 1], ["ACE_Chemlight_IR", 3], ["Chemlight_red", 3]]],

	//weapons
	[[(["TWC_UK3CB_BAF_L119A2_14_ACOG_black"] call bis_fnc_selectrandom), ["twc_acc_rotex5_grey"]], ["rhsusf_weap_glock17g4", []], ["ACE_Vector", []]],

	//linkeditems
	(["ItemcTab"] + twc_loadout_basiclinkeditems)
];


twc_loadout_uksf_2ic = [
	//uniform
	(["UK3CB_BAF_U_CombatUniform_MTP_ShortSleeve"] call bis_fnc_selectrandom),

	//uniformitems
	([["ACRE_PRC343", 1], ["ACE_MapTools", 1]] + twc_loadout_basicuniformitems),

	//helmet
	"rhsusf_opscore_mc_cover_pelt_cam",

	//vest
	(["twc_rhsusf_mbav_rifleman_mtp"] call bis_fnc_selectrandom),

	//vestitems
	[["rhsusf_mag_17Rnd_9x19_JHP", 2], ["HandGrenade", 2], ["SmokeShell", 1], ["rhs_mag_30Rnd_556x45_M855A1_Stanag", 8], ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red", 8]],

	//backpack
	"TWC_Backpack_UKSF_2IC",

	//backpackitems
	[],

	//night kit
	["rhs_uniform_g3_blk", "rhsusf_ANPVS_15", [["ACE_Flashlight_KSF1", 1], ["ACE_Chemlight_IR", 3], ["Chemlight_red", 3]]],

	//weapons
	[[(["TWC_UK3CB_BAF_L119A2_14_ACOG_black"] call bis_fnc_selectrandom), ["twc_acc_rotex5_grey"]], ["rhsusf_weap_glock17g4", []], ["ACE_MX2A", []]],

	//linkeditems
	([""] + twc_loadout_basiclinkeditems)
];


twc_loadout_uksf_pointman = [
	//uniform
	(["UK3CB_BAF_U_CombatUniform_MTP_TShirt_RM"] call bis_fnc_selectrandom),

	//uniformitems
	([["ACRE_PRC343", 1]] + twc_loadout_basicuniformitems),

	//helmet
	"rhsusf_opscore_mc_cover_pelt_cam",

	//vest
	(["CUP_V_B_Ciras_Olive"] call bis_fnc_selectrandom),

	//vestitems
	[["rhsusf_mag_17Rnd_9x19_JHP", 4], ["twc_acc_rotex5_grey", 1], ["HandGrenade", 2], ["ACE_M84", 2], ["SmokeShell", 1], ["rhs_mag_30Rnd_556x45_M855A1_Stanag", 8], ["CUP_6Rnd_B_Beneli_74Pellets", 15]],

	//backpack
	"B_AssaultPack_rgr",

	//backpackitems
	[["TWC_UK3CB_BAF_L119A2_10_LDS", 1], ["CUP_6Rnd_B_Benelli_74Slug", 5]],

	//night kit
	["rhs_uniform_g3_blk", "rhsusf_ANPVS_15", [["ACE_Flashlight_KSF1", 1], ["ACE_Chemlight_IR", 3], ["Chemlight_red", 3]]],

	//weapons
	[[(["CUP_sgun_M1014_Entry_vfg"] call bis_fnc_selectrandom), ["rhsusf_acc_t1_low"]], ["twc_g17_optics_laser", []]],

	//linkeditems
	([""] + twc_loadout_basiclinkeditems)
];

twc_loadout_uksf_rifleman = [
	//uniform
	(["UK3CB_BAF_U_CombatUniform_MTP_ShortSleeve"] call bis_fnc_selectrandom),

	//uniformitems
	([["ACRE_PRC343", 1]] + twc_loadout_basicuniformitems),

	//helmet
	"rhsusf_opscore_mc_cover_pelt",

	//vest
	(["twc_mtp_spc_rifleman_alt"] call bis_fnc_selectrandom),

	//vestitems
	[["rhsusf_mag_17Rnd_9x19_JHP", 2], ["HandGrenade", 2], ["SmokeShell", 1], ["rhs_mag_30Rnd_556x45_M855A1_Stanag", 8], ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red", 8]],

	//backpack
	"",

	//backpackitems
	[],

	//night kit
	["rhs_uniform_g3_blk", "rhsusf_ANPVS_15", [["ACE_Flashlight_KSF1", 1], ["ACE_Chemlight_IR", 3], ["Chemlight_red", 3]]],

	//weapons
	[[(["TWC_UK3CB_BAF_L119A2_14_ACOG_black"] call bis_fnc_selectrandom), ["twc_acc_rotex5_grey"]], ["twc_g17_optics_laser", []]],

	//linkeditems
	([""] + twc_loadout_basiclinkeditems)
];

twc_loadout_uksf_grenadier = [
	//uniform
	(["UK3CB_BAF_U_CombatUniform_MTP_ShortSleeve"] call bis_fnc_selectrandom),

	//uniformitems
	([["ACRE_PRC343", 1]] + twc_loadout_basicuniformitems),

	//helmet
	"rhsusf_opscore_mc_cover_pelt",

	//vest
	(["rhsusf_plateframe_grenadier"] call bis_fnc_selectrandom),

	//vestitems
	[["1Rnd_HE_Grenade_shell", 16], ["HandGrenade", 2], ["SmokeShell", 1], ["rhs_mag_30Rnd_556x45_M855A1_Stanag", 8]],

	//backpack
	"",

	//backpackitems
	[],

	//night kit
	["rhs_uniform_g3_blk", "rhsusf_ANPVS_15", [["ACE_Flashlight_KSF1", 1], ["ACE_Chemlight_IR", 3], ["Chemlight_red", 3]]],

	//weapons
	[[(["TWC_UK3CB_BAF_L119A2_10_LDS"] call bis_fnc_selectrandom), ["twc_acc_rotex5_grey"]], ["rhs_weap_M320", []]],

	//linkeditems
	([""] + twc_loadout_basiclinkeditems)
];

twc_loadout_uksf_marksman = [
	//uniform
	(["UK3CB_BAF_U_CombatUniform_MTP_ShortSleeve"] call bis_fnc_selectrandom),

	//uniformitems
	([["ACRE_PRC343", 1]] + twc_loadout_basicuniformitems),

	//helmet
	"rhsusf_opscore_mc_cover_pelt",

	//vest
	(["rhsusf_spcs_ocp_rifleman"] call bis_fnc_selectrandom),

	//vestitems
	[["rhsusf_mag_17Rnd_9x19_JHP", 2], ["twc_acc_nt4_tan", 1], ["HandGrenade", 1], ["SmokeShell", 1], ["UK3CB_BAF_762_L42A1_20Rnd", 6], ["UK3CB_BAF_762_L42A1_20Rnd_T", 4]],

	//backpack
	"",

	//backpackitems
	[],

	//night kit
	["rhs_uniform_g3_blk", "rhsusf_ANPVS_15", [["rhsusf_acc_premier_anpvs27", 1], ["ACE_Flashlight_KSF1", 1], ["ACE_Chemlight_IR", 3], ["Chemlight_red", 3]]],

	//weapons
	[[(["TWC_HK417_scope_bipod"] call bis_fnc_selectrandom), []], ["rhsusf_weap_glock17g4", []]],

	//linkeditems
	([""] + twc_loadout_basiclinkeditems)
];

twc_loadout_uksf_medic = [
	//uniform
	(["UK3CB_BAF_U_CombatUniform_MTP_ShortSleeve"] call bis_fnc_selectrandom),

	//uniformitems
	([["ACRE_PRC343", 1]] + twc_loadout_basicuniformitems),

	//helmet
	"rhsusf_opscore_mc_cover_pelt",

	//vest
	(["rhsusf_spcs_ocp_rifleman"] call bis_fnc_selectrandom),

	//vestitems
	[["rhsusf_mag_17Rnd_9x19_JHP", 3], ["TWC_Item_Medical_SutureKit_20", 1], ["SmokeShell", 1], ["rhs_mag_30Rnd_556x45_M855A1_Stanag", 8], ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red", 8]],

	//backpack
	"TWC_Backpack_USMC2000_Medic",

	//backpackitems
	[["ACE_salineIV_250", 10]],

	//night kit
	["rhs_uniform_g3_blk", "rhsusf_ANPVS_15", [["ACE_Flashlight_KSF1", 1], ["ACE_Chemlight_IR", 3], ["Chemlight_red", 3]]],

	//weapons
	[[(["TWC_UK3CB_BAF_L119A2_10_LDS"] call bis_fnc_selectrandom), ["twc_acc_rotex5_grey"]], ["rhsusf_weap_glock17g4", []]],

	//linkeditems
	([""] + twc_loadout_basiclinkeditems)
];


erre_nightkit = ["CUP_U_B_BDUv2_roll2_dirty_CEU", "rhsusf_ANPVS_15", [["ACE_Flashlight_KSF1", 1], ["ACE_Chemlight_IR", 3], ["Chemlight_red", 3]]];


twc_loadout_1erre_sl = [
	//uniform
	(["CUP_U_B_BDUv2_roll2_dirty_CEU"] call bis_fnc_selectrandom),

	//uniformitems
	([["ACRE_PRC343", 1]] + twc_loadout_basicuniformitems),

	//helmet
	"rhsusf_opscore_paint_pelt",

	//vest
	(["CUP_V_B_Ciras_Olive", "CUP_V_B_Ciras_Khaki"] call bis_fnc_selectrandom),

	//vestitems
	[["rhsusf_mag_15Rnd_9x19_FMJ", 3], ["HandGrenade", 1], ["SmokeShell", 1], ["CUP_25Rnd_556x45_Famas", 14]],

	//backpack
	"UK3CB_BAF_B_Bergen_OLI_SL_A",

	//backpackitems
	[["ACRE_PRC117F", 1], ["CUP_25Rnd_556x45_Famas_Tracer_Red", 7]],

	//night kit
	erre_nightkit,

	//weapons
	[[(["CUP_Famas_F1_Rail"] call bis_fnc_selectrandom), [(["rhsusf_acc_eotech_552", "cup_optic_compm4"] call bis_fnc_selectrandom )]], ["rhsusf_weap_m9", []], ["ACE_Vector", []]],

	//linkeditems
	(["ItemcTab"] + twc_loadout_basiclinkeditems),
	
	//weapons to remove from crate, weapons to add
	
	[["all"], ([] + twc_crateweapons)],
	
	//mags to remove from crate, mags to add
	
	[["all"], ([["CUP_25Rnd_556x45_Famas", 50], ["CUP_25Rnd_556x45_Famas_Tracer_Red", 10], ["rhsusf_mag_15Rnd_9x19_FMJ", 15]] + twc_cratemagazines)],
	
	//items to remove from crate, mags to add
	
	[["all"], ([["rhsusf_ANPVS_15", 1]] + twc_crateitems)],
	
	//backpacks to remove from crate, backpacks to add
	
	[["all"], []]
];


twc_loadout_1erre_2ic = [
	//uniform
	(["CUP_U_B_BDUv2_roll2_dirty_CEU"] call bis_fnc_selectrandom),

	//uniformitems
	([["ACRE_PRC343", 1]] + twc_loadout_basicuniformitems),

	//helmet
	"rhsusf_opscore_paint_pelt",

	//vest
	(["CUP_V_B_Ciras_Olive", "CUP_V_B_Ciras_Khaki"] call bis_fnc_selectrandom),

	//vestitems
	[["rhsusf_mag_15Rnd_9x19_FMJ", 3], ["HandGrenade", 2], ["SmokeShell", 1], ["CUP_25Rnd_556x45_Famas_Tracer_Red", 7]],

	//backpack
	"UK3CB_BAF_B_Carryall_OLI",

	//backpackitems
	[["CUP_25Rnd_556x45_Famas", 20], ["ACE_EntrenchingTool", 1], ["DemoCharge_Remote_Mag", 2], ["ACE_M26_Clacker", 1]],

	//night kit
	erre_nightkit,

	//weapons
	[[(["CUP_Famas_F1_Rail"] call bis_fnc_selectrandom), [(["rhsusf_acc_eotech_552", "cup_optic_compm4"] call bis_fnc_selectrandom )]], ["rhsusf_weap_m9", []], ["ACE_MX2A", []]],

	//linkeditems
	([""] + twc_loadout_basiclinkeditems),
	
	//weapons to remove from crate, weapons to add
	
	[["all"], ([] + twc_crateweapons)],
	
	//mags to remove from crate, mags to add
	
	[["all"], ([["CUP_25Rnd_556x45_Famas", 50], ["CUP_25Rnd_556x45_Famas_Tracer_Red", 10], ["rhsusf_mag_15Rnd_9x19_FMJ", 15]] + twc_cratemagazines)],
	
	//items to remove from crate, mags to add
	
	[["all"], ([["rhsusf_ANPVS_15", 1]] + twc_crateitems)],
	
	//backpacks to remove from crate, backpacks to add
	
	[["all"], []]
];


twc_loadout_1erre_pointman = [
	//uniform
	(["CUP_U_B_BDUv2_roll2_dirty_CEU"] call bis_fnc_selectrandom),

	//uniformitems
	([["ACRE_PRC343", 1]] + twc_loadout_basicuniformitems),

	//helmet
	"rhsusf_opscore_paint_pelt",

	//vest
	(["CUP_V_B_Ciras_Olive", "CUP_V_B_Ciras_Khaki"] call bis_fnc_selectrandom),

	//vestitems
	[["rhsusf_mag_15Rnd_9x19_FMJ", 3], ["HandGrenade", 1], ["ACE_M84", 2], ["SmokeShell", 1], ["CUP_25Rnd_556x45_Famas", 14]],

	//backpack
	"B_Kitbag_rgr",

	//backpackitems
	[["CUP_sgun_M1014_Entry_vfg", 1], ["CUP_6Rnd_B_Beneli_74Pellets", 25], ["CUP_25Rnd_556x45_Famas_Tracer_Red", 5]],

	//night kit
	erre_nightkit,

	//weapons
	[[(["CUP_Famas_F1_Rail"] call bis_fnc_selectrandom), ["rhsusf_acc_eotech_552"]], ["rhsusf_weap_m9", []]],

	//linkeditems
	([""] + twc_loadout_basiclinkeditems),
	
	//weapons to remove from crate, weapons to add
	
	[["all"], ([] + twc_crateweapons)],
	
	//mags to remove from crate, mags to add
	
	[["all"], ([["CUP_25Rnd_556x45_Famas", 50], ["CUP_25Rnd_556x45_Famas_Tracer_Red", 10], ["rhsusf_mag_15Rnd_9x19_FMJ", 15], ["CUP_6Rnd_B_Benelli_74Slug", 15], ["CUP_6Rnd_B_Beneli_74Pellets", 15]] + twc_cratemagazines)],
	
	//items to remove from crate, mags to add
	
	[["all"], ([["rhsusf_ANPVS_15", 1]] + twc_crateitems)],
	
	//backpacks to remove from crate, backpacks to add
	
	[["all"], []]
];


twc_loadout_1erre_rifleman = [
	//uniform
	(["CUP_U_B_BDUv2_roll2_dirty_CEU"] call bis_fnc_selectrandom),

	//uniformitems
	([["ACRE_PRC343", 1]] + twc_loadout_basicuniformitems),

	//helmet
	"rhsusf_opscore_paint_pelt",

	//vest
	(["CUP_V_B_Ciras_Olive", "CUP_V_B_Ciras_Khaki"] call bis_fnc_selectrandom),

	//vestitems
	[["rhsusf_mag_15Rnd_9x19_FMJ", 3], ["HandGrenade", 1], ["ACE_M84", 2], ["SmokeShell", 1], ["CUP_25Rnd_556x45_Famas", 14]],

	//backpack
	"B_TacticalPack_blk",

	//backpackitems
	[["CUP_25Rnd_556x45_Famas_Tracer_Red", 9]],

	//night kit
	erre_nightkit,

	//weapons
	[[(["CUP_Famas_F1_Rail_Arid"] call bis_fnc_selectrandom), ["rksl_optic_eot552x_c", "cup_acc_llm01_desert_l"]], ["rhsusf_weap_m9", []]],

	//linkeditems
	([""] + twc_loadout_basiclinkeditems),
	
	//weapons to remove from crate, weapons to add
	
	[["all"], ([] + twc_crateweapons)],
	
	//mags to remove from crate, mags to add
	
	[["all"], ([["CUP_25Rnd_556x45_Famas", 50], ["CUP_25Rnd_556x45_Famas_Tracer_Red", 10], ["rhsusf_mag_15Rnd_9x19_FMJ", 15]] + twc_cratemagazines)],
	
	//items to remove from crate, mags to add
	
	[["all"], ([["rhsusf_ANPVS_15", 1]] + twc_crateitems)],
	
	//backpacks to remove from crate, backpacks to add
	
	[["all"], []]
];


twc_loadout_1erre_grenadier = [
	//uniform
	(["CUP_U_B_BDUv2_roll2_dirty_CEU"] call bis_fnc_selectrandom),

	//uniformitems
	([["ACRE_PRC343", 1]] + twc_loadout_basicuniformitems),

	//helmet
	"rhsusf_opscore_paint_pelt",

	//vest
	(["CUP_V_B_Ciras_Olive", "CUP_V_B_Ciras_Khaki"] call bis_fnc_selectrandom),

	//vestitems
	[["HandGrenade", 1], ["SmokeShell", 1], ["CUP_25Rnd_556x45_Famas", 14]],

	//backpack
	"B_TacticalPack_blk",

	//backpackitems
	[["CUP_25Rnd_556x45_Famas_Tracer_Red", 9],["1Rnd_Smoke_Grenade_shell", 4],["1Rnd_HE_Grenade_shell", 25]],

	//night kit
	erre_nightkit,

	//weapons
	[[(["CUP_Famas_F1_Rail"] call bis_fnc_selectrandom), ["rhsusf_acc_eotech_552"]], ["rhs_weap_M320", []]],

	//linkeditems
	([""] + twc_loadout_basiclinkeditems),
	
	//weapons to remove from crate, weapons to add
	
	[["all"], ([] + twc_crateweapons)],
	
	//mags to remove from crate, mags to add
	
	[["all"], ([["CUP_25Rnd_556x45_Famas", 50], ["CUP_25Rnd_556x45_Famas_Tracer_Red", 10], ["1Rnd_HE_Grenade_shell", 25], ["1Rnd_Smoke_Grenade_shell", 15]] + twc_cratemagazines)],
	
	//items to remove from crate, mags to add
	
	[["all"], ([["rhsusf_ANPVS_15", 1]] + twc_crateitems)],
	
	//backpacks to remove from crate, backpacks to add
	
	[["all"], []]
];

twc_loadout_1erre_marksman = [
	//uniform
	(["CUP_U_B_BDUv2_roll2_dirty_CEU"] call bis_fnc_selectrandom),

	//uniformitems
	([["ACRE_PRC343", 1]] + twc_loadout_basicuniformitems),

	//helmet
	"rhsusf_opscore_paint_pelt",

	//vest
	(["CUP_V_B_Ciras_Olive", "CUP_V_B_Ciras_Khaki"] call bis_fnc_selectrandom),

	//vestitems
	[["rhsusf_20Rnd_762x51_m118_special_Mag", 3], ["rhsusf_20Rnd_762x51_m62_Mag", 3], ["rhsusf_mag_15Rnd_9x19_FMJ", 3]],

	//backpack
	"UK3CB_BAF_B_Carryall_OLI",

	//backpackitems
	[["rhsusf_20Rnd_762x51_m118_special_Mag", 4], ["SmokeShell", 1]],

	//night kit
	erre_nightkit,

	//weapons
	[[(["rhs_weap_m14ebrri"] call bis_fnc_selectrandom), ["rhsusf_acc_leupoldmk4"]], ["rhsusf_weap_m9", []]],

	//linkeditems
	([""] + twc_loadout_basiclinkeditems),
	
	//weapons to remove from crate, weapons to add
	
	[["all"], ([] + twc_crateweapons)],
	
	//mags to remove from crate, mags to add
	
	[["all"], ([["rhsusf_20Rnd_762x51_m118_special_Mag", 50], ["rhsusf_20Rnd_762x51_m62_Mag", 10], ["rhsusf_mag_15Rnd_9x19_FMJ", 15]] + twc_cratemagazines)],
	
	//items to remove from crate, mags to add
	
	[["all"], ([["rhsusf_ANPVS_15", 1]] + twc_crateitems)],
	
	//backpacks to remove from crate, backpacks to add
	
	[["all"], []]
];


twc_loadout_1erre_medic = [
	//uniform
	(["CUP_U_B_BDUv2_roll2_dirty_CEU"] call bis_fnc_selectrandom),

	//uniformitems
	([["ACRE_PRC343", 1]] + twc_loadout_basicuniformitems),

	//helmet
	"rhsusf_opscore_paint_pelt",

	//vest
	(["CUP_V_B_Ciras_Olive", "CUP_V_B_Ciras_Khaki"] call bis_fnc_selectrandom),

	//vestitems
	[["rhsusf_mag_15Rnd_9x19_FMJ", 3], ["SmokeShell", 1], ["CUP_25Rnd_556x45_Famas", 14]],

	//backpack
	"TWC_Backpack_USMC2000_Medic",

	//backpackitems
	[["ACE_salineIV_250", 10]],

	//night kit
	erre_nightkit,

	//weapons
	[[(["CUP_Famas_F1"] call bis_fnc_selectrandom), ["rhsusf_acc_eotech_552"]], ["rhsusf_weap_m9", []]],

	//linkeditems
	([""] + twc_loadout_basiclinkeditems),
	
	//weapons to remove from crate, weapons to add
	
	[["all"], ([] + twc_crateweapons)],
	
	//mags to remove from crate, mags to add
	
	[["all"], ([["CUP_25Rnd_556x45_Famas", 50], ["CUP_25Rnd_556x45_Famas_Tracer_Red", 10], ["rhsusf_mag_15Rnd_9x19_FMJ", 15]] + twc_cratemagazines)],
	
	//items to remove from crate, mags to add
	
	[["all"], ([["rhsusf_ANPVS_15", 1]] + twc_crateitems + twc_loadout_basicmedicitems)],
	
	//backpacks to remove from crate, backpacks to add
	
	[["all"], []]
];

