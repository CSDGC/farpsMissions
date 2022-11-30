// F3 - Folk Group Markers - BLUFOR
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// ====================================================================================

// MARKERS: BLUFOR > NATO
// Markers seen by players in NATO, NATO (Pacific) & CTRG slots.

if (_unitfaction in ["blu_f","blu_t_f","blu_ctrg_f"]) then {

	["GrpNATO_CO",_hq, "CO", "ColorYellow"] spawn f_fnc_localGroupMarker;

	["GrpNATO_ASL",_hq, "ASL", "ColorRed"] spawn f_fnc_localGroupMarker;
	["GrpNATO_A1",_ft, "A1", "ColorRed"] spawn f_fnc_localGroupMarker;
	["GrpNATO_A2",_ft, "A2", "ColorRed"] spawn f_fnc_localGroupMarker;

	["GrpNATO_BSL",_hq, "BSL", "ColorBlue"] spawn f_fnc_localGroupMarker;
	["GrpNATO_B1",_ft, "B1", "ColorBlue"] spawn f_fnc_localGroupMarker;
	["GrpNATO_B2",_ft, "B2", "ColorBlue"] spawn f_fnc_localGroupMarker;

	["GrpNATO_CTRG",_ft, "CTRG", "ColorGreen"] spawn f_fnc_localGroupMarker;

	["GrpNATO_MMG1",_sup, "MMG1", "ColorOrange"] spawn f_fnc_localGroupMarker;
	["GrpNATO_ST1",_rec, "ST1", "ColorOrange"] spawn f_fnc_localGroupMarker;

	["UnitNATO_CO_M",_med, "COM", "ColorBlack"] spawn f_fnc_localSpecialistMarker;
	["UnitNATO_ASL_M",_med, "AM", "ColorBlack"] spawn f_fnc_localSpecialistMarker;
	["UnitNATO_BSL_M",_med, "BM", "ColorBlack"] spawn f_fnc_localSpecialistMarker;
};
