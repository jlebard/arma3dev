//LEVEL 3

_lootPosition_force = [

[[31094.2,5235.69,0.00141239]],
[[33140.4,3985.85,0.00143814]],
[[33746.9,3438.28,0.00143814]]

];

_lootPosition_random = [

[[33238.9,3075.65,0.00143909]],
[[33537.3,4608.71,0.00143814]],
[[32211.2,2802.41,0.00143957]],
[[34328.6,4990.52,0.00143862]]
];
// LEVEL 2
_lootPrisonPosition_force = [29944.9,17454.9,0.00143814];
_lootPrisonPosition_random =  [29992.3,17455.3,0.00143814];

//LEVEL 1



//Weapons, Magazines, Item list
MyWeaponsSpecialList = ["FLAY_CompoundBow","FLAY_RecurveBow"];
MyAmnoSpecialList = ["FLAY_1Rnd_Arrow","FLAY_1Rnd_BroadheadArrow","FLAY_1Rnd_PrecisionArrow","FLAY_1Rnd_ExplosiveArrow","FLAY_point_Broadhead","FLAY_point_Explosive"];
MyItemSpecialList = ["FLAY_acc_quiver_7","FLAY_acc_quiver_7b","FLAY_acc_quiver_7p","FLAY_acc_quiver_7he","FLAY_acc_stabilizer","FLAY_optic_aco","FLAY_optic_arco","FLAY_acc_pointer_ir","FLAY_optic_holosight"];

MyWeaponList= ["AKM_EPOCH","sr25_epoch","arifle_Katiba_GL_F","arifle_Katiba_C_F","arifle_Katiba_F","l85a2_epoch","l85a2_pink_epoch","l85a2_ugl_epoch","m4a3_EPOCH","m16_EPOCH","m16Red_EPOCH","srifle_GM6_F","srifle_GM6_LRPS_F","srifle_GM6_SOS_F","srifle_LRR_F","srifle_LRR_SOS_F","srifle_LRR_LRPS_F","srifle_DMR_04_F","srifle_DMR_05_blk_F","m107_EPOCH","m107Tan_EPOCH","srifle_DMR_02_F","srifle_DMR_02_camo_F","srifle_DMR_02_sniper_F","srifle_DMR_03_F","srifle_DMR_03_khaki_F","srifle_DMR_03_tan_F","srifle_DMR_03_multicam_F","srifle_DMR_03_woodland_F","srifle_DMR_03_spotter_F","srifle_DMR_04_F","srifle_DMR_04_Tan_F","srifle_DMR_05_blk_F","srifle_DMR_05_hex_F","srifle_DMR_05_tan_f","srifle_DMR_06_camo_F","srifle_DMR_06_olive_F","srifle_LRR_F","srifle_GM6_F","srifle_DMR_01_F","M14_EPOCH","M14Grn_EPOCH","srifle_EBR_F"];
MyAmnoList=["5Rnd_127x108_APDS_Mag","5Rnd_127x108_Mag","7Rnd_408_Mag","10Rnd_93x64_DMR_05_Mag","10Rnd_127x54_Mag"];
MyItemList=["optic_NVS","optic_SOS","optic_LRPS","optic_AMS","optic_AMS_khk","optic_AMS_snd","optic_KHS_blk","optic_KHS_hex","optic_KHS_old","optic_KHS_tan","optic_DMS","optic_Arco","optic_Hamr","Elcan_Exile","Elcan_reflex_Exile","optic_MRCO","optic_Holosight","optic_Holosight_smg","optic_Aco","optic_ACO_grn","optic_Aco_smg","optic_ACO_grn_smg","optic_Yorris","optic_MRD"];


//Special
MyEpochSpecialWeapons=["MeleeSword","MeleeRod","Plunger"];
MyEpochSpecialMagazines=["sledge_swing","stick_swing","stick_swing"];
MyEpochSpecialGIFT = ["ItemGoldBar10oz","ItemGoldBar","ItemSafe","ItemLocKbox"];











//No write below
{
	_where = _x select 0;
	[_where,1] call BABSPAWNVEHICLE_fnc_spawnloot;

} forEach _lootPosition_force;

{
	_nb = floor random 10;
	if(_nb > 7) then {
		_where = _x select 0;
		[_where,1] call BABSPAWNVEHICLE_fnc_spawnloot;
	}
} forEach _lootPosition_random;






[_lootPrisonPosition_force,0] call BABSPAWNVEHICLE_fnc_spawnloot;

_nbx = floor random 10;
if(_nbx > 7) then {

		[_lootPrisonPosition_random,0] call BABSPAWNVEHICLE_fnc_spawnloot;
	}
