// F3 - Briefing
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// ====================================================================================

// FACTION: NATO

// ====================================================================================

// NOTES: CREDITS
// The code below creates the administration sub-section of notes.

_cre = player createDiaryRecord ["diary", ["Credits","
<br/>
Made by Ciaran for Folk ARPS.
Thanks to Shado' for being there to shout at.
<br/><br/>
Made with F3 (http://www.ferstaberinde.com/f3/en/)
"]];

// ====================================================================================

// NOTES: ADMINISTRATION
// The code below creates the administration sub-section of notes.

_adm = player createDiaryRecord ["diary", ["Administration","
<br/>
Caches can be destroyed with the Satchel Charges our engineers are carrying. There are spare charges in our attack boats.<br/>
We're all wearing survival fatigues, meaning we can swim at a reasonable speed.
"]];

// ====================================================================================

// NOTES: EXECUTION
// The code below creates the execution sub-section of notes.

_exe = player createDiaryRecord ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
Destroy the caches, kill the VIPs, clear the HQ. Simple.
<br/><br/>
<font size='18'>FIRE SUPPORT PLAN</font>
<br/>
We have attack boats, armed with two .50 HMGs each.
<br/>
"]];

// ====================================================================================

// NOTES: MISSION
// The code below creates the mission sub-section of notes.

_mis = player createDiaryRecord ["diary", ["Mission","
<br/>
  1. Destroy the caches scattered around the islands. Possible locations are marked with green markers on the map.<br/>
  2. Eliminate the Syndikat and CSAT VIPs, currently located in the <marker name='marker_14'>HQ</marker>.<br/>
  3. Clear the <marker name='marker_14'>CSAT HQ</marker> of all enemy forces.<br/>
  4. Clear the <marker name='marker_16'>CSAT base</marker> of all enemy forces.<br/>
"]];

// ====================================================================================

// NOTES: SITUATION
// The code below creates the situation sub-section of notes.

_sit = player createDiaryRecord ["diary", ["Situation","
<br/>
CSAT and Syndikat have been working together around the Horizon Islands for a while now. They're using several small islands south of the main island, Tanoa, to store weapons and other equipment. They've also set up a <marker name='marker_14'>HQ</marker> on one of the islands, as well as a <marker name='marker_16'>smaller base</marker> on the western island. Up until now we've left them to do as they please, but today, that changes. We need to assault their bases and destroy their equipment before they get out of hand.
<br/><br/>
<font size='18'>ENEMY FORCES</font>
<br/>
At most, a couple of squads of Syndikat and a squad or two of CSAT soldiers.
<br/><br/>
<font size='18'>FRIENDLY FORCES</font>
<br/>
Our Tanoan Armed Forces waterborne platoon.
"]];

// ====================================================================================
