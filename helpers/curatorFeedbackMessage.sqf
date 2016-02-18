if (isNil str (getAssignedCuratorLogic player)) exitWith {};

params ["_text", "_pos", "_object"];
[objNull, format [_text, _pos, _object]] call bis_fnc_showCuratorFeedbackMessage;