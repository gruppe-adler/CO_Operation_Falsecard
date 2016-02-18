/*
* Ausgeführt auf server + clients durch init.sqf
*/

spareparts = 0;
repairstatus = 0;
sparepartsneeded = 25;
hintduration = 5;

problems = false;
brokendown = false;

if (!hasInterface) exitWith {};


_junkpiles =
[
	jp1,
	jp2,
	jp3,
	jp4,
	jp5,
	jp6,
	jp7,
	jp8,
	jp9,
	jp10,
	jp11,
	jp12,
	jp13,
	jp14,
	jp15,
	jp16,
	jp17,
	jp18,
	jp19,
	jp20,
	jp21,
	jp22,
	jp23,
	jp24,
	jp25,
	jp26,
	jp27,
	jp28,
	truck1,
	truck2,
	truck3,
	truck4,
	truck5,
	truck6
];

_action = ["mcd_searchpile", "Ersatzteile suchen", "\A3\ui_f\data\igui\cfg\actions\take_ca.paa", {[_this select 0] execVM "spareparts\searchpile.sqf"}, {true}, {}, [], [0.3,0,0.1], 3] call ace_interact_menu_fnc_createAction;
{
	[_x, 0, [], _action] call ace_interact_menu_fnc_addActionToObject
} forEach _junkpiles;

if ((roleDescription player) == "Mechaniker") then {
	_action = ["mcd_diagnosetruck", "Truck untersuchen", "\A3\ui_f\data\igui\cfg\actions\repair_ca.paa", {[_this select 0,_this select 1] execVM "spareparts\diagnosetruck.sqf"}, {problems},{},[], [-1.2,-1.2,-0.5] vectorAdd (targettruck selectionPosition "motor"), 30] call ace_interact_menu_fnc_createAction;
	[targettruck, 0, [], _action] call ace_interact_menu_fnc_addActionToObject;

	_action = ["mcd_repairtruck", "Motor reparieren", "\A3\ui_f\data\igui\cfg\actions\repair_ca.paa", {[_this select 0,_this select 1] execVM "spareparts\repairtruckclient.sqf"}, {brokendown},{},[], [-1.2,-1.2,-0.5] vectorAdd (targettruck selectionPosition "motor"), 30] call ace_interact_menu_fnc_createAction;
	[targettruck, 0, [], _action] call ace_interact_menu_fnc_addActionToObject;
};

//Für Zeus Maker hinzufügen
if ((roleDescription player == "Zeus 1") || (roleDescription player == "Zeus 2")) then {
	{
		_marker = createMarkerLocal [(str _x), getPos _x];
		_marker setMarkerColorLocal "ColorPink";
		
		if (typeOf _x == "Land_JunkPile_F") then {
			_marker setMarkerTypeLocal "mil_triangle";
		}
		else
		{
			_marker setMarkerTypeLocal "mil_box";
		};

	} forEach _junkpiles;
};
