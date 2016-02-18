if ((roleDescription player) == "Gruppenführer") then {
	_action = ["mcd_orderpilots1", "Befehl: Abflug vorbereiten", "", {"client\preparetakeoff.sqf" remoteExec ["execVM",0,true];"ai\preparetakeoff.sqf" remoteExec ["execVM", 2, false]}, {true}] call ace_interact_menu_fnc_createAction;

	[pilot1, 0, ["ACE_MainActions"], _action] call ace_interact_menu_fnc_addActionToObject;
	[pilot2, 0, ["ACE_MainActions"], _action] call ace_interact_menu_fnc_addActionToObject;
};
