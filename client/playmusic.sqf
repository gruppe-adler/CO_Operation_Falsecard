if !(hasInterface) exitWith {};

musicOff = false;

if (player in ch_1) then {
	playSound ["fortunateson", true];
}
else 
{
	if !(isNil str (getAssignedCuratorLogic player)) then {
		playSound ["fortunateson_low", true];
	};
};

/*
_pos = position player;

soundsource = "Land_HelipadEmpty_F" createVehicleLocal _pos;
soundsource attachTo [ch_1];
soundsource say "fortunateson";