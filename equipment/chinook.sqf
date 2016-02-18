/* Fügt Fallschirme und Earplugs zum Helikopter hinzu
*
* Ausgeführt über object init
* null = [this] execVM "equipment\chinook.sqf";
*/

if (!isServer) exitWith {};

_box = _this select 0;
_box addBackpackCargoGlobal ["B_Parachute", 10];
_box addItemCargoGlobal ["ACE_EarPlugs", 50];