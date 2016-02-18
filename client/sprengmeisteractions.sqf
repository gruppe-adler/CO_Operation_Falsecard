/* Fügt der Supplykiste die "Brandladung anbringen" Aktion hinzu
*
* Ausgeführt durch init.sqf
* Nur Sprengmeister
*/

brandladungangebracht = false;

if ((roleDescription player) == "Sprengmeister") then {
	_action = ["mcd_brandladung", "Brandladung anbringen", "", {[] execVM "client\brandladung.sqf"}, {true}, {}, [], [-0.25,0.4,-0.28]] call ace_interact_menu_fnc_createAction;
	[crate, 0, [], _action] call ace_interact_menu_fnc_addActionToObject;
};