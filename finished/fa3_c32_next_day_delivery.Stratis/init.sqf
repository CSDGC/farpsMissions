// ====================================================================================

// F3 - Common Local Variables
// Credits and documentation: https://github.com/folkarps/F3/wiki
// WARNING: DO NOT DISABLE THIS COMPONENT
if(isServer) then {
	f_script_setLocalVars = [] execVM "f\common\f_setLocalVars.sqf";
};

// ====================================================================================

// F3 - Disable Saving and Auto Saving
// Credits and documentation: https://github.com/folkarps/F3/wiki

enableSaving [false, false];

// ====================================================================================

// F3 - Mute Orders and Reports
// Credits and documentation: https://github.com/folkarps/F3/wiki

{_x setSpeaker "NoVoice"} forEach playableUnits;

// ====================================================================================

// F3 - Mission Timer/Safe Start
// Credits and documentation: https://github.com/folkarps/F3/wiki

[] execVM "f\safeStart\f_safeStart.sqf";

// ====================================================================================

// F3 - F3 Mission Conditions Selector
// Credits and documentation: https://github.com/folkarps/F3/wiki

f_script_setMissionConditions = [] execVM "f\missionConditions\f_setMissionConditions.sqf";

// ====================================================================================

// F3 - Folk ARPS Group IDs
// Credits and documentation: https://github.com/folkarps/F3/wiki

f_script_setGroupIDs = [] execVM "f\setGroupID\f_setGroupIDs.sqf";

// ====================================================================================

// F3 - F3 Folk ARPS Group Markers
// Credits and documentation: https://github.com/folkarps/F3/wiki

f_script_setGroupMarkers = [] execVM "f\groupMarkers\f_setLocalGroupMarkers.sqf";

// ====================================================================================

// F3 - Buddy Team Colours
// Credits and documentation: https://github.com/folkarps/F3/wiki

f_script_setTeamColours = [] execVM "f\setTeamColours\f_setTeamColours.sqf";

// ====================================================================================

// F3 - Fireteam Member Markers
// Credits and documentation: https://github.com/folkarps/F3/wiki

[] spawn f_fnc_SetLocalFTMemberMarkers;

// ====================================================================================

// F3 - Join Group Action
// Credits and documentation: https://github.com/folkarps/F3/wiki

[false] execVM "f\groupJoin\f_groupJoinAction.sqf";

// ====================================================================================

// F3 - Briefing
// Credits and documentation: https://github.com/folkarps/F3/wiki

f_script_briefing = [] spawn f_fnc_createBriefing;

// ====================================================================================

// F3 - ORBAT Notes
// Credits and documentation: https://github.com/folkarps/F3/wiki

[] execVM "f\briefing\f_orbatNotes.sqf";

// ====================================================================================

// F3 - Loadout Notes
// Credits and documentation: https://github.com/folkarps/F3/wiki

[] execVM "f\briefing\f_loadoutNotes.sqf";

// ====================================================================================

// F3 - Revive
// Credits and documentation: https://github.com/folkarps/F3/wiki
[] execVM "f\medical\init.sqf";

// ====================================================================================

// F3 - Combat Life Saver EH
// Credits and documentation: https://github.com/folkarps/F3/wiki
// Uncomment the line below to enable the Combat Life Saver heal handler. Does nothing unless you have player units using the "cls" assignGear role.

// [] execVM "f\medical\f_clsEH.sqf";

// ====================================================================================

// F3 - AI Unit Caching
// Credits and documentation: https://github.com/folkarps/F3/wiki

//[30] spawn f_fnc_cInit;

// Note: Caching aggressiveness is set using the f_var_cachingAggressiveness variable; possible values:
// 1 - cache only non-leaders and non-drivers
// 2 - cache all non-moving units, always exclude vehicle drivers
// 3 - cache all units, incl. group leaders and vehicle drivers
//f_var_cachingAggressiveness = 2;

// ====================================================================================

// F3 - Automatic Body Removal
// Credits and documentation: https://github.com/folkarps/F3/wiki

//Exclude units from automatic body/wreck removal:
removeFromRemainsCollector playableUnits;
//removeFromRemainsCollector [unit1, unit2, vehicle1];

// ====================================================================================

// F3 - AI Skill Selector
// Credits and documentation: https://github.com/folkarps/F3/wiki

f_var_civAI = independent; 		// Optional: The civilian AI will use this side's settings
[] execVM "f\setAISKill\f_setAISkill.sqf";

// ====================================================================================

// F3 - Assign Gear AI
// Credits and documentation: https://github.com/folkarps/F3/wiki

// [] execVM "f\assignGear\f_assignGear_AI.sqf";

// ====================================================================================

// F3 - Dynamic View Distance
// Credits and documentation: https://github.com/folkarps/F3/wiki

f_var_viewDistance_default = 1250;
f_var_viewDistance_tank = 1250;
f_var_viewDistance_car = 1250;
f_var_viewDistance_rotaryWing = 1250;
f_var_viewDistance_fixedWing = 1250;
f_var_viewDistance_crewOnly = true;
[] execVM "f\dynamicViewDistance\f_setViewDistanceInit.sqf";

// ====================================================================================

// F3 - Authorised Crew Check
// Credits and documentation: https://github.com/folkarps/F3/wiki

// VehicleName addEventhandler ["GetIn", {[_this,[UnitName1,UnitName2],false] call f_fnc_authorisedCrewCheck}];
// VehicleName addEventhandler ["GetIn", {[_this,["UnitClass1","UnitClass2"],false] call f_fnc_authorisedCrewCheck}];

