// F3 - Briefing
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// ====================================================================================

// FACTION: AAF

// ====================================================================================

// NOTES: CREDITS
// The code below creates the administration sub-section of notes.

_cre = player createDiaryRecord ["diary", ["Credits","
<br/>
Made by Ciaran for Folk ARPS.<br/>
Using Wolfenswan (wolfenswanarps@gmail.com)'s X-eola format, butchered together with Shado's HSLD cache spawning.
<br/><br/>
Made with F3 (http://www.ferstaberinde.com/f3/en/).
"]];

// ====================================================================================

// NOTES: ADMINISTRATION
// The code below creates the administration sub-section of notes.

_adm = player createDiaryRecord ["diary", ["Administration","
<br/>
<font size='18'>RULES:</font><br/>
Group leaders have a teleport option, which can be used to transport their group to anywhere WITHIN the green ellipse.<br/>
Sniper team must remain within the green ellipse for the duration of the mission. The rest of the elements must stay within the blue ellipse.
"]];

// ====================================================================================

// NOTES: EXECUTION
// The code below creates the execution sub-section of notes.

_exe = player createDiaryRecord ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
Stop the FIA forces from destroying the caches.
<br/><br/>
<font size='18'>MOVEMENT PLAN</font>
<br/>
We start somewhere within the green ellipse. The enemy forces could come from any direction.
"]];

// ====================================================================================

// NOTES: MISSION
// The code below creates the mission sub-section of notes.

_mis = player createDiaryRecord ["diary", ["Mission",format ["
<br/>
Defend the caches dropped <marker name = 'marker_3'>in the forest</marker> from attacking FIA forces.<br/>
If they destroy %1 out of the %2 caches we'll be defeated.",ws_param_caches_target,f_param_number_of_caches]
]];

// ====================================================================================

// NOTES: SITUATION
// The code below creates the situation sub-section of notes.

_sit = player createDiaryRecord ["diary", ["Situation","
<br/>
Unforunately, a Mohawk helicopter carrying supplies has gone down <marker name = 'marker_4'>near the forest west of Air Station Mike-26</marker>. The caches have been scattered along the valley leading up to the crash site. Witnesses to the crash have marked possible locations of the caches, so we'll need to check each location to ensure the cache is there. It's likely the local FIA forces have seen the Mohawk go down, so we need to secure the area before they arrive.
<br/><br/>
<font size='18'>ENEMY FORCES</font>
<br/>
A bunch of FIA fighters, likely armed with AKs.
<br/><br/>
<font size='18'>FRIENDLY FORCES</font>
<br/>
2 AAF squads, and possibly a sniper if we can find a good enough marksman.
"]];

// ====================================================================================
