/* Entfernt das Baumaterial von einem Spieler
*
* Ausgeführt von Spieler durch:
* WEGWERFACTION = _pid addAction ["<t color=""#C42606"">Übriges Baumaterial wegwerfen", "plank\removefortifications.sqf"];
*
*/


_aid = _this select 2;
[player] call plank_api_fnc_forceRemoveAllFortifications;
player removeAction _aid;
WEGWERFACTION = nil;
