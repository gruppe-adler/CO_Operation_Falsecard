

if !(hasInterface) exitWith {};

//Wird für JIP Spieler ausgeführt, JIP Spieler überspringen diesen Check:
if (!didJIP) then {

	//Spieler springt raus
	waitUntil {vehicle player == player};

	sleep 1;

	//Spieler öffnet Fallschirm
	waitUntil {!(vehicle player == player)};

	sleep 1;

	//Spieler landet
	waitUntil {vehicle player == player};
};

//Spieler ist verwundbar
player allowDamage true;