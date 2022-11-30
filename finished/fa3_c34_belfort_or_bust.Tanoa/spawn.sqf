if (isServer) then {
  private "_units";
  _garrisons = ["garrisonLogic"] call ws_fnc_collectObjects;
  _units = [];
  _groups = [];
  {
    _unitsx = ((_x getVariable "ws_garrisonSettings") call ws_fnc_createGarrison);
    _units append _unitsx;
    _groups append [group (_unitsx select 0)];
  } forEach _garrisons;
  _units execVM "f\setAISkill\f_setAISkill.sqf";
  _units execVM "f\assignGear\f_assignGear_AI.sqf";
  {_x setObjectTextureGlobal [0,"tafUniform.paa"];} forEach _units;
  //give spawned units to headless client (this probably works)
  {
    if (!isNil "hc") then {
      _localityChanged = _x setGroupOwner (owner hc);
      /*if (_localityChanged) then {
      player sidechat "locality was changed";
      } else {
      player sidechat "locality was not changed, RIP";
      };*/
    };
  } forEach _groups;

  [] spawn {
    sleep 5; //wait for all units to settle, then set textures 6 times because BIS
    for "_i" from 1 to 6 do {
      {_x setObjectTextureGlobal [0,"tafUniform.paa"];} forEach (allUnits select {side _x == west});
      sleep 20;
    };
  };
};

if ((isNil "hc" && !isServer) || (!isNil "hc" && (isServer || hasInterface))) exitWith {}; //headless client

_spawns = [patrolSpawn] call ws_fnc_collectObjectsNum;
//define groups of units to spawn
_comp = [
  ["B_Soldier_F","B_Soldier_F","B_Soldier_lite_F","B_Soldier_lite_F"],
  ["B_Soldier_F","B_Soldier_F","B_Soldier_AR_F"],
  ["B_Soldier_F","B_Soldier_F","B_Soldier_LAT_F","B_Soldier_lite_F"],
  ["B_Soldier_F","B_Soldier_LAT_F","B_Soldier_lite_F","B_Soldier_lite_F"],
  ["B_Soldier_F","B_Soldier_LAT_F","B_Soldier_F"],
  ["B_Medic_F","B_Soldier_F","B_Soldier_lite_F","B_Soldier_lite_F"]
];

{
  [getpos _x,_x getvariable "cc_patrolDist",west,0,_comp] call cc_fnc_spawnPatrol;
} forEach _spawns;
