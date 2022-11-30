// F3 - Briefing
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// ====================================================================================

// FACTION: FIA

// ====================================================================================

// NOTES: CREDITS
// The code below creates the administration sub-section of notes.

_cre = player createDiaryRecord ["diary", ["Credits","
<br/>
Made by Ciaran for Folk ARPS.<br/><br/>
Thanks to:<br/>
Shado' for allowing me to steal and butcher his crate stealing script.<br/>
Costno for his briefing for the crate stealing script I stole and butchered.<br/>
<br/><br/>
Made with F3 (http://www.ferstaberinde.com/f3/en/).
"]];

// ====================================================================================

// NOTES: ADMINISTRATION
// The code below creates the administration sub-section of notes.

_adm = player createDiaryRecord ["diary", ["Administration",format ["
<br/>
Victory by extracting %1 supply crates towards <marker name='marker_11'>friendly forces</marker>.
<br/><br/>
<font size='18'>LOADING AND MOVING CRATES</font>
<br/>
You are probably thinking: comrade, how do I get these crates into trucks to take to <marker name='marker_11'>friendly forces</marker> for victory? It's Arma?
<br/><br/>
I will tell you!
<br/><br/>
Comrade Shado' has produced (and Comrade Ciaran has, unfortunately, butchered) a magic way of transferring boxes into trucks.
<br/><br/>
Simply bring a truck close to the crate and get out.  Now look at the crate you are near, an action should appear which says 'Load cargo'  Hold your spacebar key (default) to begin the action.  Once the circle fills the crate will be loaded into the truck.
<br/><br/>
Once you have crates in a truck (each truck carries up to 4) you can bring the truck to <marker name='marker_11'>friendly forces</marker>. Remember that we need to collect at least %1 for victory.
If, for example, your truck dies along the way another action is available to unload the crates (though you void the script's warranty by doing so).
<br/><br/>
", c_param_boxes]]];

// ====================================================================================

// NOTES: EXECUTION
// The code below creates the execution sub-section of notes.

_trtWeapon = switch (c_param_GMG) do {
    case 0:{'20mm GMG'};
    case 1:{'.50 HMG'};
    case 2:{'.338 SPMG'};
    default{'20mm GMG'};
};

_exe = player createDiaryRecord ["diary", ["Execution",format ["
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
We need <marker name='marker_0'>to</marker> <marker name='marker_1'>collect</marker> <marker name='marker_2'>%1</marker> <marker name='marker_3'>crates</marker> <marker name='marker_4'>of</marker> <marker name='marker_5'>supplies</marker>, located somewhere within the marked circles, and extract them towards <marker name='marker_11'>friendly forces</marker>.
<br/><br/>
<font size='18'>MOVEMENT PLAN</font>
<br/>
We're loaded in trucks to transport us to the <marker name='marker_10'>AO</marker>, but once we've collected crates the trucks can't carry us too.<br/>
Essentially, do not get out of the trucks until you are planning to stay out of them.
<br/><br/>
<font size='18'>FIRE SUPPORT PLAN</font>
<br/>
Our trucks have been fitted with %2 turrets, mounted on the rear of the bed (I'm sure NATO won't mind).
<br/>
",c_param_boxes,_trtWeapon]
]];

// ====================================================================================

// NOTES: MISSION
// The code below creates the mission sub-section of notes.

_mis = player createDiaryRecord ["diary", ["Mission",format ["
<br/>
We need to push through the rebel held area <marker name='marker_0'>and</marker> <marker name='marker_1'>collect</marker> <marker name='marker_2'>the</marker> <marker name='marker_3'>crates</marker> <marker name='marker_4'>of</marker> <marker name='marker_5'>supplies</marker>, which are located somewhere within the marked circles.<br/>
Extract %1 crates of supplies from <marker name='marker_10'>rebel held territory</marker>, and take them towards <marker name='marker_11'>friendly forces</marker>. The crates can be loaded into our trucks, but can also be loaded into other vehicles if necessary. Hell, you could probably squeeze one onto the back our LSV...
",c_param_boxes]
]];

// ====================================================================================

// NOTES: SITUATION
// The code below creates the situation sub-section of notes.

_sit = player createDiaryRecord ["diary", ["Situation",format ["
<br/>
Fighting on Malden has been fierce for the past few days, but we're making advances; CSAT Forces are slowly being pushed south. However, at 0600 hours this morning, one of our supply planes was shot down on its way to Malden Airport, and its cargo has been scattered throughout a rebel held area just south of our front line. Unfortunately, these rebels are CSAT supporters, and they'll be trying to secure the crates. We need to stop them, and recover the crates.
<br/><br/>
<font size='18'>ENEMY FORCES</font>
<br/>
CSAT funded rebels, and possibly some lightly armed CSAT reservists.
<br/><br/>
<font size='18'>FRIENDLY FORCES</font>
<br/>
The Malden Self Defence Forces<br/>
We've also brought some trucks we, uh... borrowed from NATO... y'know, in the spirit of Christmas. They probably won't miss them. These trucks have been fitted with %1 turrets and can be used to carry the crates of supplies.
",_trtWeapon]
]];

// ====================================================================================