// ====================================================================================

// F3 - MapClick Teleport
// Credits and documentation: https://github.com/folkarps/F3/wiki

// f_var_mapClickTeleport_Uses = 1;                 // How often the teleport action can be used. 0 = infinite usage.
// f_var_mapClickTeleport_TimeLimit = 0;            // If higher than 0 the action will be removed after the given time.
// f_var_mapClickTeleport_GroupTeleport = true;     // False: everyone can teleport. True: Only group leaders can teleport and will move their entire group.
// f_var_mapClickTeleport_Units = [];               // Restrict map click teleport to these units.
// f_var_mapClickTeleport_Height = 0;               // If > 0 map click teleport will act as a HALO drop and automatically assign parachutes to units.
// f_var_mapClickTeleport_SaferVehicleHALO = false; // If HALO-ing (f_var_mapClickTeleport_Height > 0), False: crew remain in vehicle during drop. True: crew drop separately with their own parachutes.
// [] execVM "f\mapClickTeleport\f_mapClickTeleport.sqf";

// ====================================================================================

// F3 - Name Tags
// Credits and documentation: https://github.com/folkarps/F3/wiki

[] execVM "f\nametag\f_nametagInit.sqf";

// ====================================================================================

// F3 - Group E&E Check
// Credits and documentation: https://github.com/folkarps/F3/wiki

// [side,ObjectName or "MarkerName",100,1] execVM "f\EandEcheck\f_EandECheckLoop.sqf";
// [["Grp1","Grp2"],ObjectName or "MarkerName",100,1] execVM "f\EandEcheck\f_EandECheckLoop.sqf";
// Note: If the 3rd parameter is <= 0 then the 2nd parameter will be used for inArea:
// [side,inArea argument,0,1] execVM "f\EandEcheck\f_EandECheckLoop.sqf";

// ====================================================================================

// F3 - Casualties Cap
// Credits and documentation: https://github.com/folkarps/F3/wiki

// [[GroupName or SIDE],100,1] execVM "f\casualtiesCap\f_CasualtiesCapCheck.sqf";
// [[GroupName or SIDE],100,{code}] execVM "f\casualtiesCap\f_CasualtiesCapCheck.sqf";

// BLUFOR > NATO
// [BLUFOR,100,1] execVM "f\casualtiesCap\f_CasualtiesCapCheck.sqf";

// OPFOR > CSAT
// [OPFOR,100,1] execVM "f\casualtiesCap\f_CasualtiesCapCheck.sqf";

// INDEPENDENT > AAF
// [INDEPENDENT,100,1] execVM "f\casualtiesCap\f_CasualtiesCapCheck.sqf";

// ====================================================================================

// F3 - Disable Thermals
// Credits and documentation: https://github.com/folkarps/F3/wiki
[] spawn f_fnc_disableThermals;
// [[UnitName1, "UnitClass1"]] spawn f_fnc_disableThermals;


// ====================================================================================
// ====================================================================================
// ====================================================================================
cc_fnc_taskPatrol = compile preprocessfile "cc\taskPatrol.sqf"; //put these before everything else to make sure they are defined for later
cc_fnc_spawnPatrol = compile preprocessfile "cc\spawnPatrol.sqf";
// ====================================================================================
[VehFIA_TRT1,VehFIA_TRT2,VehFIA_TRT3] spawn {
	switch (c_param_GMG) do {
		case 0:{
			{
				_x removeMagazinesTurret ["40Rnd_20mm_g_belt", [0]];
				for "_i" from 1 to 6 do {
					_x addMagazineTurret ["40Rnd_20mm_g_belt",[0],20]; //60 rounds
				};
				_x addWeaponTurret ["LMG_03_Vehicle_F",[0]]; //add 'coaxial' LIM
				_x addMagazineTurret ["200Rnd_556x45_Box_F",[0],100]; //has only 100 rounds
			} forEach _this;
		};
		case 1:{
			{
				_x removeWeaponTurret ["GMG_20mm",[0]];
				_x addWeaponTurret ["HMG_01",[0]];
				for "_i" from 1 to 3 do {
					_x addMagazineTurret ["200Rnd_127x99_mag",[0]]; //800 rounds
				};
			} forEach _this;
		};
		case 2:{
			{
				_x removeWeaponTurret ["GMG_20mm",[0]];
				_x addWeaponTurret ["MMG_02_vehicle",[0]];
				for "_i" from 1 to 8 do {
					_x addMagazineTurret ["130Rnd_338_Mag",[0]]; //1040 total ammo
				};
			} forEach _this;
		};
		case 3:{ //BRRRRRRRRRT
			{
				_x removeWeaponTurret ["GMG_20mm",[0]];
				_x addWeaponTurret ["Gatling_30mm_Plane_CAS_01_F",[0]]; //A-10's cannon
				for "_i" from 1 to 2 do {
					_x addMagazineTurret ["1000Rnd_Gatling_30mm_Plane_CAS_01_F",[0]];
				};
			} forEach _this;
		};
		default{
			{
				_x addWeaponTurret ["LMG_03_Vehicle_F",[0]]; //add 'coaxial' LIM
				_x addMagazineTurret ["200Rnd_556x45_Box_F",[0],100]; //has only 100 rounds
			} forEach _this;
		};
	};
};
// ====================================================================================
[] execVM "boxes.sqf";
[] execVM "spawn.sqf";
