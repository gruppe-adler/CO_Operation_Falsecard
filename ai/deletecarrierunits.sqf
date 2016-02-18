if (!isServer) exitWith {};

ABGEFLOGEN = true;
publicVariable "ABGEFLOGEN";

{deleteVehicle _x} forEach carrierunits;
{deleteVehicle _x} forEach carrierobjects;
{deleteVehicle _x} forEach carriervehicles;