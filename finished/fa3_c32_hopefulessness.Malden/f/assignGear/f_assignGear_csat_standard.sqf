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
		_unit addBackpack _bag;
		_unit addmagazines [_ARmag, 1];
		_unit addweapon _AR;
		_unit addItem _firstaid;
		_unit addmagazines [_smokegrenade, 3];
		_unit addmagazines [_ARmag, 1];
		_unit addmagazines [_ARmag_tr, 1];
		_unit addmagazines [_grenade, 1];
	};
// Rifleman (AT) Loadout:
	case "rat":
	{
		_unit addBackpack _bag;
		_unit addmagazines [(_carbine select 1), 1];
		_unit addweapon (_carbine select 0);
		_unit addmagazines [_RATmag, 1];
		_unit addweapon _RAT;
		_unit addItem _firstaid;
		_unit addmagazines [_smokegrenade, 3];
		_unit addmagazines [(_carbine select 1), 6];
		_unit addmagazines [_grenade, 2];
		_unit addmagazines [_RATmag, 1];
	};
// Medic Loadout:
	case "m":
	{
		_unit addBackpack _bag;
		_unit addmagazines [(_carbine select 1), 1];
		_unit addweapon (_carbine select 0);
		_unit addItem _firstaid;
		_unit addmagazines [_smokegrenade, 3];
		_unit addmagazines [(_carbine select 1), 6];
		_unit addItem _medkit;
		_unit addItem _firstaid;
	};
// Designated Marksman Loadout:
	case "dm":
	{
		_unit addmagazines [_DMriflemag, 1];
		_unit addweapon _DMrifle;
		_attachments = []; //remove attachments so it's not too strong
		_unit addItem _firstaid;
		_unit addmagazines [_smokegrenade, 4];
		_unit addmagazines [_DMriflemag, 6];
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
// Diver Loadout:
	case "div":
	{
		_unit addBackpack _bagdiver;
		_unit addmagazines [_diverMag1, 1];
		_unit addweapon _diverWep;
		_unit addItem _firstaid;
		_unit addmagazines [_smokegrenade, 3];
		_unit addmagazines [_diverMag1, 6];
		_unit addmagazines [_grenade, 2];
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
		_unit addmagazines [_grenade, 1];
	};
// Carbineer Loadout:
	case "car":
	{
		_unit addmagazines [_carbine select 1, 1];
		_unit addweapon (_carbine select 0);
		_unit addItem _firstaid;
		_unit addmagazines [_smokegrenade, 3];
		_unit addmagazines [(_carbine select 1), 6];
		_unit addmagazines [_Mgrenade, 1];
	};
// Submachinegunner Loadout:
	case "smg":
	{
		_unit addmagazines [_smgmag, 1];
		_unit addweapon _smg;
		_unit addItem _firstaid;
		_unit addmagazines [_smokegrenade, 3];
		_unit addmagazines [_smgmag, 6];
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
