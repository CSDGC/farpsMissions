// F3 - Folk ARPS Assign Gear Script - AAF - Light Loadout
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// ====================================================================================

// DEFINE UNIT TYPE LOADOUTS
// The following blocks of code define loadouts for each type of unit (the unit type
// is passed to the script in the first variable)

switch (_typeofUnit) do
{

// ====================================================================================
// Rifleman Loadout:
	case "r":
	{
		_unit addmagazines [_carbinemag, 1];
		_unit addweapon _carbine;
		_unit addmagazines [_pistolmag, 2];
		_unit addweapon _pistol;
		_unit addItem _firstaid;
		_unit addmagazines [_smokegrenade, 3];
		_unit addmagazines [_carbinemag, 4];
		_unit addmagazines [_carbinemag_tr, 2];
		_unit addmagazines [_Mgrenade, 1];
	};
// Operator Loadout:
	case "smg":
	{
		_unit addmagazines [_smgmag, 1];
		_unit addweapon _smg;
		_attachments = ["optic_ACO_grn_smg",_silencer2,_attach1];
		_unit addmagazines [_pistolmag, 2];
		_unit addweapon _pistol;
		_unit addItem _firstaid;
		_unit addmagazines [_smokegrenade, 3];
		_unit addmagazines [_smgmag, 10];
	};
// Fire Team Leader Loadout:
	case "ftl":
	{
		_unit addmagazines [_riflemag, 1];
		_unit addweapon _rifle;
		_unit addmagazines [_pistolmag, 3];
		_unit addweapon _pistol;
		_unit addItem _firstaid ;
		_unit addmagazines [_smokegrenade, 3];
		_unit addmagazines [_riflemag, 4];
		_unit addmagazines [_riflemag_tr, 2];
		_unit addmagazines [_Mgrenade, 1];
		_unit addWeapon "Rangefinder";
	};
// Squad Leader / DC Loadout:
	case "dc":
	{
		_unit addmagazines [_glriflemag, 1];
		_unit addmagazines [_glsmokewhite, 1];
		_unit addweapon _glrifle;
		_attachments = [_scope1,"muzzle_snds_H",_attach1];
		_unit addmagazines [_pistolmag, 1];
		_unit addweapon _pistol;
		_unit addItem _firstaid ;
		_unit addmagazines [_smokegrenade, 2];
		_unit addmagazines [_glriflemag, 4];
		_unit addmagazines [_glriflemag_tr, 2];
		_unit addmagazines [_glsmokewhite, 1];
		_unit addmagazines [_glsmokered, 1];
		_unit addmagazines [_pistolmag, 2];
		_unit addWeapon "Rangefinder";
		_unit addmagazines [_smokegrenadepurple, 2];
	};
// Platoon CO Loadout:
	case "co":
	{
		_unit addmagazines [_glriflemag, 1];
		_unit addmagazines [_glsmokewhite, 1];
		_unit addweapon _glrifle;
		_attachments = [_scope1,"muzzle_snds_H",_attach1];
		_unit addmagazines [_pistolmag, 1];
		_unit addweapon _pistol;
		_unit addItem _firstaid ;
		_unit addmagazines [_smokegrenade, 2];
		_unit addmagazines [_glriflemag, 4];
		_unit addmagazines [_glriflemag_tr, 2];
		_unit addmagazines [_glsmokewhite, 1];
		_unit addmagazines [_glsmokered, 1];
		_unit addmagazines [_pistolmag, 2];
		_unit addWeapon "Rangefinder";
		_unit addmagazines [_smokegrenadepurple, 2];
	};
// Medic Loadout:
	case "m":
	{
		_unit addBackpack _bag;
		_unit addmagazines [_smgmag, 1];
		_unit addweapon _smg;
		_attachments = ["optic_ACO_grn_smg",_silencer2,_attach1];
		_unit addItem _firstaid;
		_unit addmagazines [_smokegrenade, 4];
		_unit addmagazines [_smgmag, 10];
		_unit addItem _medkit;
		_unit addItem _firstaid;
		_unit addItem _firstaid;
	};
// Designated Marksman Loadout:
	case "dm":
	{
		_unit addmagazines [_DMriflemag, 1];
		_unit addweapon _DMrifle;
		_attachments = [_bipod1,_scope2,"muzzle_snds_65_TI_blk_F"]; // Overwrites default attachments to add a bipod and scope 2
		_unit addItem _firstaid ;
		_unit addmagazines [_smokegrenade, 3];
		_unit addmagazines [_DMriflemag, 8];
		_unit addmagazines [_Mgrenade, 2];
	};
// Medium MG Gunner Loadout:
	case "mmgg":
	{
		_unit addmagazines [_MMGmag, 1];
		_unit addweapon _MMG;
		_attachments = ["muzzle_snds_338_black",_bipod1];
		_unit addItem _firstaid ;
		_unit addmagazines [_smokegrenade, 3];
		_unit addmagazines [_MMGmag, 2];
	};
// Medium MG Team Leader Loadout:
	case "mmgag":
	{
		_unit addBackpack _bag;
		_unit addmagazines [_glriflemag, 1];
		_unit addweapon "arifle_MX_Black_F";
		_attachments = [_scope1,"muzzle_snds_H",_attach1,_bipod1];
		_unit addItem _firstaid ;
		_unit addmagazines [_smokegrenade, 3];
		_unit addmagazines [_glriflemag, 4];
		_unit addmagazines [_glriflemag_tr, 2];
		_unit addmagazines [_Mgrenade, 2];
		_unit addmagazines [_MMGmag, 3];
		_unit addWeapon "Rangefinder";
	};
// CTRG SpecOp Loadout
	case "car":
	{
		_unit addmagazines [_carbinemag, 1];
		_unit addweapon "arifle_SPAR_01_blk_F";
		_attachments = [_scope1,_silencer1,_attach1,_bipod2];
		_unit addItem _firstaid ;
		_unit addmagazines [_pistolmag, 2];
		_unit addweapon _pistol;
		_unit addmagazines [_smokegrenade, 3];
		_unit addmagazines [_carbinemag, 4];
		_unit addmagazines [_carbinemag_tr, 2];
		_unit addmagazines [_Mgrenade, 3];
		_unit unlinkItem "Integrated_NVG_F";
		_unit linkItem "NVGogglesB_blk_F";
	};
// CTRG Autorifle Loadout
	case "aar":
	{
		_unit addmagazines ["150Rnd_556x45_Drum_Mag_F", 1];
		_unit addweapon "arifle_SPAR_02_blk_F";
		_attachments = [_scope1,_silencer1,_attach1,_bipod2];
		_unit addItem _firstaid ;
		_unit addmagazines [_pistolmag, 2];
		_unit addweapon _pistol;
		_unit addmagazines [_smokegrenade, 3];
		_unit addmagazines ["150Rnd_556x45_Drum_Mag_F", 2];
		_unit addmagazines ["150Rnd_556x45_Drum_Mag_Tracer_F", 1];
		_unit unlinkItem "Integrated_NVG_F";
		_unit linkItem "NVGogglesB_blk_F";
	};
// Sniper Loadout:
	case "sn":
	{
		_unit addmagazines [_SNrifleMag, 1];
		_unit addweapon _SNrifle;
		_attachments = [_bipod1,_scope2,"muzzle_snds_338_black"]; // Overwrites default attachments to add a bipod and scope 3
		_unit addmagazines [_pistolmag, 1];
		_unit addweapon _pistol;
		_unit addItem _firstaid ;
		_unit addmagazines [_smokegrenade, 3];
		_unit addmagazines [_SNrifleMag, 6];
		_unit addmagazines [_pistolmag, 3];
	};
// Spotter Loadout:
	case "sp":
	{
		_unit addmagazines [_glriflemag, 1];
		_unit addweapon "arifle_MX_Black_F";
		_attachments = [_scope1,"muzzle_snds_H",_attach1,_bipod2];
		_unit addItem _firstaid ;
		_unit addmagazines [_pistolmag, 1];
		_unit addweapon _pistol;
		_unit addmagazines [_smokegrenade, 3];
		_unit addmagazines [_glriflemag, 4];
		_unit addmagazines [_glriflemag_tr, 2];
		_unit addmagazines [_pistolmag, 3];
		_unit addmagazines [_Mgrenade, 1];
		_unit addWeapon "Rangefinder";
		_unit addmagazines [_SNrifleMag, 3];
	};

// ====================================================================================

// END SWITCH FOR DEFINE UNIT TYPE LOADOUTS
};
