// F3 - Briefing
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// ====================================================================================

// FACTION: FIA

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
Group leaders have a teleport option, which can be used to transport their group to anywhere OUTSIDE the blue ellipse.<br/>
Sniper team must remain outside the green ellipse until all other friendly elements are eliminated.
"]];

// ====================================================================================

// NOTES: EXECUTION
// The code below creates the execution sub-section of notes.

_exe = player createDiaryRecord ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
Destroy the AAF caches, or eliminate the defenders.
<br/><br/>
<font size='18'>MOVEMENT PLAN</font>
<br/>
We start outside the blue ellipse. AAF units are likely defending the area from within the green ellipse.
"]];

// ====================================================================================

// NOTES: MISSION
// The code below creates the mission sub-section of notes.

_mis = player createDiaryRecord ["diary", ["Mission",format ["
<br/>
Destroy the AAF caches <marker name = 'marker_3'>located in the forest</marker> using the explosive charges our Combat Engineers are carrying, or wipe out the defending AAF force.<br/>
We must destroy %1 of the %2 caches to be victorious.",ws_param_caches_target,f_param_number_of_caches]
]];

// ====================================================================================

// NOTES: SITUATION
// The code below creates the situation sub-section of notes.

_sit = player createDiaryRecord ["diary", ["Situation","
<br/>
We've spotted an AAF Mohawk helicopter go down <marker name = 'marker_4'>near the forest west of Air Station Mike-26</marker>. Witnesses reported it dropping supply caches as it went down, and have marked possible locations of the caches. We can weaken the AAF on Stratis by destroying the caches.
<br/><br/>
<font size='18'>ENEMY FORCES</font>
<br/>
The local AAF force.
<br/><br/>
<font size='18'>FRIENDLY FORCES</font>
<br/>
2 FIA squads, and possibly a sniper if we can find a good enough marksman.
"]];

// ====================================================================================
