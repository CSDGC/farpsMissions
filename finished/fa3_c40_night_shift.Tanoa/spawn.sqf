if ((isNil "hc" && !isServer) || (!isNil "hc" && (isServer || hasInterface))) exitWith {}; //headless client

_garrisons = [garrisonLogic] call ws_fnc_collectObjectsNum;
_spawns = [patrolSpawn] call ws_fnc_collectObjectsNum;
//define groups of units to spawn
_comp = [
  ["I_C_Soldier_Para_7_F","I_C_Soldier_Para_7_F","I_C_Soldier_Para_5_F"],
  ["I_C_Soldier_Para_5_F","I_C_Soldier_Para_1_F","I_C_Soldier_Para_1_F"],
  ["I_C_Soldier_Para_5_F","I_C_Soldier_Para_4_F","I_C_Soldier_Para_1_F"],
  ["I_C_Soldier_Para_1_F","I_C_Soldier_Para_4_F"],
  ["I_C_Soldier_Para_1_F","I_C_Soldier_Para_5_F"]
];


_units = [];
{
  _units append ([getpos _x,_x getvariable "cc_patrolDist",resistance,0,_comp] call cc_fnc_spawnPatrol);
} forEach _spawns;

{
  _units append ((_x getVariable "ws_garrisonSettings") call ws_fnc_createGarrison);
} forEach _garrisons;

[_units,"f\assignGear\f_assignGear_AI.sqf"] remoteExec ["BIS_fnc_execVM",2]; //remoteExec because assignGear/setSkill only run server side
[_units,"f\setAISkill\f_setAISkill.sqf"] remoteExec ["BIS_fnc_execVM",2];
