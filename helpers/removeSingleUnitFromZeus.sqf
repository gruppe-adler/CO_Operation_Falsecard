/* 	Entfernt einzelnes Objekt von Zeus.
*
*	Modul hinzufügen mit:
*	["0_Mission", "Zeus - Objekt entfernen", {[[_this select 0], "client\RemoveSingleUnitFromZeus.sqf"] call BIS_fnc_execVM}] call Ares_fnc_RegisterCustomModule;
*/

if (!isServer) exitWith {};

_pos = _this select 0;
_objectToRemove = nearestObject _pos;

diag_log format ["Trying to remove object %1 near position %2 from Zeus", _objectToRemove, _pos];

if !(_objectToRemove in (curatorEditableObjects curatorModule1)) then {
	[["Objekt nicht gefunden", _pos, _objectToRemove], "helpers\CuratorFeedbackMessage.sqf"] remoteExec ["execVM",0,false];
}
else {
	curatorModule1 removeCuratorEditableObjects [[_objectToRemove],true];
	curatorModule2 removeCuratorEditableObjects [[_objectToRemove],true];
	(group _objectToRemove) setGroupOwner 2;
	[["Objekt entfernt: %2", _pos, _objectToRemove], "helpers\CuratorFeedbackMessage.sqf"] remoteExec ["execVM",0,false];
};
