/* Gibt den Piloten Order in die Helikopter einzusteigen
*
* Ausgeführt durch Spieler ACE-Interkation:
* "ai\preparetakeoff.sqf" remoteExec ["execVM", 2, false]
* (Server only)
*
*/

[] execVM "ai\pilotdialogue1.sqf";
//[] execVM "ai\keeprampopen.sqf";
missionstarted = true;


//PILOT 1 und 2 =======================================================================

[] spawn {
	pilot1 enableAI "MOVE";
	pilot2 enableAI "MOVE";

	_wp = group pilot1 addWaypoint [[17104.1,26245.8,7.1938],0];
	_wp setWaypointType "MOVE";
	_wp setWaypointSpeed "LIMITED";

	_wp = group pilot2 addWaypoint [[17104.1,26245.8,7.1938],0];
	_wp setWaypointType "MOVE";
	_wp setWaypointSpeed "LIMITED";

	_wp = group pilot1 addWaypoint [[17093.5,26248.7,7.1938],1];
	_wp setWaypointType "MOVE";
	_wp setWaypointSpeed "LIMITED";

	_wp = group pilot2 addWaypoint [[17093.5,26248.7,7.1938],1];
	_wp setWaypointType "MOVE";
	_wp setWaypointSpeed "LIMITED";

	_wp = group pilot1 addWaypoint [[17086.2,26280.7,7.1938],1];
	_wp setWaypointType "MOVE";
	_wp setWaypointSpeed "LIMITED";
	_wp setWaypointStatements ["true", "removeHeadGear pilot1; pilot1 addHeadGear ""H_PilotHelmetHeli_B""; pilot1 moveInDriver ch_1"];

	_wp = group pilot2 addWaypoint [[17083.2,26280.7,7.1938],1];
	_wp setWaypointType "MOVE";
	_wp setWaypointSpeed "LIMITED";
	_wp setWaypointStatements ["true", "removeHeadGear pilot2; pilot2 addHeadGear ""H_PilotHelmetHeli_B""; pilot2 moveInTurret [ch_1,[0]]"];

	waitUntil {pilot1 == driver ch_1};
	pilot1 stop true;
	waitUntil {pilot2 in ch_1};
	pilot2 stop true;

	crew1 moveInGunner ch_1;
	crew2 moveInTurret [ch_1,[2]];

	[pilot2, crew1, crew2] joinSilent (group pilot1);

	sleep 10;
	ch_1 animateDoor ["ramp_anim", 1];
	sleep 110;
	ch_1 engineOn true;
};

//PILOT 3 und 4 =======================================================================

[] spawn {
	sleep 2;
	pilot3 enableAI "MOVE";
	pilot4 enableAI "MOVE";

	pilot3 switchMove "";
	pilot4 switchMove "";

	deckofficer switchMove "";
	deckofficer setDir 215;
	deckofficer disableAI "MOVE";

	sleep 2;

	[pilot4] joinSilent (group pilot3);
	pilot3 assignAsDriver uh_3;
	pilot3 moveInDriver uh_3;
	pilot4 assignAsGunner uh_3;
	pilot4 moveinTurret [uh_3, [0]];

	sleep 120;

	uh_3 engineOn true;
};


