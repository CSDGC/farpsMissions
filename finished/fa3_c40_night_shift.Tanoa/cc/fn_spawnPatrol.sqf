// spawn the patrol
params ["_pos","_dist","_side","_size","_units"];
if (count _this < 5) then {
  // NATO
  _grpWest = ["B_Soldier_lite_F","B_Soldier_F"];
  // CSAT
  _grpEast = ["O_Soldier_lite_F","O_Soldier_F"];
  // AAF
  _grpResistance = ["I_Soldier_lite_F","I_Soldier_F"];

  _units = switch (_side) do {
	  case west: {_grpWest};
	  case east: {_grpEast};
	  case resistance: {_grpResistance};
  };
};
_spawnUnits = [];
if (_size == 0) then {
  _comp = _units; //if size is 0 then the data given should be an array of arrays of units, one of which is chosen when spawning the group
  _grp = [_pos,_side,(selectRandom _comp)] call BIS_fnc_spawnGroup; //spawn the group
  [_grp,_pos,_dist] call cc_fnc_taskPatrol; //give them the patrol
  _spawnUnits append units _grp; //collect units so we can return them, for use with assignGear etc
};

if (_size > 0) then {
  _comp = [];
  for "_i" from 1 to (_size) do { //randomly select units from the array until we reach the specified size
    _comp append [(selectRandom _units)];
  };
  _grp = [_pos,_side,_comp] call BIS_fnc_spawnGroup;
  [_grp,_pos,_dist] call cc_fnc_taskPatrol;
  _spawnUnits append units _grp;
};
//return spawned units
_spawnUnits
