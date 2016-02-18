/* Gibt allen anderen Spielern die ACE-Interaktion "Ersatzteile geben"
*
* Ausgeführt durch truck_breakdown.sqf auf allen clients
*/

_justPlayers = allPlayers - entities "HeadlessClient_F";
_action = ["mcd_givespareparts", "Ersatzteile geben", "", {[_this select 0,_this select 1] execVM "spareparts\givespareparts.sqf"}, {brokendown}] call ace_interact_menu_fnc_createAction;
{[_x, 0, ["ACE_MainActions"], _action] call ace_interact_menu_fnc_addActionToObject} forEach _justplayers;
