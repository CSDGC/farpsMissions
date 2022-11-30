// F3 - Set Group IDs
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// ====================================================================================

// OPEN THE ARRAY CONTAING ALL GROUPS
// Do not comment or delete this line!
_groups = [

// ====================================================================================

// GROUP IDs: BLUFOR > NATO
// Automatically assigns intelligible names to groups

["GrpNATO_CO","TAF CO -"],
["GrpNATO_DC","NATO DC -"],
["GrpNATO_COV","NATO COV -"],

["GrpNATO_ASL","TAF ASL -"],
["GrpNATO_A1","TAF A1 -"],
["GrpNATO_A2","TAF A2 -"],
["GrpNATO_AV","NATO AV -"],

["GrpNATO_BSL","TAF BSL -"],
["GrpNATO_B1","TAF B1 -"],
["GrpNATO_B2","TAF B2 -"],
["GrpNATO_BV","NATO BV -"],

["GrpNATO_CSL","NATO CSL -"],
["GrpNATO_C1","NATO C1 -"],
["GrpNATO_C2","NATO C2 -"],
["GrpNATO_CV","NATO CV -"],

["GrpNATO_JSL","NATO JSL -"],
["GrpNATO_J1","NATO J1 -"],
["GrpNATO_J2","NATO J2 -"],
["GrpNATO_JV","NATO JV -"],

["GrpNATO_MMG1","NATO MMG1 -"],
["GrpNATO_MMG2","NATO MMG2 -"],
["GrpNATO_HMG1","NATO HMG1 -"],
["GrpNATO_MAT1","NATO MAT1 -"],
["GrpNATO_MAT2","NATO MAT2 -"],
["GrpNATO_HAT1","NATO HAT1 -"],
["GrpNATO_MTR1","NATO MTR1 -"],
["GrpNATO_MSAM1","NATO MSAM1 -"],
["GrpNATO_HSAM1","NATO HSAM1 -"],
["GrpNATO_ST1","NATO ST1 -"],
["GrpNATO_DT1","NATO DT1 -"],
["GrpNATO_ENG1","NATO ENG1 -"],

["GrpNATO_IFV1","NATO IFV1 -"],
["GrpNATO_IFV2","NATO IFV2 -"],
["GrpNATO_TNK1","NATO TNK1 -"],

["GrpNATO_TH1","NATO TH1 -"],
["GrpNATO_TH2","NATO TH2 -"],
["GrpNATO_TH3","NATO TH3 -"],
["GrpNATO_TH4","NATO TH4 -"],
["GrpNATO_TH5","NATO TH5 -"],
["GrpNATO_TH6","NATO TH6 -"],
["GrpNATO_TH7","NATO TH7 -"],
["GrpNATO_TH8","NATO TH8 -"],
["GrpNATO_AH1","NATO AH1 -"]

// Always make sure there's no comma after the last entry!

// ====================================================================================

// END OF THE ARRAY CONTAING ALL GROUPS
// Do not comment or delete this line!
];

// ====================================================================================

// SET GROUP IDS
// Execute setGroupID Function for all factions
{_x call f_fnc_setGroupID} forEach _groups;
