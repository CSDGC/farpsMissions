if !(isServer) exitWith {};

params ["_startTime"];

if (cc_param_timeToComplete == 0) exitWith {}; // reinforcement timer disabled, so exit

//------------------------------------------------------------------------------
// things used later

_timeRemaining = cc_param_timeToComplete * 60; //get reinforce time in seconds

cc_fnc_huntPlayers = {
	params ["_grp"];
	_wp = _grp addWaypoint [getPos (selectRandom alivePlayers),0];
	_wp setWaypointType "SAD";
};

_reinSpawn = [reinforceSpawn] call ws_fnc_collectObjectsNum;

_comp = [
	(configfile >> "CfgGroups" >> "East" >> "OPF_T_F" >> "Infantry" >> "O_T_InfSquad"),
	(configfile >> "CfgGroups" >> "East" >> "OPF_T_F" >> "Infantry" >> "O_T_InfSquad"),
	(configfile >> "CfgGroups" >> "East" >> "OPF_T_F" >> "Infantry" >> "O_T_InfSquad"),
	(configfile >> "CfgGroups" >> "East" >> "OPF_T_F" >> "Infantry" >> "O_T_InfSquad"),
	(configfile >> "CfgGroups" >> "East" >> "OPF_T_F" >> "Mechanized" >> "O_T_MechInfSquad"),
	(configfile >> "CfgGroups" >> "East" >> "OPF_T_F" >> "Mechanized" >> "O_T_MechInfSquad"),
	(configfile >> "CfgGroups" >> "East" >> "OPF_T_F" >> "Armored" >> "O_T_TankSection")
]; // Yes, one of those is a tank section. Two tanks. There is a chance that there will be multiple tanks as enemy reinforcements.

//------------------------------------------------------------------------------
// now actually run these things

waitUntil {serverTime >= (_startTime + _timeRemaining)}; //wait until reinforce time is done

alivePlayers = [];
{if (side _x == west) then {alivePlayers append [_x]}} forEach allPlayers;

["Alert",["Enemy Reinforcements Called!"]] remoteExec ["bis_fnc_showNotification",-2];

_units = [];
{
	_grp = [getpos _x,EAST,(selectRandom _comp)] call bis_fnc_spawnGroup;
	_units append units _grp;
	[_grp,"COMBAT","RED","FULL","WEDGE"] call ws_fnc_setAIMode;
	_grp spawn cc_fnc_huntPlayers;
} forEach _reinSpawn;

_units execVM "f\setAISkill\f_setAISkill.sqf"; //probably set AI skill because it might be a bit unfair otherwise (implying this is meant to be fair)

// spawn some artillery
_arty = [artySpawn getPos [random 50,random 365],0,"O_T_MBT_02_arty_ghex_F",EAST] call BIS_fnc_spawnVehicle;
_arty1 = [artySpawn getPos [random 50,random 365],0,"O_T_MBT_02_arty_ghex_F",EAST] call BIS_fnc_spawnVehicle;
_arty2 = [artySpawn getPos [random 50,random 365],0,"O_T_MBT_02_arty_ghex_F",EAST] call BIS_fnc_spawnVehicle;
_arty3 = [artySpawn getPos [random 50,random 365],0,"O_T_MBT_02_arty_ghex_F",EAST] call BIS_fnc_spawnVehicle;
sleep 0.1;
{_x commandArtilleryFire [getPos (selectRandom alivePlayers),"32Rnd_155mm_Mo_shells",32]} forEach [_arty,_arty1,_arty2,_arty3];
