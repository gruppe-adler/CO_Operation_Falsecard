/* Entfernt ACE-Aktionen von Piloten
*
* Ausgeführt durch client\preparetakeoff.sqf ACE-Aktion:
* "ai\takeoff.sqf" remoteExec ["execVM",-2,false];
* (excl. Server)
*
*/

takenoff = true;

if (!hasInterface) exitWith {};
	
[] execVM "client\pilotdialogue2.sqf";

if (player == zf1) then {
	[ch_1, 1, ["ACE_SelfActions", "ACE_Passengers", str pilot1, "mcd_orderpilots2"]] call ace_interact_menu_fnc_removeActionFromObject;
	[ch_1, 1, ["ACE_SelfActions", "ACE_Passengers", str pilot2, "mcd_orderpilots2"]] call ace_interact_menu_fnc_removeActionFromObject;
};

