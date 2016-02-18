_pos = _this select 0;

_spawnUnits = {	

	_newGroup = createGroup east;

	_newVehicle = createVehicle ['RHS_Mi8mt_vdv', _pos, [], 0, 'CAN_COLLIDE'];
	createVehicleCrew _newVehicle;
	(crew _newVehicle) join _newGroup;
	_newVehicle setDir 92.054;
	_newVehicle setFormDir 92.054;
	_newVehicle setPosATL _pos;

	_newGroup setFormation 'WEDGE';
	_newGroup setCombatMode 'RED';
	_newGroup setBehaviour 'AWARE';
	_newGroup setSpeedMode 'NORMAL';
	_wp = _newGroup addWaypoint [(getPos targettruck), 50];
	_wp setWaypointType "GUARD";
};


HC1Present = if (isNil "HC") then {False} else {True};

if (HC1Present && isMultiplayer) then {
	if (!isServer && !hasInterface) then {
		[] call _spawnUnits;
	};
}

else {
	if (isServer) then {
		[] call _spawnUnits;
	};
};