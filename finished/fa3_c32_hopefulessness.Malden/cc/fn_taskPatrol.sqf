// Patrol function by Ciaran (vaguely based on BIS_fnc_taskPatrol)
params ["_grp","_pos","_maxDist"];
if (isNil "blacklistA") then {blacklistA = [];}; //if blacklist area isn't defined, define it so we can pushback blacklisted areas into it
[_grp,"SAFE","WEDGE","RED","LIMITED"] call ws_fnc_setAIMode; //set AI behaviour
if (_maxDist < 30) exitWith {private "_wp"; _wp = _grp addWaypoint [_pos, 0]; _wp setWaypointType "HOLD";}; //no patrol for units with dist below 30, given hold waypoint instead
//create 2-3 waypoints
for "_i" from 0 to (1 + (floor (random 2))) do
{
  private ["_wp", "_newPos"];
  _newPos = [_pos,25,_maxDist,0.1,0,0,0,blacklistA,[_pos,_pos]] call BIS_fnc_findSafePos; //creates waypoints within maxDist of the group's starting pos
  // create an area around this waypoint that cannot be used again
  _blacklistP1 = _newPos getPos [25,315]; //top left point
  _blacklistP2 = _newPos getPos [25,135]; //bottom right point
  // DEBUG: Creates markers at these 2 points
  //_mkr1 = createMarker [format ["%1 -1",_blacklistP1],_blacklistP1];_mkr1 setMarkerSize [0.5,0.5];_mkr1 setMarkerType "mil_dot";_mkr1 setMarkerColor "ColorEAST";
  //_mkr2 = createMarker [format ["%1 -2",_blacklistP2],_blacklistP2];_mkr2 setMarkerSize [0.5,0.5];_mkr2 setMarkerType "mil_dot";_mkr2 setMarkerColor "ColorEAST";
  blacklistA pushback [_blacklistP1,_blacklistP2]; //pushback this area into the blacklist array
  //create move waypoint at the new position
  _wp = _grp addWaypoint [_newPos, 0];
  _wp setWaypointType "MOVE";
  _wp setWaypointCompletionRadius 3;
  // DEBUG: Marker placed at each wp, with maxDist displayed
  //_mkr = createMarker [format ["%1",_newPos],_newPos];_mkr setMarkerSize [0.5,0.5];_mkr setMarkerType "mil_dot";_mkr setMarkerColor "ColorGreen";_mkr setMarkerText format ["%1", _maxDist];
};

//cycle back to the group's original position
private ["_wp"];
_wp = (_this select 0) addWaypoint [_pos, 0];
_wp setWaypointType "CYCLE";
_wp setWaypointCompletionRadius 3;
