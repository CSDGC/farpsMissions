// F3 - Folk ARPS Assign Gear Script - NATO
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// ====================================================================================

// DEFINE EQUIPMENT TABLES
// The blocks of code below identifies equipment for this faction
//
// Defined loadouts:
//		co			- commander
//		dc 			- deputy commander / squad leader
//		m 			- medic
//		ftl			- fire team leader
//		ar 			- automatic rifleman
//		aar			- assistant automatic rifleman
//		rat			- rifleman (AT)
//		dm			- designated marksman
//		mmgg		- medium mg gunner
//		mmgag		- medium mg assistant
//		matg		- medium AT gunner
//		matag		- medium AT assistant
//		hmgg		- heavy mg gunner (deployable)
//		hmgag		- heavy mg assistant (deployable)
//		hatg		- heavy AT gunner (deployable)
//		hatag		- heavy AT assistant (deployable)
//		mtrg		- mortar gunner (deployable)
//		mtrag		- mortar assistant (deployable)
//		msamg		- medium SAM gunner"
//		msamag		- medium SAM assistant gunner
//		hsamg		- heavy SAM gunner (deployable)
//		hsamag		- heavy SAM assistant gunner (deployable)
//		sn			- sniper
//		sp			- spotter (for sniper)
//		vc			- vehicle commander
//		vg			- vehicle gunner
//		vd			- vehicle driver (repair)
//		pp			- air vehicle pilot / co-pilot (repair)
//		pcc			- air vehicle co-pilot (repair) / crew chief (repair)
//		pc			- air vehicle crew
//		eng			- engineer (demo)
//		engm		- engineer (mines)
//		uav			- UAV operator
//		div    		- divers
//
//		r 			- rifleman
//		car			- carabineer
//		smg			- submachinegunner
//		gren		- grenadier
//
//		v_car		- car/4x4
//		v_tr		- truck
//		v_ifv		- ifv
//
//		crate_small	- small ammocrate
//		crate_med	- medium ammocrate
//		crate_large	- large ammocrate
//
// ====================================================================================

// GENERAL EQUIPMENT USED BY MULTIPLE CLASSES

// ATTACHMENTS - PRIMARY
_attach1 = "acc_pointer_IR";	// IR Laser
_attach2 = "acc_flashlight";	// Flashlight

_silencer1 = "muzzle_snds_M";	// 5.56 suppressor
_silencer2 = "muzzle_snds_L";	// 9mm suppressor

_scope1 = "optic_ERCO_blk_F";	// Basic Scope
_scope2 = "optic_MRCO";			// MRCO Scope - 1x - 6x
_scope3 = "optic_MRCO";			// SOS Scope - 18x - 75x

_bipod1 = "bipod_02_F_blk";		// Default bipod
_bipod2 = "bipod_02_F_blk";		// Khaki bipod

// Default setup
_attachments = [_scope1,_silencer1,_attach1]; // The default attachment set for most units, overwritten in the individual unitType

// [] = remove all
// [_attach1,_scope1,_silencer] = remove all, add items assigned in _attach1, _scope1 and _silencer1
// [_scope2] = add _scope2, remove rest
// false = keep attachments as they are

// ====================================================================================

// ATTACHMENTS - HANDGUN
_hg_silencer1 = "muzzle_snds_acp";	// .45 suppressor

_hg_scope1 = "optic_MRD";			// MRD

// Default setup
_hg_attachments= [_hg_silencer1]; // The default attachment set for handguns, overwritten in the individual unitType

// ====================================================================================

// WEAPON SELECTION

// Standard Riflemen ( MMG Assistant Gunner, Assistant Automatic Rifleman, MAT Assistant Gunner, MTR Assistant Gunner, Rifleman)
_rifle = "arifle_Mk20_F";
_riflemag = "30Rnd_556x45_Stanag";
_riflemag_tr = "30Rnd_556x45_Stanag_Tracer_Yellow";

// Standard Carbineer (Medic, Rifleman (AT), MAT Gunner, MTR Gunner, Carbineer)
_carbine = "arifle_Mk20C_F";
_carbinemag = "30Rnd_556x45_Stanag";
_carbinemag_tr = "30Rnd_556x45_Stanag_Tracer_Yellow";

// Standard Submachine Gun/Personal Defence Weapon (Aircraft Pilot, Submachinegunner)
_smg = "SMG_02_F";
_smgmag = "30Rnd_9x21_Mag_SMG_02_Tracer_Yellow";
_smgmag_tr = "30Rnd_9x21_Mag_SMG_02_Tracer_Yellow";

// Diver
_diverWep = "arifle_SDAR_F";
_diverMag1 = "30Rnd_556x45_Stanag_red";
_diverMag2 = "30Rnd_556x45_Stanag_Tracer_Red";
_diverMag3 = "20Rnd_556x45_UW_mag";

