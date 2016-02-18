/* 	Fügt einzelnes Objekt zu Zeus hinzu.
*
*	Modul hinzufügen mit:
*	["0_Mission", "Zeus - Objekt hinzufügen", {[[_this select 0], "client\addSingleUnitToZeus.sqf"] call BIS_fnc_execVM}] call Ares_fnc_RegisterCustomModule;
*/

if (!isServer) exitWith {};

_pos = _this select 0;
_objectToAdd = nearestObject _pos;

diag_log format ["Trying to add object %1 near position %2 to Zeus", _objectToAdd, _pos];

if (_objectToAdd isKindOf "MAN" || _objectToAdd isKindOf "CAR" || _objectToAdd isKindOf "AIR") then {
	curatorModule1 addCuratorEditableObjects [[_objectToAdd],true];
	curatorModule2 addCuratorEditableObjects [[_objectToAdd],true];
	[["Objekt hinzugefügt: %2", _pos, _objectToAdd], "helpers\CuratorFeedbackMessage.sqf"] remoteExec ["execVM",0,false];
	
}
else {
	[["Objekt kann nicht hinzugefügt werden: %2", _pos, _objectToAdd], "helpers\CuratorFeedbackMessage.sqf"] remoteExec ["execVM",0,false];
};
