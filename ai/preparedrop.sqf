if (!isServer) exitWith {};

//UH_3 trennt sich von der Gruppe und macht sein eigenes Ding
/*
[]spawn {
	_newGroup = createGroup west;
	[pilot3, pilot4] joinSilent _newGroup;

	sleep 1;
	_wp = group uh_3 addWaypoint [[7739.43,23592.7,16.5616], 0];
	_wp setWaypointType "MOVE";
	_wp setWaypointSpeed "FULL";
	_wp setWaypointStatements ["true", "uh_3 flyInHeight 150"];

	_wp = group uh_3 addWaypoint [[7448.59,21701.2,77.866], 0];
	_wp setWaypointType "MOVE";
	_wp setWaypointSpeed "FULL";

	_wp = group uh_3 addWaypoint [[3686.6,22741.3,48.0563], 0];
	_wp setWaypointType "MOVE";
	_wp setWaypointSpeed "FULL";
};
*/

"client\pilotdialogue3.sqf" remoteExec ["execVM",0,true];

ch_1 flyInHeight 100;

//Chinook Pilot gibt Anweisungen
/*
uisleep 10;
pilot1 kbAddTopic ["t6", "sentences.bikb", "", ""]; 
pilot1 kbTell  [pilot2, "t6", "06_getrdy",["",{},"",[""]],"VEHICLE"];

uisleep 15;
ch_1 animateDoor ["ramp_anim", 1];

uisleep 1;
pilot1 kbAddTopic ["t7", "sentences.bikb", "", ""]; 
pilot1 kbTell  [pilot2, "t7", "07_20s",["",{},"",[""]],"VEHICLE"];

uisleep 10;
pilot1 kbAddTopic ["t8", "sentences.bikb", "", ""]; 
pilot1 kbTell  [pilot2, "t8", "08_10s",["",{},"",[""]],"VEHICLE"];;

uisleep 8;
pilot1 kbAddTopic ["t9", "sentences.bikb", "", ""]; 
pilot1 kbTell  [pilot2, "t9", "09_54321",["",{},"",[""]],"VEHICLE"];
*/

sleep 15;
ch_1 animateDoor ["ramp_anim", 1];

//"client\checkparachute.sqf" remoteExec ["execVM",0,true];