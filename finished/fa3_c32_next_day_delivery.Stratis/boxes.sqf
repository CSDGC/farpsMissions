//made by Shado', edited by Ciaran
//------------------------------------------------------------------------------
transporters = ["transporter"] call ws_fnc_collectObjectsNum;
boxes = ["box"] call ws_fnc_collectObjectsNum;
//------------------------------------------------------------------------------
{
	switch (typeOf _x) do {
    case ("B_Truck_01_transport_F"): {
        _x setVariable ["transporter_positions",[[0,0.2-(0*1.05),0.35],[0,0.2-(1*1.05),0.35],[0,0.2-(2*1.05),0.35],[0,0.2-(3*1.05),0.35]],true]; //(n*1.05) is gap between each crate
    };
		case ("B_CTRG_LSV_01_light_F"): {
		    _x setVariable ["transporter_positions",[[0,-1.45,0]],true]; // only one position possible
		};
		case ("I_Truck_02_transport_F"); // OR
		case ("O_Truck_02_transport_F"); // OR
		case ("C_Truck_02_transport_F"): {
		    _x setVariable ["transporter_positions",[[0, 0.5-(0*1.15), 0.1],[0, 0.5-(1*1.15), 0.1],[0, 0.5-(2*1.15), 0.1],[0, 0.5-(3*1.15), 0.1]],true]; //(n*1.15) is gap between each crate
		};
		default {
		    _x setVariable ["transporter_positions",[],true];
		};
	};
} forEach transporters;

