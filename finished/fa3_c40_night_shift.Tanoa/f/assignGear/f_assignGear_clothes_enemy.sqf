// F3 - F3 Folk ARPS Assign Gear
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// ====================================================================================

// Prevent BIS Randomisation System
// BIS created a system for randomisation unit loadouts, that may overwrite the changes made by this script, this will fix such system.

_unit setVariable ["BIS_enableRandomization", false];

// ====================================================================================

// lets strip him down to the basic
removeUniform _unit;
removeHeadgear _unit;
removeVest _unit;
removeGoggles _unit;

// assign default gear
_helmet = _baseHelmet;
_glasses = _baseGlasses;


// Select uniform
_uniform = switch (f_param_loadouts_enemy) do {
	case 0:{_baseUniform};
	case 1:{_baseUniform};
	case 2:{_heavyUniform};
	default{_baseUniform};
};
// Select the default rig
_rig = switch (f_param_loadouts_enemy) do {
	case 0:{_lightRig};
	case 1:{_standardRig};
	case 2:{_heavyRig};
	default{_standardRig};
};

// Flip through unit to assign specialized uniforms

// Pilot
if (_typeOfUnit in _pilot) then {
	_helmet = _pilotHelmet;
	_uniform = _pilotUniform;
	_rig = _pilotRig;
	_glasses = _pilotGlasses
};

// Crew
if (_typeOfUnit in _crew) then {
	_helmet = _crewHelmet;
	_uniform = _crewUniform;
	_rig = _crewRig;
	_glasses = _crewGlasses;
};

// Diver
if (_typeOfUnit in _diver) then {
	_helmet = _diverHelmet;
	_uniform = _diverUniform;
	_rig = _diverRig;
	_glasses = _diverGlasses;
};

// Ghillie
if (_typeOfUnit in _ghillie) then {
	_helmet = _ghillieHelmet;
	_uniform = _ghillieUniform;
	_rig = switch (f_param_loadouts) do {
		case 0:{_lightRig};
		case 1:{_ghillieRig};
		case 2:{_ghillieRig};
		default{_ghillieRig};
	};
	_glasses = _ghillieGlasses;
};

// Spec Op
if (_typeOfUnit in _specOp) then {
	_helmet = _sfHelmet;
	_uniform = _sfUniform;
	_rig = switch (f_param_loadouts) do {
		case 0:{_lightRig};
		case 1:{_sfRig};
		case 2:{_sfRig};
		default{_sfRig};
	};

	_glasses = _sfGlasses;
};

// Add clothing items to unit
if(count _uniform > 0) then
{
	_unit forceAddUniform selectRandom _uniform;
};

if(count _helmet > 0) then
{
	_unit addHeadgear selectRandom _helmet;
};

if(count _rig > 0) then
{
	_unit addVest selectRandom _rig;
};

if(count _glasses > 0) then
{
	_unit addGoggles selectRandom _glasses;
};
