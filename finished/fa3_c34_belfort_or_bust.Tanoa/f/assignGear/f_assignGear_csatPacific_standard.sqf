// F3 - Folk ARPS Assign Gear Script - AAF - Light Loadout
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// ====================================================================================

// DEFINE UNIT TYPE LOADOUTS
// The following blocks of code define loadouts for each type of unit (the unit type
// is passed to the script in the first variable)

switch (_typeofUnit) do
{

// ====================================================================================
// Automatic Rifleman Loadout:
	case "ar":
	{
		_unit addmagazine [_ARmag, (30+(floor (random 50)))];
		_unit addweapon _AR;
		_unit addItem _firstaid;
		_unit addmagazines [_smokegrenade, 1];
		_unit addmagazines [_ARmag, 2];
		_unit setUnitTrait ["loadcoef",1.3];
	};
// Rifleman (AT) Loadout:
	case "rat":
	{
		_unit addBackpack _bag;
		_unit addmagazines [_riflemag, 1];
		_unit addweapon _rifle;
		_unit addItem _firstaid;
		_unit addmagazines [_RATmag, 1];
		_unit addweapon _RAT;
		_unit addmagazines [_smokegrenade, 3];
		_unit addmagazines [_riflemag, 3];
		_unit setUnitTrait ["loadcoef",1.2];
	};
// Assistant Autorifleman Loadout:
	case "aar":
	{
		_unit addmagazine [_riflemag, (15+(floor (random 10)))];
		_unit addweapon _rifle;
		_unit addItem _firstaid;
		_unit addmagazines [_smokegrenade, 3];
		_unit addmagazines [_riflemag, 3];
		_unit setUnitTrait ["loadcoef",1.3];
	};
// Fire Team Leader Loadout:
	case "ftl":
	{
		_unit addmagazine [_glriflemag, (15+(floor (random 10)))];
		_unit addmagazines [_glmag, 1];
		_unit addweapon _glrifle;
		_unit addItem _firstaid;
		_unit addmagazines [_smokegrenade, 2];
		_unit addmagazines [_glriflemag, 4];
		_unit addmagazines [_glmag, 2];
		_unit addmagazines [_glsmokewhite, 2];
		_unit addWeapon "Binocular";
		_unit addmagazines [_smokegrenadegreen, 2];
		_unit setUnitTrait ["loadcoef",1.3];
	};
// Squad Leader / DC Loadout:
	case "dc":
	{
		_unit addmagazine [_glriflemag, (20+(floor (random 10)))];
		_unit addmagazines [_glmag, 1];
		_unit addweapon _glrifle;
		_unit addItem _firstaid;
		_unit addmagazines [_pistolmag, 1];
		_unit addweapon _pistol;
		_unit addmagazines [_smokegrenade, 2];
		_unit addmagazines [_glriflemag, 4];
		_unit addmagazines [_glmag, 2];
		_unit addmagazines [_glsmokewhite, 2];
		_unit addmagazines [_pistolmag, 1];
		_unit addWeapon "Binocular";
		_unit setUnitTrait ["loadcoef",1.3];
	};
// Platoon CO Loadout:
	case "co":
	{
		_unit addmagazine [_glriflemag, (20+(floor (random 10)))];
		_unit addmagazines [_glsmokewhite, 1];
		_unit addweapon _glrifle;
		_unit addItem _firstaid;
		_unit addmagazines [_pistolmag, 1];
		_unit addweapon _pistol;
		_unit addmagazines [_smokegrenade, 2];
		_unit addmagazines [_glriflemag, 4];
		_unit addmagazines [_glsmokewhite, 5];
		_unit addmagazines [_glsmokered, 3];
		_unit addWeapon "Binocular";
		_unit setUnitTrait ["loadcoef",1.3];
	};
// JTAC Loadout:
	case "jtac":
	{
		_unit addmagazines [_glriflemag, 1];
		_unit addmagazines [_glsmokered, 1];
		_unit addweapon _glrifle;
		_unit addmagazines [_pistolmag, 1];
		_unit addweapon _pistol;
		_unit addItem _firstaid;
		_unit addmagazines [_smokegrenade, 3];
		_unit addmagazines [_glriflemag, 4];
		_unit addmagazines [_glriflemag_tr, 2];
		_unit addmagazines [_glsmokered, 8];
		_unit addmagazines [_pistolmag, 4];
		_attachments pushback (_attach1); // Adds laser pointer, keeps default scope
        _unit addmagazines ["Laserbatteries", 1];
		_unit addWeapon _laserdesignator;
	};
// Medic Loadout:
	case "m":
	{
		_unit addBackpack _bag;
		_unit addmagazines [_riflemag, 1];
		_unit addweapon _rifle;
		_unit addmagazines [_smokegrenade, 5];
		_unit addmagazines [_riflemag, 2];
		_unit addItem _medkit;
	};
// Designated Marksman Loadout:
	case "dm":
	{
		_unit addmagazines [_DMriflemag, 1];
		_unit addweapon _DMrifle;
		_attachments = [_bipod1,_scope2]; // Overwrites default attachments to add a bipod and scope 2
		_unit addItem _firstaid;
		_unit addmagazines [_smokegrenade, 3];
		_unit addmagazines [_DMriflemag, 6];
		_unit addmagazines [_grenade, 2];
	};
// Medium MG Gunner Loadout:
	case "mmgg":
	{
		_unit addBackpack _bag;
		_unit addmagazines [_MMGmag, 1];
		_unit addweapon _MMG;
		_attachments pushback (_bipod1); // Adds the bipod
		_unit addItem _firstaid;
		_unit addmagazines [_smokegrenade, 3];
		_unit addmagazines [_MMGmag, 2];
	};
// Medium MG Team Leader Loadout:
	case "mmgag":
	{
		_unit addBackpack _bag;
		_unit addmagazines [_riflemag, 1];
		_unit addweapon _rifle;
		_unit addItem _firstaid;
		_unit addmagazines [_smokegrenade, 3];
		_unit addmagazines [_riflemag, 4];
		_unit addmagazines [_riflemag_tr, 2];
		_unit addmagazines [_grenade, 2];
		_unit addmagazines [_MMGmag, 1];
		_unit addmagazines [_MMGmag, 2];
		_unit addWeapon "Rangefinder";
	};
// Heavy MG Gunner Loadout:
	case "hmgg":
	{
		_unit addBackpack _baghmgg;
		_unit addmagazines [_riflemag, 1];
		_unit addweapon _rifle;
		_unit addItem _firstaid;
		_unit addmagazines [_smokegrenade, 3];
		_unit addmagazines [_riflemag, 2];
		_unit addmagazines [_riflemag_tr, 2];
	};
// Heavy MG Team Leader Loadout:
	case "hmgag":
	{
		_unit addBackpack _baghmgag;
		_unit addmagazines [_riflemag, 1];
		_unit addweapon _rifle;
		_unit addItem _firstaid;
		_unit addmagazines [_smokegrenade, 3];
		_unit addmagazines [_riflemag, 4];
		_unit addmagazines [_riflemag_tr, 2];
		_unit addmagazines [_grenade, 2];
		_unit addWeapon "Rangefinder";
	};
// Medium AT Gunner Loadout:
	case "matg":
	{
		_unit addBackpack _baglarge;
		_unit addmagazines [_riflemag, 1];
		_unit addweapon _rifle;
        _unit addmagazines [_MATmag1, 1];
		_unit addweapon _MAT;
		_unit addItem _firstaid;
		_unit addmagazines [_smokegrenade, 3];
		_unit addmagazines [_riflemag, 2];
		_unit addmagazines [_riflemag_tr, 2];
		_unit addmagazines [_MATmag1, 2];
	};
// Medium AT Team Leader Loadout:
	case "matag":
	{
		_unit addBackpack _bag;
		_unit addmagazines [_riflemag, 1];
		_unit addweapon _rifle;
		_unit addItem _firstaid;
		_unit addmagazines [_smokegrenade, 3];
		_unit addmagazines [_riflemag, 4];
		_unit addmagazines [_riflemag_tr, 2];
		_unit addmagazines [_grenade, 2];
		_unit addmagazines [_MATmag1, 2];
		_unit addWeapon "Rangefinder";
	};
// Heavy AT Gunner Loadout:
	case "hatg":
	{
		_unit addBackpack _baghatg;
		_unit addmagazines [_riflemag, 1];
		_unit addweapon _rifle;
		_unit addmagazines [_HATmag1, 1];
		_unit addweapon _HAT;
		_unit addItem _firstaid;
		_unit addmagazines [_smokegrenade, 3];
		_unit addmagazines [_riflemag, 2];
		_unit addmagazines [_riflemag_tr, 2];
		_unit addmagazines [_HATmag1, 1];
	};
// Heavy AT Team Leader Loadout:
	case "hatag":
	{
		_unit addBackpack _baghatag;
		_unit addmagazines [_riflemag, 1];
		_unit addweapon _rifle;
		_unit addItem _firstaid;
		_unit addmagazines [_smokegrenade, 3];
		_unit addmagazines [_riflemag, 4];
		_unit addmagazines [_riflemag_tr, 2];
		_unit addmagazines [_grenade, 2];
		_unit addmagazines [_HATmag1, 2];
		_unit addWeapon "Rangefinder";
	};
// Mortar Gunner Loadout:
	case "mtrg":
	{
		_unit addBackpack _bagmtrg;
		_unit addmagazines [_riflemag, 1];
		_unit addweapon _rifle;
		_unit addItem _firstaid;
		_unit addmagazines [_smokegrenade, 3];
		_unit addmagazines [_riflemag, 2];
		_unit addmagazines [_riflemag_tr, 2];
	};
// Mortar Team Leader Loadout:
	case "mtrag":
	{
		_unit addBackpack _bagmtrag;
		_unit addmagazines [_riflemag, 1];
		_unit addweapon _rifle;
		_unit addItem _firstaid;
		_unit addmagazines [_smokegrenade, 3];
		_unit addmagazines [_riflemag, 4];
		_unit addmagazines [_riflemag_tr, 2];
		_unit addmagazines [_grenade, 2];
		_unit addWeapon "Rangefinder";
	};
// Medium SAM Gunner Loadout:
	case "msamg":
	{
		_unit addBackpack _bag;
		_unit addmagazines [_riflemag, 1];
		_unit addweapon _rifle;
		_unit addmagazines [_SAMmag, 1];
		_unit addweapon _SAM;
		_unit addItem _firstaid;
		_unit addmagazines [_smokegrenade, 3];
		_unit addmagazines [_riflemag, 2];
		_unit addmagazines [_riflemag_tr, 2];
	};
// Medium SAM Team Leader Loadout:
	case "msamag":
	{
		_unit addBackpack _baglarge;
		_unit addmagazines [_riflemag, 1];
		_unit addweapon _rifle;
		_unit addItem _firstaid;
		_unit addmagazines [_smokegrenade, 3];
		_unit addmagazines [_riflemag, 4];
		_unit addmagazines [_riflemag_tr, 2];
		_unit addmagazines [_grenade, 2];
		_unit addmagazines [_SAMmag, 2];
		_unit addWeapon "Rangefinder";
	};
// Heavy SAM Gunner Loadout:
	case "hsamg":
	{
		_unit addBackpack _baghsamg;
		_unit addmagazines [_riflemag, 1];
		_unit addweapon _rifle;
		_unit addItem _firstaid;
		_unit addmagazines [_smokegrenade, 3];
		_unit addmagazines [_riflemag, 2];
		_unit addmagazines [_riflemag_tr, 2];
	};
// Heavy SAM Team Leader Loadout:
	case "hsamag":
	{
		_unit addBackpack _baghmgag;
		_unit addmagazines [_riflemag, 1];
		_unit addweapon _rifle;
		_unit addItem _firstaid;
		_unit addmagazines [_smokegrenade, 3];
		_unit addmagazines [_riflemag, 4];
		_unit addmagazines [_riflemag_tr, 2];
		_unit addmagazines [_grenade, 2];
		_unit addWeapon "Rangefinder";
	};
// Sniper Loadout:
	case "sn":
	{
		_unit addmagazines [_SNrifleMag, 1];
		_unit addweapon _SNrifle;
		_attachments = [_bipod1,_scope3]; // Overwrites default attachments to add a bipod and scope 3
		_unit addmagazines [_pistolmag, 1];
		_unit addweapon _pistol;
		_unit addItem _firstaid;
		_unit addmagazines [_smokegrenade, 3];
		_unit addmagazines [_SNrifleMag, 6];
		_unit addmagazines [_pistolmag, 5];
	};
// Spotter Loadout:
	case "sp":
	{
		_unit addmagazines [_riflemag, 1];
		_unit addweapon _rifle;
		_unit addItem _firstaid;
		_unit addmagazines [_smokegrenade, 3];
		_unit addmagazines [_riflemag, 4];
		_unit addmagazines [_riflemag_tr, 2];
		_unit addmagazines [_grenade, 2];
		_attachments pushback (_attach1); // Adds laser pointer, keeps default scope
		_unit addWeapon "Rangefinder";
		_unit addmagazines [_SNrifleMag, 3];
	};
// Vehicle Commander Loadout:
	case "vc":
	{
		_unit addmagazines [_smgmag, 1];
		_unit addweapon _smg;
		_unit addItem _firstaid;
		_unit addmagazines [_smokegrenadeblue, 3];
		_unit addmagazines [_smgmag, 4];
		_unit addweapon "Rangefinder";
	};
// Vehicle Gunner Loadout:
	case "vg":
	{
		_unit addmagazines [_smgmag, 1];
		_unit addweapon _smg;
		_unit addItem _firstaid;
		_unit addmagazines [_smokegrenadeblue, 3];
		_unit addmagazines [_smgmag, 4];
	};
// Vehicle Driver Loadout:
	case "vd":
	{
		_unit setUnitTrait ["engineer",true]; // Can repair
		_unit addBackpack _bag;
		_unit addmagazines [_smgmag, 1];
		_unit addweapon _smg;
		_unit addItem _firstaid;
		_unit addmagazines [_smokegrenadeblue, 3];
		_unit addmagazines [_smgmag, 4];
		_unit addItem "ToolKit";
	};
// Heli Pilot Loadout:
	case "pp":
	{
		_unit setUnitTrait ["engineer",true]; // Can repair
		_unit addBackpack _bag;
		_unit addmagazines [_smgmag, 1];
		_unit addweapon _smg;
		_unit addItem _firstaid;
		_unit addmagazines [_smokegrenadeblue, 3];
		_unit addmagazines [_smgmag, 4];
		_unit addItem "ToolKit";
	};
// Heli Crew Chief Loadout:
	case "pcc":
	{
		_unit setUnitTrait ["engineer",true]; // Can repair
		_unit addBackpack _bag;
		_unit addmagazines [_smgmag, 1];
		_unit addweapon _smg;
		_unit addItem _firstaid;
		_unit addmagazines [_smokegrenadeblue, 3];
		_unit addmagazines [_smgmag, 4];
		_unit addItem "ToolKit";
	};
// Heli Crew Loadout:
	case "pc":
	{
		_unit addmagazines [_smgmag, 1];
		_unit addweapon _smg;
		_unit addItem _firstaid;
		_unit addmagazines [_smokegrenadeblue, 3];
		_unit addmagazines [_smgmag, 4];
	};
// Engineer (Demo) Loadout:
	case "eng":
	{
		_unit addBackpack _baglarge;
		_unit addmagazines [_riflemag, 1];
		_unit addweapon _rifle;
		_unit addItem _firstaid;
		_unit addmagazines [_smokegrenade, 3];
		_unit addmagazines [_riflemag, 4];
		_unit addmagazines [_riflemag_tr, 2];
		_unit addmagazines [_grenade, 2];
		_unit addItem "ToolKit";
		_unit addItem "MineDetector";
		_unit addmagazines [_satchel, 2];
	};
// Engineer (Mines) Loadout:
	case "engm":
	{
		_unit addBackpack _baglarge;
		_unit addmagazines [_riflemag, 1];
		_unit addweapon _rifle;
		_unit addItem _firstaid;
		_unit addmagazines [_smokegrenade, 3];
		_unit addmagazines [_riflemag, 4];
		_unit addmagazines [_riflemag_tr, 2];
		_unit addmagazines [_grenade, 2];
		_unit addItem "ToolKit";
		_unit addItem "MineDetector";
		_unit addmagazines [_APmine2, 4];
		_unit addmagazines [_ATmine, 1];
	};
// UAV Operator Loadout:
	case "uav":
	{
		_unit addBackpack _baguav;
		_unit addmagazines [_riflemag, 1];
		_unit addweapon _rifle;
		_unit addItem _firstaid;
		_unit addmagazines [_smokegrenade, 3];
		_unit addmagazines [_riflemag, 4];
		_unit addmagazines [_riflemag_tr, 2];
		_unit linkItem _uavterminal;
	};
// Diver Loadout:
	case "div":
	{
		_unit addBackpack _bagdiver;
		_unit addmagazines [_diverMag1, 1];
		_unit addweapon _diverWep;
		_unit addItem _firstaid;
		_unit addmagazines [_smokegrenade, 3];
		_unit addmagazines [_diverMag1, 4];
		_unit addmagazines [_diverMag2, 2];
		_unit addmagazines [_diverMag3, 3];
		_unit addmagazines [_grenade, 3];
	};
// Rifleman Loadout:
	case "r":
	{
		_unit addmagazines [_riflemag, 1];
		_unit addweapon _rifle;
		_unit addItem _firstaid;
		_unit addmagazines [_smokegrenade, 3];
		_unit addmagazines [_riflemag, 4];
		_unit addmagazines [_riflemag_tr, 2];
		_unit addmagazines [_grenade, 3];
	};
// Carbineer Loadout:
	case "car":
	{
		_unit addmagazines [_riflemag, 1];
		_unit addweapon _rifle;
		_unit addItem _firstaid;
		_unit addmagazines [_smokegrenade, 3];
		_unit addmagazines [_riflemag, 4];
		_unit addmagazines [_riflemag_tr, 2];
		_unit addmagazines [_grenade, 3];
	};
// Submachinegunner Loadout: (Actually Viper)
	case "smg":
	{
		_unit setUnitTrait ["medic",true]; //viper units can be fancy
		_unit setUnitTrait ["loadcoef",1.2];
		_unit addmagazines ["30Rnd_65x39_caseless_green", 1];
		_unit addmagazine ["10Rnd_50BW_Mag_F", (floor (random [2,6,10]))];
		_unit addweapon "arifle_ARX_blk_F";
		_unit addmagazines [_smokegrenade, 3];
		_unit addmagazines ["30Rnd_65x39_caseless_green", 3];
		_unit addmagazines [_grenade, 1];
	};
// Grenadier Loadout:
	case "gren":
	{
		_unit addmagazines [_glriflemag, 1];
		_unit addmagazines [_glmag, 1];
		_unit addweapon _glrifle;
		_unit addItem _firstaid;
		_unit addmagazines [_smokegrenade, 3];
		_unit addmagazines [_glriflemag, 4];
		_unit addmagazines [_glriflemag_tr, 2];
		_unit addmagazines [_glmag, 5];
	};

// Include the loadouts for vehicles and crates:
#include "f_assignGear_csat_v.sqf";

// ====================================================================================

// END SWITCH FOR DEFINE UNIT TYPE LOADOUTS
};
