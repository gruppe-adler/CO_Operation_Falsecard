if (!isServer) exitWith {};

_unit = _this select 0;
diag_log format ["JIP Player: %1 - adding to Zeus", _unit];
curatorModule1 addCuratorEditableObjects [[_unit], true];
curatorModule2 addCuratorEditableObjects [[_unit], true];