// Rifle with GL and HE grenades (CO, DC, FTLs)
_glrifle = "arifle_MX_GL_Black_F";
_glriflemag = "30Rnd_65x39_caseless_mag";
_glriflemag_tr = "30Rnd_65x39_caseless_mag_Tracer";

// Smoke for FTLs, Squad Leaders, etc
_glsmokewhite = "3Rnd_Smoke_Grenade_shell";
_glsmokegreen = "3Rnd_SmokeGreen_Grenade_shell";
_glsmokered = "3Rnd_SmokeRed_Grenade_shell";

// Flares for FTLs, Squad Leaders, etc
_glflarewhite = "UGL_FlareWhite_F";
_glflarered = "UGL_FlareRed_F";
_glflareyellow = "UGL_FlareYellow_F";
_glflaregreen = "UGL_FlareGreen_F";

// Pistols (CO, DC, Automatic Rifleman, Medium MG Gunner)
_pistol = "hgun_ACPC2_F";
_pistolmag = "9Rnd_45ACP_Mag";

// Grenades
_grenade = "HandGrenade";
_Mgrenade = "MiniGrenade";
_smokegrenade = "SmokeShell";
_smokegrenadegreen = "SmokeShellGreen";
_smokegrenadeblue = "SmokeShellBlue";
_smokegrenadepurple = "SmokeShellPurple";

// misc medical items.
_firstaid = "FirstAidKit";
_medkit = "Medikit";

// Night Vision Goggles
_nvg = "Integrated_NVG_F"; //fullscreen NVGs

// Laserdesignator
_laserdesignator = "Laserdesignator";

// UAV Terminal
_uavterminal = "B_UavTerminal";	  // BLUFOR - FIA

// Chemlights
_chemgreen =  "Chemlight_green";
_chemred = "Chemlight_red";
_chemyellow =  "Chemlight_yellow";
_chemblue = "Chemlight_blue";

// Backpacks
_bag = "B_TacticalPack_oli"; //"B_AssaultPack_dgtl";
_baglarge = "B_Kitbag_mcamo";
_bagdiver =  "B_AssaultPack_blk";		// used by divers
_baguav = "B_UAV_01_backpack_F";			// used by UAV operator
_baghmgg = "B_HMG_01_weapon_F";			// used by Heavy MG gunner
_baghmgag = "B_HMG_01_support_F";			// used by Heavy MG assistant gunner
_baghatg = "B_AssaultPack_mcamo";			// used by Heavy AT gunner
_baghatag = "B_Kitbag_mcamo";			// used by Heavy AT assistant gunner **
_bagmtrg = "B_Mortar_01_weapon_F";			// used by Mortar gunner
_bagmtrag = "B_Mortar_01_support_F";		// used by Mortar assistant gunner
_baghsamg = "B_AA_01_weapon_F";			// used by Heavy SAM gunner
_baghsamag = "B_HMG_01_support_F";			// used by Heavy SAM assistant gunner **

// ====================================================================================

// UNIQUE, ROLE-SPECIFIC EQUIPMENT

// Automatic Rifleman
_AR = "arifle_MX_SW_Black_F";
_ARmag = "100Rnd_65x39_caseless_mag";
_ARmag_tr = "100Rnd_65x39_caseless_mag_Tracer";

// Medium MG
_MMG = "MMG_02_black_F";
_MMGmag = "130Rnd_338_Mag";
_MMGmag_tr = "130Rnd_338_Mag";

// NON-DLC ALTERNATIVE:
// _MMG = "LMG_Zafir_F";
// _MMGmag = "150Rnd_762x54_Box";
// _MMGmag_tr = "150Rnd_762x54_Box"_Tracer";

// Marksman rifle
_DMrifle = "srifle_DMR_07_blk_F";
_DMriflemag = "20Rnd_650x39_Cased_Mag_F";
_DMriflemag_tr = "20Rnd_650x39_Cased_Mag_F";

// Rifleman AT
_RAT = "launch_NLAW_F";
_RATmag = "NLAW_F";

// Medium AT
_MAT = "launch_NLAW_F";
_MATmag1 = "NLAW_F";
_MATmag2 = "NLAW_F";

// Surface Air
_SAM = "launch_B_Titan_F";
_SAMmag = "Titan_AA";

// Heavy AT
_HAT = "launch_B_Titan_short_F";
_HATmag1 = "Titan_AT";
_HATmag2 = "Titan_AP";

// Sniper
_SNrifle = "srifle_DMR_02_F";
_SNrifleMag = "10Rnd_338_Mag";

// Engineer items
_ATmine = "ATMine_Range_Mag";
_satchel = "SatchelCharge_Remote_Mag";
_democharge = "DemoCharge_Remote_Mag";
_APmine1 = "APERSBoundingMine_Range_Mag";
_APmine2 = "APERSMine_Range_Mag";

// ====================================================================================

// CLOTHES AND UNIFORMS

