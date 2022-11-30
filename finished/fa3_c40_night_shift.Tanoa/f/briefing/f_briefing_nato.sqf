// F3 - Briefing
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// ====================================================================================

// FACTION: NATO

// ====================================================================================

// NOTES: CREDITS
// The code below creates the administration sub-section of notes.

_cre = player createDiaryRecord ["diary", ["Credits","
<br/>
Made by Ciaran for Folk ARPS.<br/>
Thanks to GeEom for the amazi- terrifying helo insertion.
<br/><br/>
Made with F3 (http://www.ferstaberinde.com/f3/en/)
"]];

// ====================================================================================

// NOTES: ADMINISTRATION
// The code below creates the administration sub-section of notes.

_adm = player createDiaryRecord ["diary", ["Administration",format ["
<br/>
If we don't disable <marker name='marker_11'>radio station</marker> within %1 minutes, CSAT forces will be alerted to our presence, and will likely send a large force to stop us.<br/><br/>
The <marker name='marker_1'>generator</marker> for the radio can be destroyed by shooting it.
",cc_param_timeToComplete]]];

// ====================================================================================

// NOTES: EXECUTION
// The code below creates the execution sub-section of notes.

_exe = player createDiaryRecord ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
Clear the town of hostile forces, then disable the <marker name='marker_11'>radio station</marker>, by destroying the <marker name='marker_1'>generator</marker>, before reinforcements are called in.
<br/><br/>
<font size='18'>MOVEMENT PLAN</font>
<br/>
We're being inserted by helo <marker name='marker_10'>into</marker> <marker name='marker_8'>these</marker> <marker name='marker_9'>positions</marker>.
<br/><br/>
<font size='18'>FIRE SUPPORT PLAN</font>
<br/>
NATO might've sent along an MMG and/or sniper team, possibly even a team of CTRG Operators.
<br/><br/>
<font size='18'>SPECIAL TASKS</font>
<br/>
The radio station should be disabled before they manage to call in CSAT reinforcements.
"]];

// ====================================================================================

// NOTES: MISSION
// The code below creates the mission sub-section of notes.

_mis = player createDiaryRecord ["diary", ["Mission","
<br/>
Our goal is to clear the majority of the <marker name='marker_0'>town</marker>, then push through to the <marker name='marker_11'>radio station</marker> and destroy the <marker name='marker_1'>generator</marker> providing power for the station.
"]];

// ====================================================================================

// NOTES: SITUATION
// The code below creates the situation sub-section of notes.

_sit = player createDiaryRecord ["diary", ["Situation","
<br/>
NATO have tasked us with clearing the <marker name='marker_0'>Syndikat held town of Nicolet</marker>, in preparation for a large assault against CSAT-held positions in the morning. They'll be leading this operation; apparently we're not good enough to run this show on our own... At least they've given us some fancy scopes and suppressors though.<br/>With the power out, Syndikat's only way of calling in help from CSAT is the <marker name='marker_11'>radio station</marker> on the other side of town. We'll need to get there before they can call them, or this operation is a failure.
<br/><br/>
<font size='18'>ENEMY FORCES</font>
<br/>
Syndikat thugs, mostly equipped with NVGs, but not all of them.
<br/><br/>
<font size='18'>FRIENDLY FORCES</font>
<br/>
A NATO-led Tanoan Armed Forces platoon. NATO might've also sent some attachments.
"]];

// ====================================================================================
