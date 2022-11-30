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
Shado' for allowing me to butcher his crate stealing script.<br/>
Costno for his briefing for the crate stealing script I butchered.<br/>
darkChozo for his snow script.
<br/><br/>
Begrudgingly ported to FA3 version 3.5.6.
"]];

// ====================================================================================

// NOTES: ADMINISTRATION
// The code below creates the administration sub-section of notes.

_adm = player createDiaryRecord ["diary", ["Administration",format ["
<br/>
Victory by extracting %1 supply crates towards <marker name='marker_11'>Air Station Mike-26</marker>.
<br/><br/>
<font size='18'>LOADING AND MOVING CRATES</font>
<br/>
You are probably thinking, comrade how do I get these crates into trucks to take to <marker name='marker_11'>Air Station Mike-26</marker> for victory? It's Arma?
<br/><br/>
I will tell you!
<br/><br/>
Comrade Shado' has produced a magic way of transferring boxes into our trucks we borrowed from NATO.
<br/><br/>
Simply bring a truck close to the crate and get out. Now look at the crate you are near, an action should appear which says 'Load cargo'. Hold your spacebar key (default) to begin the action. Once the circle fills the crate will be loaded into the truck.
<br/><br/>
Once you have crates in a truck (each truck carries up to 4) you can bring the truck to <marker name='marker_11'>Air Station Mike-26</marker>. Remember that we need to collect at least %1 for victory.
If, for example, your truck dies along the way another action is available to unload the crates.
<br/><br/>
", c_param_boxes]]];

// ====================================================================================

// NOTES: EXECUTION
// The code below creates the execution sub-section of notes.

_trtWeapon = switch (c_param_GMG) do {
    case 0:{'20mm GMG'};
    case 1:{'.50 HMG'};
    case 2:{'.338 SPMG'};
    case 3:{'BRRRT'};
    default{'20mm GMG'};
};

_exe = player createDiaryRecord ["diary", ["Execution",format ["
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
We need <marker name='marker_0'>to</marker> <marker name='marker_1'>collect</marker> <marker name='marker_2'>%1</marker> <marker name='marker_3'>crates</marker> <marker name='marker_4'>of</marker> <marker name='marker_5'>presents</marker>, located somewhere within the marked circles, and extract them towards <marker name='marker_11'>Air Station Mike-26</marker>.
<br/><br/>
<font size='18'>MOVEMENT PLAN</font>
<br/>
We're loaded in trucks to transport us to the <marker name='marker_10'>AO</marker>, but once we've collected crates the trucks can't carry us too.<br/>
Do not get out of the trucks until you are planning to staying out of them. You will be unable to get back in.
<br/><br/>
<font size='18'>FIRE SUPPORT PLAN</font>
<br/>
Our trucks have been fitted with %2 turrets, mounted on the rear of the bed.
<br/>
",c_param_boxes,_trtWeapon]
]];

// ====================================================================================

// NOTES: MISSION
// The code below creates the mission sub-section of notes.

_mis = player createDiaryRecord ["diary", ["Mission",format ["
<br/>
We've inserted on the beach behind enemy lines. We need to push through the forest <marker name='marker_0'>and</marker> <marker name='marker_1'>collect</marker> <marker name='marker_2'>the</marker> <marker name='marker_3'>crates</marker> <marker name='marker_4'>of</marker> <marker name='marker_5'>presents</marker>, which are located somewhere within the marked circles.<br/>
Extract %1 crates of presents from <marker name='marker_10'>AAF held territory</marker>, and extract them towards <marker name='marker_11'>Air Station Mike-26</marker>.
",c_param_boxes]
]];

// ====================================================================================

// NOTES: SITUATION
// The code below creates the situation sub-section of notes.

_sit = player createDiaryRecord ["diary", ["Situation",format ["
<br/>
Comrades, it's Christmas! Now, usually the party does not condone capitalist holidays such as this (and that is still true), however, the Emperor of Christmas himself, Santa, has asked us for some help. He was on his way to Air Station Mike-26 when he dropped several crates of presents. Unfortunately, the capitalist pigs at the AAF have captured the presents and plan on selling them. We therefore need to recover the presents and deliver them to Santa.
<br/><br/>
<font size='18'>ENEMY FORCES</font>
<br/>
A lightly armed AAF platoon. Most of their forces are distracted on Altis, so the only guys here on Stratis are pretty underequipped.
<br/><br/>
<font size='18'>FRIENDLY FORCES</font>
<br/>
The Third International Fighting Brigade of Takistan in the name of Che Guevara.<br/>
We've also brought some trucks we, uh... acquired from NATO... y'know, in the spirit of Christmas. These trucks have been fitted with %1 turrets and can be used to carry the crates of presents.
",_trtWeapon]
]];

// ====================================================================================
