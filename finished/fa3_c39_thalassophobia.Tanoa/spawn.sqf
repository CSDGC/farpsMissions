if ((isNil "hc" && !isServer) || (!isNil "hc" && (isServer || hasInterface))) exitWith {}; //headless client

// patrol function (vaguely based on bis_fnc_taskpatrol)
_blacklist = [];
cc_fnc_patrol = {
  params ["_grp","_maxDist"];
  _pos = getpos leader _grp; //get position of group leader - the pos around which waypoint generation starts
  [_grp,"SAFE","WEDGE","RED","LIMITED"] call ws_fnc_setAIMode; //set AI behaviour
  if (_maxDist == 0) exitWith {private "_wp"; _wp = _grp addWaypoint [_pos, 0]; _wp setWaypointType "HOLD";} ; //no patrol for units with cc_patrolDist set to 0, given hold waypoint instead
  _random = 0;
  if (_maxDist > 100) then {_random = (floor (random 1.5))};
  //create 2-3 waypoints
  for "_i" from 0 to (1 + (_random)) do
  {
    private ["_wp", "_newPos"];
    /*_newPos = [_prevPos,20,_maxDist,1,0,0,0_blacklist] call BIS_fnc_findSafePos; //original fnc uses old position around which to create a new waypoint - inconsistent, patrol could end up anywhere
    _prevPos = _newPos;*/
    _newPos = [_pos,25,_maxDist,0.5,0,0,0,_blacklist] call BIS_fnc_findSafePos; //this only creates waypoints within maxDist of the group's starting pos
    // create an area around this waypoint that cannot be used again
    _blacklistP1 = _newPos getPos [30,315]; //top left point
    _blacklistP2 = _newPos getPos [30,135]; //bottom right point
    /* DEBUG: Creates markers at these 2 points
    _mkr1 = createMarker [format ["%1 -1",_blacklistP1],_blacklistP1];_mkr1 setMarkerSize [0.5,0.5];_mkr1 setMarkerType "mil_dot";_mkr1 setMarkerColor "ColorEAST";
    _mkr2 = createMarker [format ["%1 -2",_blacklistP2],_blacklistP2];_mkr2 setMarkerSize [0.5,0.5];_mkr2 setMarkerType "mil_dot";_mkr2 setMarkerColor "ColorEAST";
    */
    _blacklist pushback [_blacklistP1,_blacklistP2]; //pushback this area into the blacklist array - area is blacklisted for all calls of the fnc
    //create move waypoint at the new position
    _wp = _grp addWaypoint [_newPos, 0];
    _wp setWaypointType "MOVE";
    _wp setWaypointCompletionRadius 3;
    /* DEBUG: Marker placed at each wp, with maxDist displayed
    _mkr = createMarker [format ["%1-bpos",_newPos],_newPos];_mkr setMarkerSize [0.5,0.5];_mkr setMarkerType "mil_dot";_mkr setMarkerColor "ColorGreen";_mkr setMarkerText format ["%1", _maxDist];
    */
  };

  //cycle back to the group's original position
  private ["_wp"];
  _wp = _grp addWaypoint [_pos, 0];
  _wp setWaypointType "CYCLE";
  _wp setWaypointCompletionRadius 3;
};


_spawns = [spawnzone] call ws_fnc_collectObjectsNum;
//define groups of soldiers to choose from
_comp = [
  ["I_C_Soldier_Para_7_F","I_C_Soldier_Para_7_F","I_C_Soldier_Para_1_F"],
  ["I_C_Soldier_Para_5_F","I_C_Soldier_Para_7_F","I_C_Soldier_Para_1_F"],
  ["I_C_Soldier_Para_7_F","I_C_Soldier_Para_7_F","I_C_Soldier_Para_5_F","I_C_Soldier_Para_1_F"],
  ["I_C_Soldier_Para_5_F","I_C_Soldier_Para_4_F","I_C_Soldier_Para_7_F"],
  ["I_C_Soldier_Para_3_F","I_C_Soldier_Para_5_F","I_C_Soldier_Para_7_F","I_C_Soldier_Para_7_F"],
  ["I_C_Soldier_Para_7_F","I_C_Soldier_Para_7_F","I_C_Soldier_Para_7_F","I_C_Soldier_Para_7_F","I_C_Soldier_Para_7_F"],
  ["O_T_Soldier_F","O_T_Soldier_LAT_F","O_T_Soldier_F"],
  ["O_T_Soldier_F","O_T_Soldier_AR_F","O_T_Soldier_AAR_F"],
  ["O_T_Soldier_F","O_T_Soldier_LAT_F","O_T_Soldier_AR_F","O_T_Soldier_F"]
];

_units = [];
_allGrp = [];
{
  private "_grp";
  _grp = [getPos _x, resistance, (selectRandom _comp)] call BIS_fnc_spawnGroup;
  _units append units _grp;
  _allGrp pushback _grp;
  //give units a patrol - uses the max distance set on the gamelogic
  [_grp,_x getVariable "cc_patrolDist"] call cc_fnc_patrol;
} forEach _spawns;
[_units,"f\setAISkill\f_setAISkill.sqf"] remoteExec ["BIS_fnc_execVM",2];
[_units,"f\assignGear\f_assignGear_AI.sqf"] remoteExec ["BIS_fnc_execVM",2];
