// F3 - Briefing
// Credits and documentation: https://github.com/folkarps/F3/wiki
// ====================================================================================

if (!hasInterface) exitWith {}; //Exit if not a player.

// MAKE SURE THE PLAYER INITIALIZES PROPERLY

if (!isDedicated && (isNull player)) then
{
	waitUntil {sleep 0.1; !isNull player};
};

// DEBUG HELPER FUNCTION
private _fnc_debug = {
	params [["_faction", "", [""]]];
	if (f_param_debugMode == 1) then
	{
		player sideChat format ["DEBUG (fn_createBriefing.sqf): Briefing for %1 selected.",_faction];
	};
};

// ====================================================================================

// DETECT PLAYER FACTION (use faction from group leader)
private _unitfaction = toLower ([leader group player] call f_fnc_virtualFaction);

// DEBUG
if (f_param_debugMode == 1) then
{
	player sideChat format ["DEBUG (fn_createBriefing.sqf): Player faction: %1",_unitfaction];
};

// ====================================================================================

// BRIEFING: ADMIN
#if __has_include("f_briefing_admin.sqf")
	if (serverCommandAvailable "#kick" || !isMultiplayer) then {
		#include "f_briefing_admin.sqf"
		["host"] call _fnc_debug;
	};
#endif

// ====================================================================================
// BRIEFING: FACTION SPECIFIC
// The following code blocks include faction-specific briefing files.

// FIA
#if __has_include("f_briefing_fia.sqf")
	if (_unitfaction in ["blu_g_f","ind_g_f","opf_g_f","fia","civ_f",""]) exitwith {
		if (c_param_christmas == 1) then {
			#include "f_briefing_fia_christmas.sqf"
		}
		else {
			#include "f_briefing_fia.sqf"
		};
		[_unitfaction] call _fnc_debug;
	};
#endif


// ZEUS
#if __has_include("f_briefing_zeus.sqf")
	if (_unitfaction == "" && ! (typeOf player isEqualTo "VirtualSpectator_F")) exitwith {
		#include "f_briefing_zeus.sqf"
		["zeus"] call _fnc_debug;
	};
#endif

// Virtual Spectator
if (typeOf player isEqualTo "VirtualSpectator_F") exitwith {
};

// ====================================================================================

// ERROR CHECKING
// If the faction of the unit cannot be defined, the script exits with an error.

player globalchat format ["DEBUG (fn_createBriefing.sqf): Faction %1 is not defined.",_unitfaction];
