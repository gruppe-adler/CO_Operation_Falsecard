/* Updated die Anzahl verbleibender Baumaterialien
*
* Ausgeführt durch addfortifications.sqf, wenn Spieler Material aufnimmt
*
*/

_object = targettruck;

sleep 0.2;

//Alte Interaktionen entfernen
[_object,0,["ACE_MainActions","mcd_baumaterial", "mcd_plank1"]] call ace_interact_menu_fnc_removeActionFromObject;
[_object,0,["ACE_MainActions","mcd_baumaterial", "mcd_plank2"]] call ace_interact_menu_fnc_removeActionFromObject;
[_object,0,["ACE_MainActions","mcd_baumaterial", "mcd_plank3"]] call ace_interact_menu_fnc_removeActionFromObject;
[_object,0,["ACE_MainActions","mcd_baumaterial", "mcd_plank4"]] call ace_interact_menu_fnc_removeActionFromObject;
[_object,0,["ACE_MainActions","mcd_baumaterial", "mcd_plank5"]] call ace_interact_menu_fnc_removeActionFromObject;
[_object,0,["ACE_MainActions","mcd_baumaterial", "mcd_plank6"]] call ace_interact_menu_fnc_removeActionFromObject;
[_object,0,["ACE_MainActions","mcd_baumaterial", "mcd_plank7"]] call ace_interact_menu_fnc_removeActionFromObject;
[_object,0,["ACE_MainActions","mcd_baumaterial", "mcd_plank8"]] call ace_interact_menu_fnc_removeActionFromObject;


//Neue Aktionen zum Truck hinzufügen
_action = ["mcd_plank1", format["Beton Barriere (%1)", cnc_barrier], "", {[1] execVM "plankactions\addfortifications.sqf"}, {cnc_barrier>0}] call ace_interact_menu_fnc_createAction;
[_object, 0, ["ACE_MainActions", "mcd_baumaterial"], _action] call ace_interact_menu_fnc_addActionToObject;

_action = ["mcd_plank2", format["Sands. lang (%1)", sb_long], "", {[2] execVM "plankactions\addfortifications.sqf"}, {sb_long>0}] call ace_interact_menu_fnc_createAction;
[_object, 0, ["ACE_MainActions", "mcd_baumaterial"], _action] call ace_interact_menu_fnc_addActionToObject;

_action = ["mcd_plank3", format["Sands. kurz (%1)", sb_short], "", {[3] execVM "plankactions\addfortifications.sqf"}, {sb_short>0}] call ace_interact_menu_fnc_createAction;
[_object, 0, ["ACE_MainActions", "mcd_baumaterial"], _action] call ace_interact_menu_fnc_addActionToObject;

_action = ["mcd_plank4", format["Sands. rund (%1)", sb_round], "", {[4] execVM "plankactions\addfortifications.sqf"}, {sb_round>0}] call ace_interact_menu_fnc_createAction;
[_object, 0, ["ACE_MainActions", "mcd_baumaterial"], _action] call ace_interact_menu_fnc_addActionToObject;

_action = ["mcd_plank5", format["Sands. Bunker (%1)", sb_bunker], "", {[5] execVM "plankactions\addfortifications.sqf"}, {sb_bunker>0}] call ace_interact_menu_fnc_createAction;
[_object, 0, ["ACE_MainActions", "mcd_baumaterial"], _action] call ace_interact_menu_fnc_addActionToObject;

_action = ["mcd_plank6", format["Panzersperre (%1)", tanktrap], "", {[6] execVM "plankactions\addfortifications.sqf"}, {tanktrap>0}] call ace_interact_menu_fnc_createAction;
[_object, 0, ["ACE_MainActions", "mcd_baumaterial"], _action] call ace_interact_menu_fnc_addActionToObject;

_action = ["mcd_plank7", format["H-Barriere (%1)", hbarrier], "", {[7] execVM "plankactions\addfortifications.sqf"}, {hbarrier>0}] call ace_interact_menu_fnc_createAction;
[_object, 0, ["ACE_MainActions", "mcd_baumaterial"], _action] call ace_interact_menu_fnc_addActionToObject;

_action = ["mcd_plank8", format["Palette (%1)", pallet], "", {[8] execVM "plankactions\addfortifications.sqf"}, {pallet>0}] call ace_interact_menu_fnc_createAction;
[_object, 0, ["ACE_MainActions", "mcd_baumaterial"], _action] call ace_interact_menu_fnc_addActionToObject;





