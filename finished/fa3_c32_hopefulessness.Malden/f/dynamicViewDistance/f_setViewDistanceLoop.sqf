// F3 - Dynamic View Distance
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// ====================================================================================

// PLAYER-ONLY COMPONENT
// No need to run this on the server - shhhhhh yes there is

if (isDedicated || !hasInterface) exitWith {setViewDistance 350}; //headless client

// ====================================================================================

// MAKE SURE THE PLAYER INITIALIZES PROPERLY

if (!isDedicated && (isNull player)) then
{
    waitUntil {sleep 0.1; !isNull player};
};

// ====================================================================================

// DECLARE VARIABLES AND FUNCTIONS

private ["_sleep"];

// ====================================================================================

// SETUP KEY VARIABLES

_sleep = 20;

// ====================================================================================

// SET VIEW DISTANCE

while {!isNull player} do {
	setViewDistance f_var_viewDistance_default;
  sleep _sleep;
};
