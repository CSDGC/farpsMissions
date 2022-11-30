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
		_unit addmagazines [_ARmag, 1];
		_unit addweapon _AR;
		_attachments = [];
		_unit addItem _firstaid ;
		_unit addmagazines [_smokegrenade, 3];
		_unit addmagazines [_ARmag, 2];
		_unit addmagazines [_ARmag_tr, 1];
		_unit addmagazines [_grenade, 1];
	};
// Rifleman (AT) Loadout:
	case "rat":
	{
		_unit addBackpack _bag;
		_unit addmagazines [_carbinemag, 1];
		_unit addweapon _carbine;
		_unit addmagazines [_RATmag, 1];
		_unit addweapon _RAT;
		_unit addItem _firstaid ;
		_unit addmagazines [_smokegrenade, 3];
		_unit addmagazines [_carbinemag, 4];
		_unit addmagazines [_carbinemag_tr, 2];
		_unit addmagazines [_grenade, 1];
	};
// Assistant Autorifleman Loadout:
	case "aar":
	{
		_unit addBackpack _bag;
		_unit addmagazines [_riflemag, 1];
		_unit addweapon _rifle;
		_unit addItem _firstaid;
		_unit addItem _binocular;
		_attachments pushback _bipod1;
		_unit addmagazines [_smokegrenade, 3];
		_unit addmagazines [_riflemag, 2];
		_unit addmagazines [_riflemag_tr, 4];
		_unit addmagazines [_ARmag, 2];
		_unit addmagazines [_grenade, 2];
	};
// Rifleman Loadout:
	case "r":
	{
		_unit addmagazines [_riflemag, 1];
		_unit addweapon _rifle;
		_unit addItem _firstaid ;
		_unit addmagazines [_smokegrenade, 3];
		_unit addmagazines [_riflemag, 4];
		_unit addmagazines [_riflemag_tr, 2];
		_unit addmagazines [_grenade, 2];
	};
// Fire Team Leader Loadout:
	case "ftl":
	{
		_unit addmagazines [_glriflemag, 1];
		_unit addmagazines [_glmag, 1];
		_unit addweapon _glrifle;
		_unit addItem _firstaid ;
		_unit addmagazines [_smokegrenade, 3];
		_unit addmagazines [_glriflemag, 4];
		_unit addmagazines [_glriflemag_tr, 2];
		_unit addmagazines [_glmag, 5];
		_unit addmagazines [_glsmokewhite, 3];
		_unit addWeapon "Rangefinder";
		_unit addmagazines [_smokegrenadegreen, 2];
	};
// Squad Leader / DC Loadout:
	case "dc":
	{
		_unit addmagazines [_glriflemag, 1];
		_unit addmagazines [_glmag, 1];
		_unit addweapon _glrifle;
		_unit addmagazines [_pistolmag, 1];
		_unit addweapon _pistol;
		_unit addItem _firstaid ;
		_unit addmagazines [_smokegrenade, 3];
		_unit addmagazines [_glriflemag, 4];
		_unit addmagazines [_glriflemag_tr, 2];
		_unit addmagazines [_glmag, 5];
		_unit addmagazines [_glsmokewhite, 3];
		_unit addmagazines [_glsmokered, 3];
		_unit addmagazines [_pistolmag, 2];
		_unit addWeapon "Rangefinder";
		_unit addmagazines [_smokegrenadepurple, 3];
	};
// Platoon CO Loadout:
	case "co":
	{
		_unit addmagazines [_glriflemag, 1];
		_unit addmagazines [_glsmokewhite, 1];
		_unit addweapon _glrifle;
		_unit addmagazines [_pistolmag, 1];
		_unit addweapon _pistol;
		_unit addItem _firstaid ;
		_unit addmagazines [_smokegrenade, 3];
		_unit addmagazines [_glriflemag, 4];
		_unit addmagazines [_glriflemag_tr, 2];
		_unit addmagazines [_glsmokewhite, 5];
		_unit addmagazines [_glsmokered, 3];
		_unit addmagazines [_pistolmag, 4];
		_unit addWeapon "Rangefinder";
		_unit addmagazines [_smokegrenadepurple, 3];
	};
// Medic Loadout:
	case "m":
	{
		_unit addBackpack _bag;
		_unit addmagazines [_carbinemag, 1];
		_unit addweapon _carbine;
		_unit addItem _firstaid ;
		_unit addmagazines [_smokegrenade, 3];
		_unit addmagazines [_carbinemag, 4];
		_unit addmagazines [_carbinemag_tr, 2];
		_unit addItem _medkit;
		_unit addItem _firstaid ;
	};
// Designated Marksman Loadout:
	case "dm":
	{
		_unit addmagazines [_DMriflemag, 1];
		_unit addweapon _DMrifle;
		_attachments = [_bipod1,_scope3]; // Overwrites default attachments to add a bipod and scope 2
		_unit addItem _firstaid ;
		_unit addmagazines [_smokegrenade, 3];
		_unit addmagazines [_DMriflemag, 6];
		_unit addmagazines [_smokegrenade, 2];
	};
// Vehicle Commander Loadout:
	case "vc":
	{
		_unit addmagazines [_smgmag, 1];
		_unit addweapon _smg;
		_unit addItem _firstaid ;
		_unit addmagazines [_smokegrenadeblue, 3];
		_unit addmagazines [_smgmag, 4];
		_unit addweapon "Rangefinder";
	};
// Vehicle Gunner Loadout:
	case "vg":
	{
		_unit addmagazines [_smgmag, 1];
		_unit addweapon _smg;
		_unit addItem _firstaid ;
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
		_unit addItem _firstaid ;
		_unit addmagazines [_smokegrenadeblue, 3];
		_unit addmagazines [_smgmag, 4];
		_unit addItem "ToolKit";
	};

// Include the loadouts for vehicles and crates:
#include "f_assignGear_nato_v.sqf";

// ====================================================================================

// END SWITCH FOR DEFINE UNIT TYPE LOADOUTS
};
