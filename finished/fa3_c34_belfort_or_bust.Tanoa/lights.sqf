if (isServer) exitWith {};
_lights = [light] call ws_fnc_collectObjectsNum;
{
  _light = "#lightpoint" createVehicleLocal position _x;
  _light lightAttachObject [_x, [0,0,0]];
  _light setLightColor [0.9,0.9,1];
  _light setLightBrightness 0.4;
} forEach _lights;
