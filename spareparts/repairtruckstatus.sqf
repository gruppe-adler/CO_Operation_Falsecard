_caller = _this select 0;
repairstatus = _this select 1;
_isCaller = (player == _caller);

targettruck allowDamage true;
sleep 1;

if (repairstatus >= sparepartsneeded) then 
{

	targettruck setHit ["motor", 0.4];	
	BROKENDOWN = false;


	if (_isCaller) then {
		hint "Reparatur abgeschlossen!";
	};
}
else
{
	if (_isCaller) then {
		hint format ["Reparatur: %1/%2", repairstatus, sparepartsneeded];
	};
};

sleep 2;
targettruck allowDamage false;

/*
if (repairstatus >= sparepartsneeded) then 
{
	if (local targettruck) then {
		targettruck allowDamage true;
		targettruck setHit ["motor", 0.4];
		targettruck allowDamage false;
		
		BROKENDOWN = false;
		publicVariable "BROKENDOWN";
	};

	if (_isCaller) then {
		hint "Reparatur abgeschlossen!";
	};
}
else
{
	if (_isCaller) then {
		hint format ["Reparatur: %1/%2", _status, sparepartsneeded];
	};
};
