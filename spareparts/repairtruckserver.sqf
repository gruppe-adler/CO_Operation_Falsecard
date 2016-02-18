_target = _this select 0;
_caller = _this select 1;
_spareparts = _this select 2;

repairstatus = repairstatus + _spareparts;

[[[_caller, repairstatus], "spareparts\repairtruckstatus.sqf"], "BIS_fnc_execVM", true] call BIS_fnc_MP;