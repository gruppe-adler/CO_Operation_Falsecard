//Entfernt Baumaterial von allen Spielern
//
//Manuell von Zeus ausgeführt durch:
//this addaction ["Baumaterial entfernen", {[[[], "plank\forceremove.sqf"], "BIS_fnc_execVM", true] call BIS_fnc_MP}];
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

if (!hasInterface) exitWith {};

[player] call plank_api_fnc_forceRemoveAllFortifications;
Transporttruck removeAction PLANKACTION;
player removeAction WEGWERFACTION;

if (side player == independent) then {hint "Baumaterial entfernt."};