if !(isServer) exitWith {};

_box = _this select 0;
_box setDamage 1;
deleteVehicle _box ;

if (isNil "caches_destroyed") then {caches_destroyed = 0};
caches_destroyed = caches_destroyed + 1; publicVariable "caches_destroyed";

if (caches_destroyed < 3 ) then {
["CacheDestroyed",[format ["Caches left to destroy: %1",(3 - caches_destroyed)]]] remoteExec ["bis_fnc_showNotification",0];
} else {
["ZoneClear",["All caches destroyed!"]] remoteExec ["bis_fnc_showNotification",0];
cacheDes = true;
};
