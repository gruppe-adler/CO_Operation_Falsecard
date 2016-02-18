repairtarget = _this select 0;
repaircaller = _this select 1;

if (spareparts == 0) then
{
	hint "Ich habe nicht die passenden Ersatzteile.";
	sleep hintduration;
	hint "";
}
else
{
	[10, [], {call repairtruck}, {hint "Abgebrochen"}, "Reparieren"] call ace_common_fnc_progressBar;
};


repairtruck = {
	[[[repairtarget, repaircaller, spareparts], "spareparts\repairtruckserver.sqf"], "BIS_fnc_execVM", true] call BIS_fnc_MP;
	spareparts = 0;
	repairtarget = nil;
	repaircaller = nil;
	repairtruck = nil;
};