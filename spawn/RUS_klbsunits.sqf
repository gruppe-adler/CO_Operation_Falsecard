// Created by SMC v2.1.3 (for Arma 3)
// 02/03/16 15:57:24

// --Vehicles/Objects--
_veh0 = createVehicle ["rhs_uaz_vdv",[8526.6787,20858.508,0],[],0,"CAN_COLLIDE"];
		_veh0 setFormDir 59.009;
		_veh0 setDir 59.009;
	_veh0 setVehicleLock "LOCKEDPLAYER";
_veh1 = createVehicle ["rhs_uaz_open_vdv",[8577.3145,20956.334,0],[],0,"CAN_COLLIDE"];
		_veh1 setFormDir 261.490196;
		_veh1 setDir 261.490196;
	_veh1 setVehicleLock "LOCKEDPLAYER";
_veh2 = createVehicle ["rhs_uaz_vdv",[8578.2832,20953.061,0],[],0,"CAN_COLLIDE"];
		_veh2 setFormDir 239.36801;
		_veh2 setDir 239.36801;
	_veh2 setVehicleLock "LOCKEDPLAYER";
// --Units--
_group0 = createGroup east;
	_unit0 = _group0 createUnit ["rhs_vdv_flora_rifleman",[8503.4766,20952.811,0],[],0,"FORM"];
		if (isNull _unit0) then {
			_unit0 = createVehicle ["rhs_vdv_flora_rifleman",[8503.4766,20952.811,0],[],0,"FORM"];
 			createVehicleCrew _unit0;
		};
		(group _unit0) selectLeader _unit0;
		_unit0 setFormDir 59.009;
		_unit0 setDir 59.009;
		_unit0 setRank "CORPORAL";
		_unit0 setVehicleLock "LOCKEDPLAYER";
	_unit1 = _group0 createUnit ["rhs_vdv_flora_rifleman",[8503.4766,20955.838,0],[],0,"FORM"];
		if (isNull _unit1) then {
			_unit1 = createVehicle ["rhs_vdv_flora_rifleman",[8503.4766,20955.838,0],[],0,"FORM"];
 			createVehicleCrew _unit1;
		};
		_unit1 setVehicleLock "LOCKEDPLAYER";
	_unit2 = _group0 createUnit ["rhs_vdv_flora_machinegunner",[8505.3887,20954.883,0],[],0,"FORM"];
		if (isNull _unit2) then {
			_unit2 = createVehicle ["rhs_vdv_flora_machinegunner",[8505.3887,20954.883,0],[],0,"FORM"];
 			createVehicleCrew _unit2;
		};
		_unit2 setVehicleLock "LOCKEDPLAYER";
_group1 = createGroup east;
	_unit3 = _group1 createUnit ["rhs_vdv_flora_rifleman",[8534.5605,20955.295,0],[],0,"FORM"];
		if (isNull _unit3) then {
			_unit3 = createVehicle ["rhs_vdv_flora_rifleman",[8534.5605,20955.295,0],[],0,"FORM"];
 			createVehicleCrew _unit3;
		};
		(group _unit3) selectLeader _unit3;
		_unit3 setFormDir 277.70784;
		_unit3 setDir 277.70784;
_group2 = createGroup east;
	_unit4 = _group2 createUnit ["rhs_vdv_flora_machinegunner",[8522.9629,20943.508,0],[],0,"FORM"];
		if (isNull _unit4) then {
			_unit4 = createVehicle ["rhs_vdv_flora_machinegunner",[8522.9629,20943.508,0],[],0,"FORM"];
 			createVehicleCrew _unit4;
		};
		(group _unit4) selectLeader _unit4;
_group3 = createGroup east;
	_unit5 = _group3 createUnit ["rhs_vdv_flora_marksman",[8552.6221,20828.91,0],[],0,"FORM"];
		if (isNull _unit5) then {
			_unit5 = createVehicle ["rhs_vdv_flora_marksman",[8552.6221,20828.91,0],[],0,"FORM"];
 			createVehicleCrew _unit5;
		};
		(group _unit5) selectLeader _unit5;
		_unit5 setFormDir 63.832951;
		_unit5 setDir 63.832951;
_group4 = createGroup east;
	_unit6 = _group4 createUnit ["rhs_vdv_flora_grenadier",[8553.9033,20829.219,0],[],0,"FORM"];
		if (isNull _unit6) then {
			_unit6 = createVehicle ["rhs_vdv_flora_grenadier",[8553.9033,20829.219,0],[],0,"FORM"];
 			createVehicleCrew _unit6;
		};
		(group _unit6) selectLeader _unit6;
		_unit6 setFormDir 306.296722;
		_unit6 setDir 306.296722;
_group5 = createGroup east;
	_unit7 = _group5 createUnit ["rhs_vdv_flora_rifleman",[8552.7773,20830.15,0],[],0,"FORM"];
		if (isNull _unit7) then {
			_unit7 = createVehicle ["rhs_vdv_flora_rifleman",[8552.7773,20830.15,0],[],0,"FORM"];
 			createVehicleCrew _unit7;
		};
		(group _unit7) selectLeader _unit7;
		_unit7 setFormDir 128.4762;
		_unit7 setDir 128.4762;
_group6 = createGroup east;
	_unit8 = _group6 createUnit ["rhs_vdv_flora_rifleman",[8568.6982,20874.453,0],[],0,"FORM"];
		if (isNull _unit8) then {
			_unit8 = createVehicle ["rhs_vdv_flora_rifleman",[8568.6982,20874.453,0],[],0,"FORM"];
 			createVehicleCrew _unit8;
		};
		(group _unit8) selectLeader _unit8;
		_unit8 setFormDir 190.32278;
		_unit8 setDir 190.32278;
// --Waypoints--
_wp00 = _group0 addWaypoint [[8400.8438,20827.707,0],0];
	_wp00 setWaypointTimeout [10,20,30];
	_wp00 setWaypointBehaviour "SAFE";
	_wp00 setWaypointSpeed "LIMITED";
	_wp00 setWaypointFormation "COLUMN";
_wp01 = _group0 addWaypoint [[8475.9805,20648.709,0],0];
_wp02 = _group0 addWaypoint [[8409.5303,20822.035,0],0];
_wp03 = _group0 addWaypoint [[8511.0527,20947.555,0],0];
	_wp03 setWaypointType "CYCLE";
