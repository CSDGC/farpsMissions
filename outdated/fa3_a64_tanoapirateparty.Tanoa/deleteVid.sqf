params ["_laptop"];

[
	_laptop,
	"Delete Video",
	"a3\ui_f\data\IGUI\cfg\simpleTasks\types\interact_ca.paa",
	"a3\ui_f\data\IGUI\cfg\simpleTasks\types\interact_ca.paa",
	"side _this == resistance",
	"(alive _this) && (cursorTarget == _target)",
	{["Alert",["Deletion Started!"]] remoteExec ["bis_fnc_showNotification",0];},
	{},
	{
		["Alert",["Deletion Complete!"]] remoteExec ["bis_fnc_showNotification",0];
    (_this select 0) setobjecttextureglobal [0,"a3\structures_f\items\electronics\data\electronics_screens_laptop_co.paa"];
    sleep 1;
    [1] remoteExec ["f_fnc_mpEnd",2];
	},
	{["Alert",["Deletion Interrupted!"]] remoteExec ["bis_fnc_showNotification",0];},
	nil,
	6,
	6,
	true
] call BIS_fnc_holdActionAdd;