maxDistTrans = 8;
loadDuration = 5;
//------------------------------------------------------------------------------
//TODO what if 2 people load/unload at the exact same time? - Shado' the chance of 2 people pressing a button within, what, even 0.1 seconds of each other, AND without one of them saying "I'm loading it", is literally nil
//TODO only load in nearest vehicle (with space available) if there are multiple nearby
//TODO setDir multiplayer
//------------------------------------------------------------------------------
/*fnc_setDir = {
	params ["_box"];
	_box setDir 90;
	//_box setVectorDirAndUp [[1,0,0],[0,0,1]];
};*/
//------------------------------------------------------------------------------
fnc_loadCargoTrans = {
	params ["_target", "_caller", "_ID", "_arguments"];
	private ["_box"];

	_box = _target;
	_done = false;
	{
		_transporter = _x;
		_distance = _transporter distance _box;
		_box_is_loaded = _box getVariable ['is_loaded', objNull];
		_boxes_loaded = _transporter getVariable ['boxes_loaded', []];
		_positions = _transporter getVariable ['transporter_positions',[]];
		if (
			(_distance < maxDistTrans) &&
		  (isNull _box_is_loaded) &&
		  ((count _boxes_loaded) < (count _positions))
		) then {
			//set variables
			_box setVariable ['is_loaded', _transporter, true];
			_boxes_loaded pushBack _box;
			_transporter setVariable ['boxes_loaded', _boxes_loaded, true];
			//attach
			_box attachTo [_transporter, _positions select (count _boxes_loaded - 1)];
			if (typeOf _transporter == "B_CTRG_LSV_01_light_F") then {_transporter lockCargo [4, true];_transporter lockCargo [5, true]} else {_transporter lockCargo true};
			_done = true;
		};
	} forEach transporters;
	if (!_done) then {
		hint "Could not find a vehicle nearby which had space for this cargo. (Or some other error occured)";
	}
};
//------------------------------------------------------------------------------
fnc_dropCargoTrans = {
	params ["_target", "_caller", "_ID", "_arguments"];
	private ["_transporter"];
	_transporter = _target;

	_boxes_loaded = _transporter getVariable ['boxes_loaded', []];
	_success = false;
	_ground = [];
	_min_dist = 3;
	_max_dist = 20;
	_ground_dist = _min_dist;
	while {count _ground == 0 && _ground_dist <= _max_dist} do {
		_num_tries = 0;
		_num_tries_max = 20; //because BIS_fnc_findSafePos is nondeterministic
		while {count _ground == 0 && _num_tries < _num_tries_max} do {
			//_ground = (position _transporter) findEmptyPosition [_min_dist, _ground_dist, "B_Quadbike_01_F"]; //, "B_supplyCrate_F"
			_ground = [position _transporter, _min_dist, _ground_dist+1, 0, 0, 30, 0] call BIS_fnc_findSafePos;
			//systemChat str _ground;
			//_ground_tmp = _ground isFlatEmpty [5, -1, -1, 1, 0, false]; //removing this for now
			//systemChat str _ground_tmp;
			//https://community.bistudio.com/wiki/ArmA:_CfgVehicles
			_ground_near = count (nearestObjects [_ground, ["Air", "Ship", "LandVehicle","Man", "B_supplyCrate_F"], 5]);
			//BIS_fnc_findSafePos returns some map anchor point if it can't find anything, which is probably far away, that's why we check the distance
			if (_ground_near > 0 || ((position _transporter) distance _ground) > (_max_dist+2)) then { //count _ground_tmp == 0 ||
				_ground = [];
			};
			_num_tries = _num_tries + 1;
		};
		_ground_dist = _ground_dist + 1;
	};
	if (count _boxes_loaded > 0 && count _ground > 0) then {
		_box = _boxes_loaded deleteAt ((count _boxes_loaded) - 1);
		_transporter setVariable ['boxes_loaded', _boxes_loaded, true];
		_box setVariable ['is_loaded', objNull, true];

		_transporter allowDamage false;

		detach _box;
		_box setPos _ground;
		_box setVectorUp [0,0,1];
		sleep 0.2;

		_transporter allowDamage true;
		_transporter lockCargo false;
		_success = true;
	};
	if !(_success) then {
		hint "Could not drop crate because there's not enough space. Then again it might've still dropped the crate. Shout at Shado' not me.";
	};
};
//------------------------------------------------------------------------------
//disable cargo positions for the positions where the boxes are placed
/*if (isServer) then {
	{
		_x spawn {
			waitUntil {count (_this getVariable ['boxes_loaded', []]) > 1};
			_slots = ([typeof _this, true] call BIS_fnc_crewCount) - ([typeof _this, false] call BIS_fnc_crewCount);
			for "_i" from 0 to (_slots - 3) do {
				_this lockCargo [_i, true];
			};
		};
	} forEach transporters;
};*/
//------------------------------------------------------------------------------
if (isServer) then {
	//Create event handler for all boxes
	{ //shado' this is a holdAction not an event handler
		//event handler to load cargo into transporter
		[ //no I just told you this isn't an event handler
			_x, // Object the action is attached to
			"Load cargo into vehicle", // Title of the action
			"\a3\ui_f\data\IGUI\Cfg\Actions\loadVehicle_ca.paa", // Idle icon shown on screen
			"\a3\ui_f\data\IGUI\Cfg\Actions\loadVehicle_ca.paa", // Progress icon shown on screen
			"_this distance _target < 3 && isNull (_target getVariable ['is_loaded', objNull]) && ({_target distance _x < maxDistTrans && (count (_x getVariable ['boxes_loaded', []])) < (count (_x getVariable ['transporter_positions',[]]))}count transporters) > 0", //Condition for the action to be shown
			"_caller distance _target < 3", // Condition for the action to progress
			{}, // Code executed when action starts
			{}, // Code executed on every progress tick
			{_this call fnc_loadCargoTrans}, // Code executed on completion
			{}, // Code executed on interrupted
			[], // Arguments passed to the scripts as _this select 3
			loadDuration, // Action duration [s]
			10, // Priority
			false, // Remove on completion
			false // Show in unconscious state
		] remoteExec ["BIS_fnc_holdActionAdd", 0, true];
	} forEach boxes;

	//Create event handler for all transporters
	{ //shado' please
		//event handler for unloading onto ground
		[
			_x, // Object the action is attached to
			"Drop cargo on the ground", // Title of the action
			"\a3\ui_f\data\IGUI\Cfg\Actions\loadVehicle_ca.paa", // Idle icon shown on screen
			"\a3\ui_f\data\IGUI\Cfg\Actions\loadVehicle_ca.paa", // Progress icon shown on screen
			"_this distance _target < 6 && (count (_target getVariable ['boxes_loaded', []])) > 0", //Condition for the action to be shown
			"_caller distance _target < 6", // Condition for the action to progress
			{}, // Code executed when action starts
			{}, // Code executed on every progress tick
			{_this call fnc_dropCargoTrans}, // Code executed on completion
			{}, // Code executed on interrupted
			[], // Arguments passed to the scripts as _this select 3
			loadDuration, // Action duration [s]
			10, // Priority
			false, // Remove on completion
			false // Show in unconscious state
		] remoteExec ["BIS_fnc_holdActionAdd", 0, true];
	} forEach transporters;
};
//--------------------------------------------------------------------------
