if !(isServer) exitWith {}; //execute on server only

_caches = [cache,cache_1];

{
  _x addEventHandler ["HandleDamage",
  {
	 _box  = _this select 0;
	 _ammo = _this select 4;
	 if (_ammo == "SatchelCharge_Remote_Ammo") exitWith {[_box] execVM "trackDestroyed.sqf";};
	 0
  }];
} forEach _caches;
