/* Aktion, die vom Mechaniker aufgerufen wird, wenn er den Truck untersucht
*
*/

//Baumaterial freigeben
"plankactions\plankactions_init.sqf" remoteExec ["execVM",0,true];

//Briefing Einträge
untersuchung = "
<t color='D60F0F'>(NUR ICH HABE DIESEN EINTRAG)</t><br/><br/>Der Motor ist hinüber. Es sind einige Einschusslöcher zu erkennen, die wohl beim Überfall auf den Konvoi entstanden sind. Der Schaden muss sich auf der Fahrt hierher verschlimmert haben. Wenn wir ein paar Ersatzteile finden können, kann ich den Motor vielleicht reparieren. Wir sollten alte Schrotthaufen und Wracks von LKW oder Transportern durchsuchen.<br /><br />

<img image='pictures\junkpile.jpg' width='200' height='150'/><br />Schrotthaufen
<br /><br />
<img image='pictures\truckwreck.jpg' width='200' height='150' /><br />Transporter Wrack (Beispiel)
";

interaction = "<t color='D60F0F'>(NUR ICH HABE DIESEN EINTRAG)</t><br /><br />Alle Interaktionen über ACE-Interaction. Schrotthaufen und Wracks können durchsucht werden. Ersatzteile können an andere Spieler weitergegeben werden. Nur ich kann den Motor reparieren.<br/><br/>Baumaterial per Interaktion mit dem Truck.";

baumaterial = "<t color='D60F0F'>(NUR ICH HABE DIESEN EINTRAG)</t><br/><br/>Bei meiner Untersuchung des LKWs habe ich mir auch die Ladung näher angesehen. Unter anderem habe ich Verteidigungsmaterial gefunden.";

//???
problems = false;
BROKENDOWN = true;
publicVariable "BROKENDOWN";

//Ladebalken
[10, [], {call diagnosedone}, {hint "Abgebrochen"}, "Truck untersuchen"] call ace_common_fnc_progressBar;

diagnosedone = {
	//Einträge hinzufügen
	["Hinweis",["Neuer Tagebucheintrag (Karte->'LKW')"]] call BIS_fnc_showNotification;
	player createDiarySubject ["lkw", "LKW"];
	player createDiaryRecord ["lkw", ["Interaction", interaction]];
	player createDiaryRecord ["lkw", ["Baumaterial", baumaterial]];
	player createDiaryRecord ["lkw", ["Untersuchung", untersuchung]];
	interaction = nil;
	baumaterial = nil;
	untersuchung = nil;
	diagnosedone = nil;
};



