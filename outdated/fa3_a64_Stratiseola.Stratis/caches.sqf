//prepare caches

// butchering together the X-EOLA and HSLD cache spawning script was probably the greatest idea I ever had
eola_number_of_caches = f_param_number_of_caches;
ws_eola_caches_target = ws_param_caches_target;

if (ws_eola_caches_target > eola_number_of_caches) then {ws_eola_caches_target = eola_number_of_caches}; // Ensure the host is competent

if (isServer) then {
	_number_of_caches = f_param_number_of_caches;
	_number_of_markers = _number_of_caches + f_param_number_of_additional_markers;
	caches_real_caches = []; //variable is used for trigger

	_caches_all = ["cache"] call ws_fnc_collectObjectsNum;
	_number_of_markers = (count _caches_all) min _number_of_markers;
	for [{_i=1}, {_i<=_number_of_markers}, {_i=_i+1}] do
	{
		//get random object:
		_index = (floor (random (count _caches_all)));
		_cache = _caches_all select _index;
		_color = "ColorGUER"; // cache marker colour is defined here, presumably so the debug code can override it
		//if (_i <= _number_of_caches) then { //for debugging
		//		_color = "ColorWEST";
		//};
		//create marker
		_marker_name = format ["marker_cache_%1", _i];
		deleteMarker _marker_name; //in case the marker already exists
		_markerstr = createMarker [_marker_name,_cache];
		_markerstr setMarkerType "mil_box"; // Set marker params - type, colour, size.
		_markerstr setMarkerColor _color; //"ColorGUER"
		_markerstr setMarkerSize [1,1];
		//_markerstr setMarkerText format ["%1", _i]; This displays numbers next to the markers which are of course horrible because they're randomly placed #ThanksShado
		//place cache
		if (_i <= _number_of_caches) then {
				//that's a real cache
				_caches_all deleteAt _index;
				caches_real_caches pushBack _cache;
				//create eventHandler for cache:
				//so that it can only be destroyed with DemoCharge_Remote_Ammo
				_cache addEventHandler ["HandleDamage",
				{
					_box  = _this select 0;
					_ammo = _this select 4;
					if (_ammo == "DemoCharge_Remote_Ammo") exitWith {[_box] execVM "ws_scripts\ws_eola_cache_destroyed.sqf";};
					0
				}];
		} else {
			//not a cache. delete object
			deleteVehicle _cache;
			_caches_all deleteAt _index;
		};
	};
	//delete unused caches:
	{deleteVehicle _x;} forEach _caches_all;
	//broadcast variable for trigger
	publicVariable "caches_real_caches";
};
