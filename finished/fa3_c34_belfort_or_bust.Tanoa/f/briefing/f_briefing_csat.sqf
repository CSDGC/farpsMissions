// F3 - Briefing
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// ====================================================================================

// FACTION: CSAT

// ====================================================================================

// NOTES: CREDITS
// The code below creates the administration sub-section of notes.

_cre = player createDiaryRecord ["diary", ["Credits","
<br/>
Made by Ciaran for Folk ARPS.<br/>
Thanks to Costno for feedback.
<br/><br/>
Made with F3 (http://www.ferstaberinde.com/f3/en/)
"]];

// ====================================================================================

// NOTES: ADMINISTRATION
// The code below creates the administration sub-section of notes.

_adm = player createDiaryRecord ["diary", ["Administration","
<br/>
All of the alive men must make it to the <marker name='marker_2'>exfil area</marker> for us to be victorious.<br/><br/>
If we assault the FOB, the equipment crates will have an action on them to grab gear. This will remove your current weapon, primary magazines and vest, and replace it with a new vest, enemy rifle and magazines.
<br/><br/>
Optional Rule: Only group leaders can fly helicopters.
"]];

// ====================================================================================

// NOTES: EXECUTION
// The code below creates the execution sub-section of notes.

_exe = player createDiaryRecord ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
Steal vehicles from the enemy <marker name='marker_5'>town</marker> and <marker name='marker_0'>base</marker> and use them to escape to the <marker name='marker_1'>exfil area</marker>.<br/>
Intel suggests there are helicopters and boats there. There may also be Striders in the area, which are amphibious.
<br/><br/>
<font size='18'>MOVEMENT PLAN</font>
<br/>
We can either assault the <marker name='marker_4'>FOB</marker> then attack the <marker name='marker_5'>town</marker>, or avoid the <marker name='marker_4'>FOB</marker> and attack the <marker name='marker_5'>town</marker> directly. We then need to escape, using whatever means are available, to the <marker name='marker_1'>exfil area</marker>.
<br/><br/>
<font size='18'>SPECIAL TASKS</font>
<br/>
The <marker name='marker_4'>FOB</marker> contains Syndikat weapons and equipment the TAF have acquired in raids; we could use them to assault the <marker name='marker_5'>town</marker>. It's unlikely that the forces there will abandon their posts when we assault the town; they should stay and defend the FOB.<br/>
Our Viper Team are trained medics, but do not have medkits with them.
"]];

// ====================================================================================

// NOTES: MISSION
// The code below creates the mission sub-section of notes.

_mis = player createDiaryRecord ["diary", ["Mission","
<br/>
<marker name='marker_1'>Escape the island</marker> using vehicles stolen from the enemy <marker name='marker_0'>base</marker>.<br/>
We can also assault the enemy <marker name='marker_4'>FOB</marker> containing Syndikat weapons and equipment.
"]];

// ====================================================================================

// NOTES: SITUATION
// The code below creates the situation sub-section of notes.

_sit = player createDiaryRecord ["diary", ["Situation","
<br/>
CSAT's main force recently evacuated the island. Unfortunately, our platoon was left behind and we've had to hide out for a couple of days now. We're low on ammo, our NVGs and weapon sights have run out of power, and we're exhausted. We've noticed the TAF have moved some helicopters onto their <marker name='marker_0'>base</marker>, so this could be our chance to escape from here. We also know that the TAF are storing equipment they've stolen from Syndikat at the <marker name='marker_4'>FOB</marker>, which may be useful in assaulting the <marker name='marker_5'>town</marker> and <marker name='marker_0'>base</marker>, but it's likely to be heavily guarded.
<br/><br/>
<font size='18'>ENEMY FORCES</font>
<br/>
A platoon or more of Tanoan Armed Forces infantry.
<br/><br/>
<font size='18'>FRIENDLY FORCES</font>
<br/>
Our exhausted platoon.
"]];

// ====================================================================================
