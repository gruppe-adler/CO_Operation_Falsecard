/* Führt Animationen synchron auf allen Clients + Server aus
*
* Ausgeführt durch spawn\carrierpilots.sqf
* [[_unit,_anim,_length,_sleep, _type], "client\animations.sqf"] remoteExec ["bis_fnc_execVM", 0, true]
*
*/

missionstarted = false;

//HCs rausschmeissen
if (!isServer && !hasInterface) exitWith {};

//Parameter
_unit = _this select 0;
_anim = _this select 1;
_length = _this select 2;
_sleep = _this select 3;
_type = _this select 4;


//_loopMoveForever
if (_type == 1) then 
{
	sleep _sleep;
	while {alive _unit} do 
	{
		_unit disableAI "ANIM";
		_unit switchMove _anim;
		sleep _length;
	};
}

else

//_loopMove
{
	sleep _sleep;
	while {!missionstarted} do 
	{
		_unit disableAI "ANIM";
		_unit switchMove _anim;
		sleep _length;
	};
};





