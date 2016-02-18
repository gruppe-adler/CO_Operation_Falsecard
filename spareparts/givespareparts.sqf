if (!hasInterface) exitWith {};

//Parameter
_target = _this select 0;
_caller = _this select 1;


//Auf Ziel-Client receivespareparts.sqf ausführen
[[[_target, _caller, spareparts], "spareparts\receivespareparts.sqf"], "BIS_fnc_execVM", true] call BIS_fnc_MP;


//Ersatzteile geben
_targetname = name _target;

if (spareparts == 1) then
{
	hint format ["%1 1 Ersatzteil gegeben.", _targetname];
}
else
{
	hint format ["%1 %2 Ersatzteile gegeben.", _targetname, spareparts];
};

spareparts = 0;
sleep hintduration;
hint "";