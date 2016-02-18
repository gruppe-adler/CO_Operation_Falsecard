/* Gibt den Helikoptern Wegpunkte und lässt sie starten
*
* Ausgeführt durch client\preparetakeoff.sqf ACE-Aktion:
* "ai\takeoff.sqf" remoteExec ["execVM",2,false];
* (Server only)
*
*/

takenoff = true;
//[]execVM "ai\pilotdialogue2.sqf";

keeprampopen = false;
pilot1 stop false;
pilot2 stop false;

_wp1 = getMarkerPos "wp_1";
_wp2 = getMarkerPos "wp_2";
_wp3 = getMarkerPos "wp_3";

_wp1 set [2,50];
_wp2 set [2,120];
_wp3 set [2,120];

//Rampe zu
sleep 1;
ch_1 animateDoor ["ramp_anim", 0];
//[] execVM "ai\keeprampclosed.sqf";

//UH1Y wartet auf Chinook
[] spawn 
{
	sleep 21;
	_wp = group uh_3 addWaypoint [[16348,26100,17], 0];
	_wp setWaypointType "MOVE";
	_wp setWaypointSpeed "NORMAL";
	uh_3 flyInHeight 15;

	[] spawn {
		waitUntil {(uh_3 distance crate) > 4};
		uh_3 setSlingLoad crate;
	};

	sleep 10;
	[pilot3, pilot4] joinSilent (group pilot1);
	/*
	_startposition = getPos ch_1;
	waitUntil {(ch_1 distance2D _startposition) > 20};

	_wp = group uh_3 addWaypoint [[7956.26,25604.2,32.8158], 0];
	_wp setWaypointType "MOVE";
	_wp setWaypointSpeed "FULL";
	uh_3 flyInHeight 15;

	_wp = group uh_3 addWaypoint [[7739.43,23592.7,16.5616], 0];
	_wp setWaypointType "MOVE";
	_wp setWaypointSpeed "FULL";
	_wp setWaypointStatements ["true", "uh_3 flyInHeight 100"];

	_wp = group uh_3 addWaypoint [[7448.59,21701.2,77.866], 0];
	_wp setWaypointType "MOVE";
	_wp setWaypointSpeed "FULL";

	_wp = group uh_3 addWaypoint [[3686.6,22741.3,48.0563], 0];
	_wp setWaypointType "MOVE";
	_wp setWaypointSpeed "FULL";
	*/

};

sleep 15;

//Chinook hebt ab
_wp = group ch_1 addWaypoint [[16348,26200,17], 0];
_wp setWaypointType "MOVE";
_wp setWaypointSpeed "LIMITED";
_wp setWaypointFormation "COLUMN";
ch_1 flyInHeight 10;

_wp = group ch_1 addWaypoint [[8600,25604.2,32.8158], 0];
_wp setWaypointType "MOVE";
_wp setWaypointSpeed "FULL";
_wp setWaypointFormation "COLUMN";
_wp setWaypointStatements ["true", "[] execVM 'ai\preparedrop.sqf'"];

_wp = group ch_1 addWaypoint [_wp1, 0];
_wp setWaypointType "MOVE";
_wp setWaypointSpeed "FULL";
_wp setWaypointStatements ["true", "ch_1 flyInHeight 150"];

_wp = group ch_1 addWaypoint [_wp2, 0];
_wp setWaypointType "MOVE";
_wp setWaypointSpeed "FULL";
_wp setWaypointStatements ["true", "ch_1 flyInHeight 50; uh_3 flyInHeight 50"];

_wp = group ch_1 addWaypoint [_wp3, 0];
_wp setWaypointType "MOVE";
_wp setWaypointSpeed "FULL";

sleep 20;
(group ch_1) setCombatMode "BLUE";

sleep 5;
"client\playmusic.sqf" remoteExec ["execVM",0, false];