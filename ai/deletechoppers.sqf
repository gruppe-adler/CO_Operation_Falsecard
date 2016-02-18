/* Löscht die beiden Transporthelikopter
*
* Ausgelöst durch Trigger
*/

if !(isServer) exitWith {};

{ch_1 deleteVehicleCrew _x} forEach crew ch_1;
deleteVehicle ch_1;

{uh_3 deleteVehicleCrew _x} forEach crew uh_3;
deleteVehicle uh_3;
