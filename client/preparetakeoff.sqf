/* Entfernt ACE-Aktionen von Piloten 1&2 und gibt ihnen neue
*
* Ausgeführt durch Spieler Ace-Interaktion:
* "client\preparetakeoff.sqf" remoteExec ["execVM",-2,true]
* (excl. Server)
*
*/


if (!hasInterface) exitWith {};

musicOff = true;
missionstarted = true;

// Animationen von Piloten 2 und 3 stoppen
sleep 2;
pilot3 switchMove "";
pilot4 switchMove "";
deckofficer switchMove "";


//Nur Gruppenführer
if (player == zf1) then {
	//ACE Aktionen entfernen / hinzufügen
	[pilot1,0,["ACE_MainActions","mcd_orderpilots1"]] call ace_interact_menu_fnc_removeActionFromObject;
	[pilot2,0,["ACE_MainActions","mcd_orderpilots1"]] call ace_interact_menu_fnc_removeActionFromObject;

	_action = ["mcd_orderpilots2", "Befehl: Abflug", "", {"ai\takeoff.sqf" remoteExec ["execVM",2,false];	"client\takeoff.sqf" remoteExec ["execVM",0,true]},{driver ch_1 == pilot1}	] call ace_interact_menu_fnc_createAction;
	[ch_1, 1, ["ACE_SelfActions", "ACE_Passengers", str pilot1], _action] call ace_interact_menu_fnc_addActionToObject;
	[ch_1, 1, ["ACE_SelfActions", "ACE_Passengers", str pilot2], _action] call ace_interact_menu_fnc_addActionToObject;

	//_action = ["mcd_music", "Musik einschalten", "pictures\note.paa", {"client\playmusic.sqf" remoteExec ["execVM",0, false]}, {musicOff}] call ace_interact_menu_fnc_createAction;
	//[ch_1, 1, ["ACE_SelfActions"], _action] call ace_interact_menu_fnc_addActionToObject;
};

