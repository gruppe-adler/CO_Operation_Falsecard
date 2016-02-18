if !(isServer) exitWith {};


//waitUntil {((getPosASL uh_3) select 1) < 22200};

uh_3 setSlingLoad objNull;
_pos = getPosASL uh_3;
sleep 0.5;

chute = createVehicle ["B_Parachute_02_F", _pos, [], 0, "FLY"];
chute setPosASL (getPosASL uh_3);
crate attachTo [chute, [0, 0, -0.5]];

