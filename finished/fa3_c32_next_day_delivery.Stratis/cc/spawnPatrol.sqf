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
  if (_size == 0) then {
    _comp = _units;
    _grp = [_pos,_side,(selectRandom _comp)] call BIS_fnc_spawnGroup;
    [_grp,_pos,_dist] call cc_fnc_taskPatrol;
    [(units _grp),"f\assignGear\f_assignGear_AI.sqf"] remoteExec ["BIS_fnc_execVM",2];
    [(units _grp),"f\setAISkill\f_setAISkill.sqf"] remoteExec ["BIS_fnc_execVM",2];
  };

  if (_size > 0) then {
    _comp = [];
    for "_i" from 1 to (_size) do {
      _comp append [(selectRandom _units)];
    };
    _grp = [_pos,_side,_comp] call BIS_fnc_spawnGroup;
    [_grp,_pos,_dist] call cc_fnc_taskPatrol;
    [(units _grp),"f\assignGear\f_assignGear_AI.sqf"] remoteExec ["BIS_fnc_execVM",2];
    [(units _grp),"f\setAISkill\f_setAISkill.sqf"] remoteExec ["BIS_fnc_execVM",2];
  };
