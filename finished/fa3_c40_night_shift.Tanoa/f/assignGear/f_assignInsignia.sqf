// F3 - Assign Insignia
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// ====================================================================================

private _badge = "";
params ["_unit", "_typeOfUnit","_insignia_styles"];
private _faction = toLower (faction _unit);

// Note all badges must be defined in description.ext or be included your modpack.
// See: https://community.bistudio.com/wiki/Arma_3_Unit_Insignia

// This variable stores the final badge to use which will applied at the end of this script.
// A default badge can be set by changing this.

// ===================================================================================

// The following block of code determines which NATO and CSAT insignia variants will be used:

_insignia_style_NATO = _insignia_styles select 0;
_insignia_style_CSAT = _insignia_styles select 1;

_NATO_Medic_Badge = "NATO_Pacific_Medic_Badge";

// ===================================================================================

// Assign Insignia based on type of the unit.

private _roleBadge = switch (_typeofUnit) do
{

// INSIGNIA: MEDIC
	case "m":
	{
		switch (_faction) do
		{
			case "blu_f" : {_NATO_Medic_Badge};
			case "opf_f" : {_NATO_Medic_Badge};
			case "ind_f" : {_NATO_Medic_Badge};
			default {"NATO_Medic_Badge"};
		};
	};
	default {""};
};
// ====================================================================================

// This array stores a list of groups and the corresponding badge they will receive.

private _groupBadges = [
		["GrpNATO_ASL","NATO_Pacific_ASL_Badge"],
		["GrpNATO_A1","NATO_Pacific_A1_Badge"],
		["GrpNATO_A2","NATO_Pacific_A2_Badge"],
		["GrpNATO_BSL","NATO_Pacific_BSL_Badge"],
		["GrpNATO_B1","NATO_Pacific_B1_Badge"],
		["GrpNATO_B2","NATO_Pacific_B2_Badge"],
		["GrpNATO_CO","NATO_Pacific_CO_Badge"]
];


// ====================================================================================
// END OF CONFIGURABLE SETTINGS - BELOW ASSIGNS THE INSIGNIAS
// ====================================================================================

// Loop through the groups and match badges to the group _unit belongs to. Due to the groups being variables this requires calling formatted at runtime code.

private _group = (group _unit);


{
    if (_group == missionNamespace getVariable[(_x select 0),grpNull]) exitWith { _badge = _x select 1; };
} forEach _groupBadges;

// ====================================================================================

//  Let the unit insignia override the group insignia.

if (_roleBadge != "") then {
	_badge = _roleBadge;
};

// Apply the insignia.
if (_badge != "") then {
	// spawn to avoid waitUntil bug.

	// Wait till they have the proper uniform assigned.
	waitUntil{_unit getVariable ["f_var_assignGear_done",false]};
	waitUntil{(uniform _unit) != ""};

	// Replicate behaviour of setInsignia
	private _cfgTexture = [["CfgUnitInsignia",_badge],configfile] call bis_fnc_loadclass;
	if (_cfgTexture == configfile) exitwith {["'%1' not found in CfgUnitInsignia",_badge] call bis_fnc_error; false};
	private _texture = gettext (_cfgTexture >> "texture");

	private _index = -1;
	{
		if (_x == "insignia") exitwith {_index = _foreachindex;};
	} foreach getarray (configfile >> "CfgVehicles" >> gettext (configfile >> "CfgWeapons" >> uniform _unit >> "ItemInfo" >> "uniformClass") >> "hiddenSelections");

	if (_index >= 0) then {
		_unit setvariable ["bis_fnc_setUnitInsignia_class",_badge,false];
		_unit setobjecttexture [_index,_texture];
	};
};
