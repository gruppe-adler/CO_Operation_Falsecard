if (!hasInterface) exitWith {};

//Alte Aktion entfernen
_jp = _this select 0;
[_jp,0,["mcd_searchpile"]] call ace_interact_menu_fnc_removeActionFromObject;


//Neue Aktion hinzufügen
_action = ["mcd_searchemptypile", "Ersatzteile suchen", "\A3\ui_f\data\igui\cfg\actions\take_ca.paa", {hint "Dieser Haufen wurde bereits durchsucht."}, {true}, {}, [], [0.3,0,0.1], 3] call ace_interact_menu_fnc_createAction;
[_jp, 0, [], _action] call ace_interact_menu_fnc_addActionToObject;

