if (!hasInterface) exitWith {};

_maxJunkPile = 3;
_maxLKW = 5;
_object = _this select 0;
gefunden = 0;

//Aktion auf allen Clients entfernen
[[[_this select 0], "spareparts\removepileaction.sqf"], "BIS_fnc_execVM", true] call BIS_fnc_MP;

//Ersatzteile finden
if (typeOf _object == "Land_JunkPile_F") then
{
	gefunden = floor random (_maxJunkPile +1);
}
else 
{
	gefunden = floor random (_maxLKW +1);
};

if (gefunden == 1) then 
{
	hint "1 Ersatzteil gefunden";
} 
else
{
	hint format ["%1 Ersatzteile gefunden", gefunden];
};

spareparts = spareparts + gefunden;

sleep hintduration;
hint "";
