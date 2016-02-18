_pos = _this select 0;

_spawnUnits = {	

	_newGroup = createGroup east;

	_newUnit = _newGroup createUnit ['rhs_vdv_flora_sergeant', _pos, [], 0, 'CAN_COLLIDE'];
	_newUnit setSkill 0.5;
	_newUnit setRank 'SERGEANT';
	_newUnit setFormDir 0;
	_newUnit setDir 0;
	_newUnit setPosATL _pos;
	_newUnit = _newGroup createUnit ['rhs_vdv_flora_junior_sergeant', _pos, [], 0, 'CAN_COLLIDE'];
	_newUnit setSkill 0.5;
	_newUnit setRank 'SERGEANT';
	_newUnit setFormDir 75;
	_newUnit setDir 75;
	_newUnit setPosATL _pos;
	_newUnit = _newGroup createUnit ['rhs_vdv_flora_grenadier', _pos, [], 0, 'CAN_COLLIDE'];
	_newUnit setSkill 0.5;
	_newUnit setRank 'PRIVATE';
	_newUnit setFormDir 285;
	_newUnit setDir 285;
	_newUnit setPosATL _pos;
	_newUnit = _newGroup createUnit ['rhs_vdv_flora_rifleman', _pos, [], 0, 'CAN_COLLIDE'];
	_newUnit setSkill 0.5;
	_newUnit setRank 'CORPORAL';
	_newUnit setFormDir 61.1103;
	_newUnit setDir 61.1103;
	_newUnit setPosATL _pos;
	_newUnit = _newGroup createUnit ['rhs_vdv_flora_machinegunner', _pos, [], 0, 'CAN_COLLIDE'];
	_newUnit setSkill 0.5;
	_newUnit setRank 'PRIVATE';
	_newUnit setFormDir 285;
	_newUnit setDir 285;
	_newUnit setPosATL _pos;
	_newUnit = _newGroup createUnit ['rhs_vdv_flora_at', _pos, [], 0, 'CAN_COLLIDE'];
	_newUnit setSkill 0.5;
	_newUnit setRank 'PRIVATE';
	_newUnit setFormDir 75;
	_newUnit setDir 75;
	_newUnit setPosATL _pos;
	_newUnit = _newGroup createUnit ['rhs_vdv_flora_strelok_rpg_assist', _pos, [], 0, 'CAN_COLLIDE'];
	_newUnit setSkill 0.5;
	_newUnit setRank 'PRIVATE';
	_newUnit setFormDir 285;
	_newUnit setDir 285;
	_newUnit setPosATL _pos;
	_newUnit = _newGroup createUnit ['rhs_vdv_flora_rifleman', _pos, [], 0, 'CAN_COLLIDE'];
	_newUnit setSkill 0.5;
	_newUnit setRank 'PRIVATE';
	_newUnit setFormDir 75;
	_newUnit setDir 75;
	_newUnit setPosATL _pos;
	_newUnit = _newGroup createUnit ['rhs_vdv_flora_rifleman', _pos, [], 0, 'CAN_COLLIDE'];
	_newUnit setSkill 0.5;
	_newUnit setRank 'PRIVATE';
	_newUnit setFormDir 285;
	_newUnit setDir 285;
	_newUnit setPosATL _pos;
	_newUnit = _newGroup createUnit ['rhs_vdv_flora_medic', _pos, [], 0, 'CAN_COLLIDE'];
	_newUnit setSkill 0.5;
	_newUnit setRank 'PRIVATE';
	_newUnit setFormDir 75;
	_newUnit setDir 75;
	_newUnit setPosATL _pos;

	_newGroup setFormation 'WEDGE';
	_newGroup setCombatMode 'YELLOW';
	_newGroup setBehaviour 'AWARE';
	_newGroup setSpeedMode 'NORMAL';

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