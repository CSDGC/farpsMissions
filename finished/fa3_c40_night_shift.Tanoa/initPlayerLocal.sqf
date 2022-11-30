// run on client when they join
if (vehicle player == player) then { //if player is not in a vehicle
	player setPos (playerTP getPos [random 10,random 365]); // move them to the area where the helicopters land
};

sleep 0.1;

// only issue with this method (it should be fully JIP compatible) is that the unit is only textured once a player slots into said unit
private _grps = [];
{_grps append [missionNamespace getVariable [_x,grpNull]]} forEach ["GrpNATO_A1","GrpNATO_A2","GrpNATO_B1","GrpNATO_B2"];
if ((group player) in _grps) then {
	if ((uniform player) in ["U_B_T_Soldier_F","U_B_T_Soldier_SL_F"]) then {
		[player,[0,"tafUniform.paa"]] remoteExec ["setObjectTexture",0,true];
	};
	if ((uniform player) == "U_B_T_Soldier_AR_F") then {
		[player,[1,"tafUniform.paa"]] remoteExec ["setObjectTexture",0,true];
	};
};
