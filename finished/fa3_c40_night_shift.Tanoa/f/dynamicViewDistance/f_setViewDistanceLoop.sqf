// F3 - Dynamic View Distance
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// ====================================================================================

// PLAYER-ONLY COMPONENT
// No need to run this on the server

if (isDedicated) exitWith {};

// ====================================================================================

// MAKE SURE THE PLAYER INITIALIZES PROPERLY

if (!isDedicated && (isNull player)) then
{
    waitUntil {sleep 0.1; !isNull player};
};

// ====================================================================================

// SET VIEW DISTANCE
// If the player is in a cargo position, the default view distance is set. If the
// player is in a non-cargo position within an actual vehicle, the appropriate view
// distance is set.

while {!isNull player} do {
	setViewDistance f_var_viewDistance_default;
  sleep 10;
};