// Define classes. This defines which gear class gets which uniform
// "medium" vests are used for all classes if they are not assigned a specific uniform

_light = [];
_heavy =  ["eng","engm"];
_diver = ["car","aar"];
_pilot = ["pp","pcc","pc"];
_crew = ["m","dm"];
_ghillie = ["sn","sp"];
_specOp = ["mmgg","mmgag","dc","co"];

// Basic clothing
// The outfit-piece is randomly selected from the array for each unit
_baseUniform = ["U_B_T_Soldier_F","U_B_T_Soldier_AR_F","U_B_T_Soldier_SL_F","U_B_T_Soldier_SL_F","U_B_T_Soldier_SL_F"];
_baseHelmet = ["H_PilotHelmetHeli_I"];
_baseGlasses = ["G_Balaclava_TI_blk_F"];

// Vests
_lightRig = ["V_Chestrig_rgr","V_Chestrig_oli"];
_standardRig = ["V_PlateCarrierIA2_dgtl"];
_heavyRig = ["V_PlateCarrierIAGL_dgtl"];

// CTRG
_diverUniform =  ["U_B_CTRG_Soldier_F"];
_diverHelmet = ["H_HelmetB_TI_tna_F"];
_diverRig = ["V_PlateCarrierSpec_rgr"];
_diverGlasses = ["G_Balaclava_TI_G_blk_F"];

// Pilot
_pilotUniform = ["U_B_HeliPilotCoveralls"];
_pilotHelmet = ["H_PilotHelmetHeli_B"];
_pilotRig = ["V_TacVest_blk"];
_pilotGlasses = [];

// Medic/Marksman - slightly lighter vest
_crewUniform = ["U_B_T_Soldier_SL_F"];
_crewHelmet = ["H_PilotHelmetHeli_I"];
_crewRig = ["V_PlateCarrierIA1_dgtl"];
_crewGlasses = ["G_Balaclava_TI_blk_F"];

// NATO Sniper Team
_ghillieUniform = ["U_B_T_Soldier_AR_F"];
_ghillieHelmet = ["H_Booniehat_tna_F"];
_ghillieRig = ["V_PlateCarrier1_rgr"];
_ghillieGlasses = [""];

// NATO units (SL/CO/MMG)
_sfuniform = ["U_B_T_Soldier_F","U_B_T_Soldier_SL_F","U_B_T_Soldier_SL_F"];
_sfhelmet = ["H_PilotHelmetHeli_O"];
_sfRig = ["V_PlateCarrier2_rgr"];
_sfGlasses = ["G_Balaclava_TI_blk_F"];

// ====================================================================================

// INTERPRET PASSED VARIABLES
// The following interprets what has been passed to this script element

_typeofUnit = toLower (_this select 0);	// Tidy input for SWITCH/CASE statements, expecting something like : r = Rifleman, co = Commanding Officer, rat = Rifleman (AT)
_unit = _this select 1;					// expecting name of unit; originally passed by using 'this' in unit init
_isMan = _unit isKindOf "CAManBase";	// We check if we're dealing with a soldier or a vehicle

// ====================================================================================

// This block needs only to be run on an infantry unit
if (_isMan) then {

	// PREPARE UNIT FOR GEAR ADDITION
	// The following code removes all existing weapons, items, magazines and backpacks

	removeBackpack _unit;
	removeAllWeapons _unit;
	removeAllItemsWithMagazines _unit;
	removeAllAssignedItems _unit;

	// ====================================================================================

	// HANDLE CLOTHES
	// Handle clothes and helmets and such using the include file called next.

	#include "f_assignGear_clothes.sqf";

	// ====================================================================================

	// ADD UNIVERSAL ITEMS
	// Add items universal to all units of this faction

	_unit linkItem _nvg;			// Add and equip the faction's nvg
	_unit addItem _firstaid;		// Add a single first aid kit (FAK)
	_unit linkItem "ItemMap";		// Add and equip the map
	_unit linkItem "ItemCompass";	// Add and equip a compass
	_unit linkItem "ItemRadio";		// Add and equip A3's default radio
	_unit linkItem "ItemWatch";		// Add and equip a watch
	_unit linkItem "ItemGPS"; 	// Add and equip a GPS

};

// ====================================================================================

// LOADOUT

_loadout = f_param_loadouts;

// Standard
if (_loadout in [0,1]) then {
	#include "f_assignGear_nato_standard.sqf";
};

// Heavy
if (_loadout == 2) then {
	#include "f_assignGear_nato_heavy.sqf";
	_unit setUnitTrait ["loadCoef",0.9];
};


// ====================================================================================

// If this isn't run on an infantry unit we can exit
if !(_isMan) exitWith {};

// ====================================================================================

// Handle weapon attachments
#include "f_assignGear_attachments.sqf";

// ====================================================================================

// ENSURE UNIT HAS CORRECT WEAPON SELECTED ON SPAWNING
_unit selectweapon primaryweapon _unit;
