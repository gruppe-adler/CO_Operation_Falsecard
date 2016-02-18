if (!hasInterface) exitWith {};

//Parameter
_target = _this select 0;
_caller = _this select 1;
_spareparts = _this select 2;


//exit, wenn Spieler nicht das Ziel der Aktion ist
_istarget = (player == _target);
if (!_istarget) exitWith {};


//Ersatzteile erhalten
spareparts = spareparts + _spareparts;

_callername = name _caller;
if (_spareparts == 1) then
{
	hint format ["1 Ersatzteil von %1 erhalten.", _callername];
} 
else
{
	hint format ["%1 Ersatzteile von %2 erhalten",_spareparts, _callername];
};

sleep hintduration;
hint "";