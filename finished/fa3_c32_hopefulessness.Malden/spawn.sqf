if ((isNil "hc" && !isServer) || (!isNil "hc" && (isServer || hasInterface))) exitWith {}; //headless client

_spawns = [patrolSpawn] call ws_fnc_collectObjectsNum;
//define groups of units to spawn
_comp = [
  ["O_Soldier_F","O_Soldier_AR_F","O_Soldier_lite_F"],
  ["O_Soldier_F","O_Soldier_lite_F","O_Soldier_lite_F"],
  ["O_Soldier_F","O_Soldier_lite_F","O_Soldier_M_F"],
  ["O_Soldier_F","O_Soldier_LAT_F","O_Soldier_lite_F","O_Soldier_lite_F"],
  ["O_Soldier_F","O_Soldier_F","O_Soldier_GL_F"],
  ["O_Medic_F","O_Soldier_LAT_F","O_Soldier_lite_F","O_Soldier_lite_F"],
  ["O_Medic_F","O_Soldier_lite_F","O_Soldier_F"]
];

_units = [];
{
  _units append ([getpos _x,_x getvariable ["cc_patrolDist",100],east,0,_comp] call cc_fnc_spawnPatrol);
} forEach _spawns;



_cache = [box,box_1,box_2,box_3,box_4,box_5];
{ //spawn some units at each cache
	_grp = [getPos _x, east, selectRandom [["O_Diver_F"],["O_Diver_F","O_Diver_F"]]] call BIS_fnc_spawnGroup; //spawn a man or two
	[_grp,_x,["hold"]] call ws_fnc_addWaypoint; //give group a hold waypoint (ASR AI can and will probably ignore this)
	_units append units _grp; //select units in group
  {_x disableAI "PATH"} forEach units _grp; //stop units from moving
  [(units _grp),"f\assignGear\f_assignGear_AI.sqf"] remoteExec ["BIS_fnc_execVM",2]; //remoteExec because assignGear/setSkill are server only
  [(units _grp),"f\setAISkill\f_setAISkill.sqf"] remoteExec ["BIS_fnc_execVM",2];
} forEach _cache;

[_units,"f\assignGear\f_assignGear_AI.sqf"] remoteExec ["BIS_fnc_execVM",2];
[_units,"f\setAISkill\f_setAISkill.sqf"] remoteExec ["BIS_fnc_execVM",2];
_units execVM "f\setAISkill\f_setAISkill.sqf"; //run setAISkill on server and HC just in case
