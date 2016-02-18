/* Fügt dem Objekt erstmalig die Aufnahmeaktionen hinzu
*
* Muss auf allen Clients+Server ausgeführt werden
*
*/


_object = targettruck;


//CLIENTS ONLY==============================================================================================================================================================
if (!hasInterface) exitWith {};

//Interaction Subnode hinzufügen
_actionnode = ["mcd_baumaterial", "Baumaterial", "", {true}, {true}] call ace_interact_menu_fnc_createAction;
[_object, 0, ["ACE_MainActions"], _actionnode] call ace_interact_menu_fnc_addActionToObject;

//Aktionen zum Truck hinzufügen
_action = ["mcd_plank1", format["Beton Barriere (%1)", cnc_barrier], "", {[1] execVM "plankactions\addfortifications.sqf"}, {true}] call ace_interact_menu_fnc_createAction;
[_object, 0, ["ACE_MainActions", "mcd_baumaterial"], _action] call ace_interact_menu_fnc_addActionToObject;

_action = ["mcd_plank2", format["Sands. lang (%1)", sb_long], "", {[2] execVM "plankactions\addfortifications.sqf"}, {true}] call ace_interact_menu_fnc_createAction;
[_object, 0, ["ACE_MainActions", "mcd_baumaterial"], _action] call ace_interact_menu_fnc_addActionToObject;

_action = ["mcd_plank3", format["Sands. kurz (%1)", sb_short], "", {[3] execVM "plankactions\addfortifications.sqf"}, {true}] call ace_interact_menu_fnc_createAction;
[_object, 0, ["ACE_MainActions", "mcd_baumaterial"], _action] call ace_interact_menu_fnc_addActionToObject;

_action = ["mcd_plank4", format["Sands. rund (%1)", sb_round], "", {[4] execVM "plankactions\addfortifications.sqf"}, {true}] call ace_interact_menu_fnc_createAction;
[_object, 0, ["ACE_MainActions", "mcd_baumaterial"], _action] call ace_interact_menu_fnc_addActionToObject;

_action = ["mcd_plank5", format["Sands. Bunker (%1)", sb_bunker], "", {[5] execVM "plankactions\addfortifications.sqf"}, {true}] call ace_interact_menu_fnc_createAction;
[_object, 0, ["ACE_MainActions", "mcd_baumaterial"], _action] call ace_interact_menu_fnc_addActionToObject;

_action = ["mcd_plank6", format["Panzersperre (%1)", tanktrap], "", {[6] execVM "plankactions\addfortifications.sqf"}, {true}] call ace_interact_menu_fnc_createAction;
[_object, 0, ["ACE_MainActions", "mcd_baumaterial"], _action] call ace_interact_menu_fnc_addActionToObject;

_action = ["mcd_plank7", format["H-Barriere (%1)", hbarrier], "", {[7] execVM "plankactions\addfortifications.sqf"}, {true}] call ace_interact_menu_fnc_createAction;
[_object, 0, ["ACE_MainActions", "mcd_baumaterial"], _action] call ace_interact_menu_fnc_addActionToObject;

_action = ["mcd_plank8", format["Palette (%1)", pallet], "", {[8] execVM "plankactions\addfortifications.sqf"}, {true}] call ace_interact_menu_fnc_createAction;
[_object, 0, ["ACE_MainActions", "mcd_baumaterial"], _action] call ace_interact_menu_fnc_addActionToObject;


