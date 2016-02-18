/* Hängt den Truck an einen Spielergesteuerten Heli an
*
* Ausgelöst manuell durch Zeus
* ["2_Missionsende", "Slingload", {[[_this select 1], "helpers\forceSlingload.sqf"] remoteExec ["execVM",0,false]}] call Ares_fnc_RegisterCustomModule;
*/

if (!isServer) exitWith {};

_helo = _this select 0;
_myRope = ropeCreate [_helo, "slingload0", targettruck, [0, 0, 0], 15];