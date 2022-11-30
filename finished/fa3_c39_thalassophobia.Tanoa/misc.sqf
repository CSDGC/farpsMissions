if !(isServer) exitWith {}; //execute on server only

// GARRISON CODE ===============================================================
_garrisons = [garrisonLogic] call ws_fnc_collectObjectsNum;
_units = [];
{
_units append ((_x getVariable "ws_garrisonSettings") call ws_fnc_createGarrison);
} forEach _garrisons;
_units execVM "f\setAISkill\f_setAISkill.sqf";
_units execVM "f\assignGear\f_assignGear_AI.sqf";

// MAP OBJECT HIDING BY CSAT BASE ==============================================
_hideMkr = [hideObjectmkr,hideObjectmkr_1];
_hide = [];
{_hide append nearestTerrainObjects [_x,[],(_x getvariable "hideradius")]} forEach _hideMkr; //collect array of terrain objects around gamelogic
{_x hideObjectGlobal true} forEach _hide; //hide said objects

// OTHER MISC STUFF ============================================================
0 setFog [0.9, 0.85, -0.75]; //set lowlying fog
sleep 1; //wait until after init
0 setFog [0.9, 0.85, -0.75]; //should override any F3 time/weather setting if done now?
_boats = [VehNATO_AV,VehNATO_BV,VehNATO_CV];
{_x setObjectTextureGlobal [0,'#(rgb,8,8,3)color(0.137,0.251,0.141,0.15)']} foreach _boats; //ensure textures are applied to boats
{_x setObjectTextureGlobal [1,'\A3\boat_f\Boat_Armed_01\data\Boat_Armed_01_int_co.paa']} foreach _boats; //blufor textures for internals
{_x setObjectTextureGlobal [2,'\A3\boat_f\Boat_Armed_01\data\Boat_Armed_01_crows_blufor_co.paa']} foreach _boats;
[] spawn {
  while {true} do {
    {_x setObjectTextureGlobal [0, "\a3\characters_f\BLUFOR\Data\clothing_wdl_co.paa"]} foreach f_var_men_BLU; //texture set on all blufor men
    sleep 300; //done every 5 minutes
    };
};
