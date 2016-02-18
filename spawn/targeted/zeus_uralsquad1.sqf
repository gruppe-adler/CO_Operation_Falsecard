_pos = _this select 0;

_spawnUnits = {	

	_newGroup = createGroup east;

	_newVehicle = createVehicle ['RHS_Ural_VDV_01', _pos, [], 0, 'CAN_COLLIDE'];
	createVehicleCrew _newVehicle;
	(crew _newVehicle) join _newGroup;
	_newVehicle setVectorDir ((getPos targettruck) vectorDiff _pos);
	_newVehicle setFormDir 92.054;
	_newVehicle setPosATL _pos;

	_newUnit = _newGroup createUnit ['rhs_vdv_sergeant', _pos, [], 0, 'CAN_COLLIDE'];
	_newUnit setSkill 0.5;
	_newUnit setRank 'SERGEANT';
	_newUnit setFormDir 0;
	_newUnit setDir 0;
	_newUnit setPosATL _pos;
	_newUnit moveInCargo _newVehicle;
	_newUnit = _newGroup createUnit ['rhs_vdv_junior_sergeant', _pos, [], 0, 'CAN_COLLIDE'];
	_newUnit setSkill 0.5;
	_newUnit setRank 'SERGEANT';
	_newUnit setFormDir 329.078;
	_newUnit setDir 329.078;
	_newUnit setPosATL _pos;
	_newUnit moveInCargo _newVehicle;
	_newUnit = _newGroup createUnit ['rhs_vdv_grenadier', _pos, [], 0, 'CAN_COLLIDE'];
	_newUnit setSkill 0.5;
	_newUnit setRank 'PRIVATE';
	_newUnit setFormDir 285;
	_newUnit setDir 285;
	_newUnit setPosATL _pos;
	_newUnit moveInCargo _newVehicle;
	_newUnit = _newGroup createUnit ['rhs_vdv_machinegunner', _pos, [], 0, 'CAN_COLLIDE'];
	_newUnit setSkill 0.5;
	_newUnit setRank 'PRIVATE';
	_newUnit setFormDir 217.901;
	_newUnit setDir 217.901;
	_newUnit setPosATL _pos;
	_newUnit moveInCargo _newVehicle;
	_newUnit = _newGroup createUnit ['rhs_vdv_at', _pos, [], 0, 'CAN_COLLIDE'];
	_newUnit setSkill 0.5;
	_newUnit setRank 'PRIVATE';
	_newUnit setFormDir 223.881;
	_newUnit setDir 223.881;
	_newUnit setPosATL _pos;
	_newUnit moveInCargo _newVehicle;
	_newUnit = _newGroup createUnit ['rhs_vdv_strelok_rpg_assist', _pos, [], 0, 'CAN_COLLIDE'];
	_newUnit setSkill 0.5;
	_newUnit setRank 'PRIVATE';
	_newUnit setFormDir 228.103;
	_newUnit setDir 228.103;
	_newUnit setPosATL _pos;
	_newUnit moveInCargo _newVehicle;
	_newUnit = _newGroup createUnit ['rhs_vdv_rifleman', _pos, [], 0, 'CAN_COLLIDE'];
	_newUnit setSkill 0.5;
	_newUnit setRank 'PRIVATE';
	_newUnit setFormDir 243.895;
	_newUnit setDir 243.895;
	_newUnit setPosATL _pos;
	_newUnit moveInCargo _newVehicle;

	_newGroup setFormation 'WEDGE';
	_newGroup setCombatMode 'RED';
	_newGroup setBehaviour 'AWARE';
	_newGroup setSpeedMode 'NORMAL';
	_wp = _newGroup addWaypoint [(getPos targettruck), 30];
	_wp setWaypointCompletionRadius 120;
	_wp setWaypointType "MOVE";
	_wp setWaypointStatements ["true", "{unassignVehicle _x} forEach (assignedCargo (vehicle this))"];
	_wp = _newGroup addWaypoint [waypointPosition _wp, 0];
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