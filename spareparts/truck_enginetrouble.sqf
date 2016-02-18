/* Startet Motorprobleme
*
* ausgeführt manuell durch Zeus remoteexec auf clients+server
*/

if (!hasInterface) exitWith {};

//Eventhandler wenn Engine umgeschaltet wird
_engineStateEH = targettruck addEventHandler ["Engine", {_this execVM "spareparts\truck_particleeffects1.sqf"}];

//Wenn Motor bereits an -> Rauch spawnen
if (isEngineOn targettruck) then {
	[targettruck, true] execVM "spareparts\truck_particleeffects1.sqf";
};



