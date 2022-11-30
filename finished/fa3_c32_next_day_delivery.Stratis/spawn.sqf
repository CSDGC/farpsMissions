if ((isNil "hc" && !isServer) || (!isNil "hc" && (isServer || hasInterface))) exitWith {}; //headless client

_spawns = [patrolSpawn] call ws_fnc_collectObjectsNum;
//define groups of units to spawn
_comp = [
  ["I_Soldier_F","I_Soldier_AR_F"],
  ["I_Soldier_F","I_Soldier_lite_F","I_Soldier_lite_F"],
  ["I_Soldier_F","I_Soldier_lite_F","I_Soldier_AR_F"],
  ["I_Soldier_F","I_Soldier_LAT_F","I_Soldier_lite_F","I_Soldier_lite_F"],
  ["I_Soldier_F","I_Soldier_F","I_Soldier_lite_F"],
  ["I_Medic_F","I_Soldier_LAT_F","I_Soldier_lite_F","I_Soldier_lite_F"],
  ["I_Medic_F","I_Soldier_lite_F","I_Soldier_F"]
];

{
  [getpos _x,_x getvariable "cc_patrolDist",resistance,0,_comp] call cc_fnc_spawnPatrol;
} forEach _spawns;

_cache = [box,box_1,box_2,box_3,box_4,box_5];
{ //spawn some units at each cache
	_grp = [getPos _x, resistance, selectRandom [["I_Soldier_lite_F"],["I_Soldier_lite_F","I_Soldier_lite_F"]]] call BIS_fnc_spawnGroup; //spawn a man or two
	[_grp,_x,["hold"]] call ws_fnc_addWaypoint; //give group a hold waypoint (ASR AI can and will probably ignore this)
	_units = units _grp; //select units in group
  {_x disableAI "PATH"} forEach _units; //stop units from moving (ASR may force them to anyway, IDK)
  [(units _grp),"f\assignGear\f_assignGear_AI.sqf"] remoteExec ["BIS_fnc_execVM",2]; //remoteExec because assignGear/setSkill are server only
  [(units _grp),"f\setAISkill\f_setAISkill.sqf"] remoteExec ["BIS_fnc_execVM",2];
} forEach _cache;
