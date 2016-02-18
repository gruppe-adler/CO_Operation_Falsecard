//Server spawnt Schrotthaufen
if (isServer) then {
	_pos = _this select 0;
	NEWJP = "Land_JunkPile_F" createVehicle _pos;
	NEWJP setPos _pos;
	publicVariable "NEWJP";
};


//Spieler fügen ACE Aktion hinzu
if (hasInterface) then {
	waitUntil {!isNil "NEWJP"};
	_action = ["mcd_searchpile_new", "Ersatzteile suchen", "\A3\ui_f\data\igui\cfg\actions\take_ca.paa", {[_this select 0] execVM "spareparts\searchpile.sqf"}, {true}, {}, [], [0.3,0,0.1], 3] call ace_interact_menu_fnc_createAction;
	[NEWJP, 0, [], _action] call ace_interact_menu_fnc_addActionToObject;
	NEWJP = nil;
};