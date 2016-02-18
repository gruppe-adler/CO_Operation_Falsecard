_vehicle = _this select 0;

while {!enginesoundfinished} do
{
	if (local _vehicle) then
	{
		waitUntil {!(isEngineOn _vehicle)};
		_vehicle engineOn true;
	};
	sleep 1;
};
