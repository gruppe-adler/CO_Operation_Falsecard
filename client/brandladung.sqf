/* Bringt Brandladung an Supplybox an
*
* Ausgeführt durch ACE-Interaction aus sprengmeisteractions.sqf
* Lokal
*/

[3, [], {call spawn_brandladung}, {hint "Abgebrochen"}, "Brandladung anbringen"] call ace_common_fnc_progressBar;

spawn_brandladung = {
	//Ladung spawnen
	placed_brandladung = createVehicle ["DemoCharge_F", position crate, [], 0, "NONE"];
	placed_brandladung attachTo [crate, [-0.25,0.4,-0.28]]; 
	placed_brandladung setVectorUp [0,1,0.2];

	//Action entfernen
	[crate,0,["mcd_brandladung"]] call ace_interact_menu_fnc_removeActionFromObject;

	//Neue Action hinzufügen
	_action = ["mcd_brandladung_activate", "Zeitzünder (30min)", "", {[] execVM "client\blsound.sqf"}, {true}, {}, [], [-0.25,0.4,-0.28]] call ace_interact_menu_fnc_createAction;
	[crate, 0, [], _action] call ace_interact_menu_fnc_addActionToObject;
};

