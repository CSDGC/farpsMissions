params ["_crate"];
[
    _crate,                                                                           // Object the action is attached to
    "Take Carbine",                                                                       // Title of the action
    "a3\ui_f\data\IGUI\cfg\simpleTasks\types\rifle_ca.paa",                      // Idle icon shown on screen
    "a3\ui_f\data\IGUI\cfg\simpleTasks\types\rifle_ca.paa",                      // Progress icon shown on screen
    "true",                                                        // Condition for the action to be shown
    "true",                                                      // Condition for the action to progress
    {},                                                                                  // Code executed when action starts
    {},                                                                                  // Code executed on every progress tick
    {
      (_this select 1) removeWeapon primaryWeapon (_this select 1);
      {(_this select 1) removeMagazines _x;} forEach ["100Rnd_580x42_Mag_F","100Rnd_580x42_Mag_Tracer_F","30Rnd_580x42_Mag_F","30Rnd_580x42_Mag_Tracer_F","30Rnd_762x39_Mag_F","30Rnd_545x39_Mag_F"];
      private "_items"; _items = itemsWithMagazines (_this select 1); //collect unit's current items
      removeAllItemsWithMagazines (_this select 1); removeVest (_this select 1); //remove items and vest
      (_this select 1) addVest "V_TacChestrig_grn_F"; {(_this select 1) addItem _x} forEach _items; //reassign the items and give a new vest
      (_this select 1) addMagazines ["30Rnd_545x39_Mag_F", 7];
      (_this select 1) addWeapon "arifle_AKS_F";
      (_this select 1) linkItem "NVGoggles_INDEP";
      (_this select 1) addItem "FirstAidKit";
      (_this select 1) selectWeapon primaryWeapon (_this select 1); //ensure unit has primary weapon selected
    },                                                // Code executed on completion
    {},                                                                                  // Code executed on interrupted
    [],                                                                                  // Arguments passed to the scripts as _this select 3
    1.5,                                                                                  // Action duration [s]
    10,                                                                                   // Priority
    true,                                                                                // Remove on completion
    false                                                                                // Show in unconscious state
] call BIS_fnc_holdActionAdd;
