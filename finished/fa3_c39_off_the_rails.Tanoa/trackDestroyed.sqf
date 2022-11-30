if !(isServer) exitWith {};

_box = _this select 0;
_box setDamage 1;
deleteVehicle _box ;
{_x hideObjectGlobal true} forEach (nearestTerrainObjects [_box,[],8]);


if (isNil "caches_destroyed") then {caches_destroyed = 0};
caches_destroyed = caches_destroyed + 1; publicVariable "caches_destroyed";

if (caches_destroyed < 2 ) then {
["CacheDestroyed",["Track Destroyed!"]] remoteExec ["bis_fnc_showNotification",0];
} else {
["TaskComplete",["All Tracks Destroyed!"]] remoteExec ["bis_fnc_showNotification",0];
[2] call f_fnc_mpEnd;
};
