if (!isServer) exitWith {};

sleep 15;

//AIRCRAFT==============================================================================

_newGroup = createGroup west;
_newUnit = createVehicle ['RHS_C130J', [14374,16064.5,-0.211592], [], 0, 'CAN_COLLIDE'];
createVehicleCrew _newUnit;
(crew _newUnit) join _newGroup;
_newUnit setDir 224.604;
_newUnit setFormDir 224.604;
_newUnit setPosASL [14374,16064.5,17.8584];
_newGroup setFormation 'WEDGE';
_newGroup setCombatMode 'YELLOW';
_newGroup setBehaviour 'AWARE';
_newGroup setSpeedMode 'NORMAL';


_wp00 = _newGroup addWaypoint [[14392,15937,0],0];
_wp00 setWaypointType "MOVE";
_wp00 setWaypointTimeout [20,20,20];
_wp01 = _newGroup addWaypoint [[18850,15443,0],0];
_wp01 setWaypointType "MOVE";


_newGroup = createGroup west;
_newUnit = createVehicle ['RHS_A10', [11341.1,11423.5,-0.107809], [], 0, 'CAN_COLLIDE'];
createVehicleCrew _newUnit;
(crew _newUnit) join _newGroup;
_newUnit setDir 34.1254;
_newUnit setFormDir 34.1254;
_newUnit setPosASL [11341.1,11423.5,22.1173];
_newGroup setFormation 'WEDGE';
_newGroup setCombatMode 'YELLOW';
_newGroup setBehaviour 'AWARE';
_newGroup setSpeedMode 'NORMAL';

_wp00 = _newGroup addWaypoint [[11184,9041,0],0];
_wp00 setWaypointCompletionRadius 100;
_wp00 setWaypointType "MOVE";
_wp00 setWaypointBehaviour "SAFE";
_wp00 setWaypointStatements ["true", "_newUnit landAt 0"];
_wp01 = _newGroup addWaypoint [[18850,15443,0],0];
_wp01 setWaypointCompletionRadius 100;
_wp01 setWaypointType "MOVE";
_wp01 setWaypointTimeout [120,240,300];
_wp02 = _newGroup addWaypoint [[11105,12390,0],0];
_wp02 setWaypointCompletionRadius 100;
_wp02 setWaypointType "CYCLE";



_newGroup = createGroup west;
_newUnit = createVehicle ['RHS_UH60M_d', [17230.9,12094.8,0.00686264], [], 0, 'CAN_COLLIDE'];
createVehicleCrew _newUnit;
(crew _newUnit) join _newGroup;
_newUnit setDir 0.108077;
_newUnit setFormDir 0.108077;
_newUnit setPosASL [17230.9,12094.8,15.1781];
_newGroup setFormation 'WEDGE';
_newGroup setCombatMode 'YELLOW';
_newGroup setBehaviour 'AWARE';
_newGroup setSpeedMode 'NORMAL';

_wp00 = _newGroup addWaypoint [[14221.888,16182.895,0],0];
_wp00 setWaypointType "GETOUT";
_wp00 setWaypointBehaviour "SAFE";
_wp01 = _newGroup addWaypoint [[14143.03,16205.686,0],0];
_wp01 setWaypointBehaviour "SAFE";
_wp01 setWaypointSpeed "LIMITED";


//FRIDEL_ZEUS===================================================================================

_newGroup = createGroup west;
_newUnit = _newGroup createUnit ['rhsusf_army_ocp_riflemanat', [14157.7,16307.1,0.00144005], [], 0, 'CAN_COLLIDE'];
_newUnit setSkill 0.5;
_newUnit setRank 'PRIVATE';
_newUnit setFormDir 319.146;
_newUnit setDir 319.146;
_newUnit setPosASL [14157.7,16307.1,23.2337];
_newGroup setFormation 'WEDGE';
_newGroup setCombatMode 'YELLOW';
_newGroup setBehaviour 'AWARE';
_newGroup setSpeedMode 'NORMAL';
_newGroup = createGroup west;
sleep 0.2;
_newUnit = _newGroup createUnit ['rhsusf_army_ocp_rifleman_m16', [14182.7,16312,0.00115395], [], 0, 'CAN_COLLIDE'];
_newUnit setSkill 0.5;
_newUnit setRank 'PRIVATE';
_newUnit setFormDir 298.815;
_newUnit setDir 298.815;
_newUnit setPosASL [14182.7,16312,22.3432];
_newGroup setFormation 'WEDGE';
_newGroup setCombatMode 'YELLOW';
_newGroup setBehaviour 'AWARE';
_newGroup setSpeedMode 'NORMAL';
_newGroup = createGroup west;
sleep 0.2;
_newUnit = _newGroup createUnit ['rhsusf_army_ocp_marksman', [14186.5,16317.3,0.00143814], [], 0, 'CAN_COLLIDE'];
_newUnit setSkill 0.5;
_newUnit setRank 'PRIVATE';
_newUnit setFormDir 299.745;
_newUnit setDir 299.745;
_newUnit setPosASL [14186.5,16317.3,22.3548];
_newGroup setFormation 'WEDGE';
_newGroup setCombatMode 'YELLOW';
_newGroup setBehaviour 'AWARE';
_newGroup setSpeedMode 'NORMAL';
_newGroup = createGroup west;
sleep 0.2;
_newUnit = _newGroup createUnit ['rhsusf_army_ocp_sniper', [14198.8,16396.3,0.00143433], [], 0, 'CAN_COLLIDE'];
_newUnit setSkill 0.5;
_newUnit setRank 'PRIVATE';
_newUnit setFormDir 253.32;
_newUnit setDir 253.32;
_newUnit setPosASL [14198.8,16396.3,21.9597];
_newGroup setFormation 'WEDGE';
_newGroup setCombatMode 'YELLOW';
_newGroup setBehaviour 'AWARE';
_newGroup setSpeedMode 'NORMAL';
_newGroup = createGroup west;
sleep 0.2;
_newUnit = _newGroup createUnit ['rhsusf_army_ocp_autorifleman', [14200.8,16399.2,0.00144577], [], 0, 'CAN_COLLIDE'];
_newUnit setSkill 0.5;
_newUnit setRank 'PRIVATE';
_newUnit setFormDir 7.25111;
_newUnit setDir 7.25111;
_newUnit setPosASL [14200.8,16399.2,21.7524];
_newGroup setFormation 'WEDGE';
_newGroup setCombatMode 'YELLOW';
_newGroup setBehaviour 'AWARE';
_newGroup setSpeedMode 'NORMAL';
_newGroup = createGroup west;
sleep 0.2;
_newUnit = _newGroup createUnit ['rhsusf_army_ocp_sniper', [14266,16347,0.00143814], [], 0, 'CAN_COLLIDE'];
_newUnit setSkill 0.5;
_newUnit setRank 'PRIVATE';
_newUnit setFormDir 310.432;
_newUnit setDir 310.432;
_newUnit setPosASL [14266,16347,36.7728];
_newGroup setFormation 'WEDGE';
_newGroup setCombatMode 'YELLOW';
_newGroup setBehaviour 'AWARE';
_newGroup setSpeedMode 'NORMAL';
_newGroup = createGroup west;
sleep 0.2;
_newUnit = _newGroup createUnit ['rhsusf_army_ocp_grenadier', [14272.7,16347.6,0.00143814], [], 0, 'CAN_COLLIDE'];
_newUnit setSkill 0.5;
_newUnit setRank 'PRIVATE';
_newUnit setFormDir 44.4969;
_newUnit setDir 44.4969;
_newUnit setPosASL [14272.7,16347.6,36.7728];
_newGroup setFormation 'WEDGE';
_newGroup setCombatMode 'YELLOW';
_newGroup setBehaviour 'AWARE';
_newGroup setSpeedMode 'NORMAL';
_newGroup = createGroup west;
sleep 0.2;
_newUnit = _newGroup createUnit ['rhsusf_army_ocp_autorifleman', [14293.4,16353,0.00143814], [], 0, 'CAN_COLLIDE'];
_newUnit setSkill 0.5;
_newUnit setRank 'PRIVATE';
_newUnit setFormDir 347.616;
_newUnit setDir 347.616;
_newUnit setPosASL [14293.4,16353,36.5016];
_newGroup setFormation 'WEDGE';
_newGroup setCombatMode 'YELLOW';
_newGroup setBehaviour 'AWARE';
_newGroup setSpeedMode 'NORMAL';
_newGroup = createGroup west;
sleep 0.2;
_newUnit = _newGroup createUnit ['rhsusf_army_ocp_rifleman_m4', [14431.1,16350.9,0.00143814], [], 0, 'CAN_COLLIDE'];
_newUnit setSkill 0.5;
_newUnit setRank 'PRIVATE';
_newUnit setFormDir 350.596;
_newUnit setDir 350.596;
_newUnit setPosASL [14431.1,16350.9,36.7547];
_newGroup setFormation 'WEDGE';
_newGroup setCombatMode 'YELLOW';
_newGroup setBehaviour 'AWARE';
_newGroup setSpeedMode 'NORMAL';
_newGroup = createGroup west;
sleep 0.2;
_newUnit = _newGroup createUnit ['rhsusf_army_ocp_grenadier', [14434.3,16340.8,0.00143814], [], 0, 'CAN_COLLIDE'];
_newUnit setSkill 0.5;
_newUnit setRank 'PRIVATE';
_newUnit setFormDir 91.1346;
_newUnit setDir 91.1346;
_newUnit setPosASL [14434.3,16340.8,36.7547];
_newGroup setFormation 'WEDGE';
_newGroup setCombatMode 'YELLOW';
_newGroup setBehaviour 'AWARE';
_newGroup setSpeedMode 'NORMAL';
_newGroup = createGroup west;
sleep 0.2;
_newUnit = _newGroup createUnit ['rhsusf_army_ocp_sniper', [14472.3,16311.4,0.00144005], [], 0, 'CAN_COLLIDE'];
_newUnit setSkill 0.5;
_newUnit setRank 'PRIVATE';
_newUnit setFormDir 323.716;
_newUnit setDir 323.716;
_newUnit setPosASL [14472.3,16311.4,31.0522];
_newGroup setFormation 'WEDGE';
_newGroup setCombatMode 'YELLOW';
_newGroup setBehaviour 'AWARE';
_newGroup setSpeedMode 'NORMAL';
_newGroup = createGroup west;
sleep 0.2;
_newUnit = _newGroup createUnit ['rhsusf_army_ocp_sniper', [14709.4,16146,0.00143814], [], 0, 'CAN_COLLIDE'];
_newUnit setSkill 0.5;
_newUnit setRank 'PRIVATE';
_newUnit setFormDir 319.31;
_newUnit setDir 319.31;
_newUnit setPosASL [14709.4,16146,35.7908];
_newGroup setFormation 'WEDGE';
_newGroup setCombatMode 'YELLOW';
_newGroup setBehaviour 'AWARE';
_newGroup setSpeedMode 'NORMAL';
_newGroup = createGroup west;
sleep 0.2;
_newUnit = _newGroup createUnit ['rhsusf_army_ocp_grenadier', [14717.8,16140.7,0.00143814], [], 0, 'CAN_COLLIDE'];
_newUnit setSkill 0.5;
_newUnit setRank 'PRIVATE';
_newUnit setFormDir 0;
_newUnit setDir 0;
_newUnit setPosASL [14717.8,16140.7,35.7908];
_newGroup setFormation 'WEDGE';
_newGroup setCombatMode 'YELLOW';
_newGroup setBehaviour 'AWARE';
_newGroup setSpeedMode 'NORMAL';
_newGroup = createGroup west;
sleep 0.2;
_newUnit = _newGroup createUnit ['rhsusf_army_ocp_sniper', [14349.5,15760.8,0.00143814], [], 0, 'CAN_COLLIDE'];
_newUnit setSkill 0.5;
_newUnit setRank 'PRIVATE';
_newUnit setFormDir 201.291;
_newUnit setDir 201.291;
_newUnit setPosASL [14349.5,15760.8,35.5876];
_newGroup setFormation 'WEDGE';
_newGroup setCombatMode 'YELLOW';
_newGroup setBehaviour 'AWARE';
_newGroup setSpeedMode 'NORMAL';
_newGroup = createGroup west;
sleep 0.2;
_newUnit = _newGroup createUnit ['rhsusf_army_ocp_machinegunner', [14343.8,15765.4,0.00143814], [], 0, 'CAN_COLLIDE'];
_newUnit setSkill 0.5;
_newUnit setRank 'PRIVATE';
_newUnit setFormDir 281.071;
_newUnit setDir 281.071;
_newUnit setPosASL [14343.8,15765.4,35.5876];
_newGroup setFormation 'WEDGE';
_newGroup setCombatMode 'YELLOW';
_newGroup setBehaviour 'AWARE';
_newGroup setSpeedMode 'NORMAL';
_newGroup = createGroup west;
sleep 0.2;
_newUnit = _newGroup createUnit ['rhsusf_army_ocp_sniper', [14198.4,15958.6,0.00143814], [], 0, 'CAN_COLLIDE'];
_newUnit setSkill 0.5;
_newUnit setRank 'PRIVATE';
_newUnit setFormDir 202.488;
_newUnit setDir 202.488;
_newUnit setPosASL [14198.4,15958.6,35.9188];
_newGroup setFormation 'WEDGE';
_newGroup setCombatMode 'YELLOW';
_newGroup setBehaviour 'AWARE';
_newGroup setSpeedMode 'NORMAL';
_newGroup = createGroup west;
sleep 0.2;
_newUnit = _newGroup createUnit ['rhsusf_army_ocp_riflemanl', [14191.9,15964.1,0.00143814], [], 0, 'CAN_COLLIDE'];
_newUnit setSkill 0.5;
_newUnit setRank 'PRIVATE';
_newUnit setFormDir 280.128;
_newUnit setDir 280.128;
_newUnit setPosASL [14191.9,15964.1,35.9188];
_newGroup setFormation 'WEDGE';
_newGroup setCombatMode 'YELLOW';
_newGroup setBehaviour 'AWARE';
_newGroup setSpeedMode 'NORMAL';
_newGroup = createGroup west;
sleep 0.2;
_newUnit = _newGroup createUnit ['rhsusf_army_ocp_sniper', [14126.3,16144.3,0.00143814], [], 0, 'CAN_COLLIDE'];
_newUnit setSkill 0.5;
_newUnit setRank 'PRIVATE';
_newUnit setFormDir 198.975;
_newUnit setDir 198.975;
_newUnit setPosASL [14126.3,16144.3,38.7228];
_newGroup setFormation 'WEDGE';
_newGroup setCombatMode 'YELLOW';
_newGroup setBehaviour 'AWARE';
_newGroup setSpeedMode 'NORMAL';
_newGroup = createGroup west;
sleep 0.2;
_newUnit = _newGroup createUnit ['rhsusf_army_ocp_grenadier', [14132.9,16145,0.00143814], [], 0, 'CAN_COLLIDE'];
_newUnit setSkill 0.5;
_newUnit setRank 'PRIVATE';
_newUnit setFormDir 158.154;
_newUnit setDir 158.154;
_newUnit setPosASL [14132.9,16145,38.7228];
_newGroup setFormation 'WEDGE';
_newGroup setCombatMode 'YELLOW';
_newGroup setBehaviour 'AWARE';
_newGroup setSpeedMode 'NORMAL';


//FRIDEL_EDITOR===================================================================================
/*
// --Vehicles/Objects--
_veh0 = createVehicle ["Land_HelipadSquare_F",[14295.543,16268.705,0],[],0,"CAN_COLLIDE"];
		_veh0 setFormDir 159.71608;
		_veh0 setDir 159.71608;
_veh1 = createVehicle ["Land_HelipadSquare_F",[14222.366,16183.397,0],[],0,"CAN_COLLIDE"];
		_veh1 setFormDir 104.22021;
		_veh1 setDir 104.22021;
_veh2 = createVehicle ["Land_HelipadSquare_F",[14212.648,16145.536,0],[],0,"CAN_COLLIDE"];
		_veh2 setFormDir 105.01833;
		_veh2 setDir 105.01833;
_veh3 = createVehicle ["RHS_A10",[14135.388,16205.073,0],[],0,"CAN_COLLIDE"];
		_veh3 setFormDir 116.29422;
		_veh3 setDir 116.29422;
_veh4 = createVehicle ["RHS_A10",[14230.301,16302.121,0],[],0,"CAN_COLLIDE"];
		_veh4 setFormDir 140.04161;
		_veh4 setDir 140.04161;
_veh5 = createVehicle ["RHS_A10",[14412.99,16332.868,0],[],0,"CAN_COLLIDE"];
		_veh5 setFormDir 205.27467;
		_veh5 setDir 205.27467;
_veh6 = createVehicle ["RHS_A10",[14402.724,16226.572,0],[],0,"CAN_COLLIDE"];
		_veh6 setFormDir 41.191925;
		_veh6 setDir 41.191925;
_veh7 = createVehicle ["RHS_AH64D_wd_GS",[14296.529,16266.782,0],[],0,"CAN_COLLIDE"];
		_veh7 setFormDir 338.715746;
		_veh7 setDir 338.715746;
_veh8 = createVehicle ["RHS_AH64D_wd_GS",[14215.193,16144.742,0],[],0,"CAN_COLLIDE"];
		_veh8 setFormDir 287.187218;
		_veh8 setDir 287.187218;
_veh9 = createVehicle ["rhsusf_m1025_w_m2",[14187.551,16262.688,0],[],0,"CAN_COLLIDE"];
		_veh9 setFormDir 44.75192;
		_veh9 setDir 44.75192;
_veh10 = createVehicle ["rhsusf_m1025_w_mk19",[14180.479,16269.165,0],[],0,"CAN_COLLIDE"];
		_veh10 setFormDir 45.34174;
		_veh10 setDir 45.34174;
_veh11 = createVehicle ["rhsusf_M1083A1P2_wd_flatbed_fmtv_usarmy",[14214.598,16287.782,0],[],0,"CAN_COLLIDE"];
		_veh11 setFormDir 229.20013;
		_veh11 setDir 229.20013;
_veh12 = createVehicle ["rhsusf_m1025_w_mk19",[14204.815,16298.195,0],[],0,"CAN_COLLIDE"];
		_veh12 setFormDir 228.02756;
		_veh12 setDir 228.02756;
_veh13 = createVehicle ["rhsusf_m1025_w",[14177.885,16271.865,0],[],0,"CAN_COLLIDE"];
		_veh13 setFormDir 44.15884;
		_veh13 setDir 44.15884;
_veh14 = createVehicle ["rhsusf_M1078A1P2_wd_fmtv_usarmy",[14208.729,16294.436,0],[],0,"CAN_COLLIDE"];
		_veh14 setFormDir 229.45674;
		_veh14 setDir 229.45674;
_veh15 = createVehicle ["rhsusf_m1a1aimwd_usarmy",[14271.064,16214.776,0],[],0,"CAN_COLLIDE"];
		_veh15 setFormDir 303.763943;
		_veh15 setDir 303.763943;
_veh16 = createVehicle ["rhsusf_m1a1aimwd_usarmy",[14269.546,16207.28,0],[],0,"CAN_COLLIDE"];
		_veh16 setFormDir 305.519638;
		_veh16 setDir 305.519638;
_veh17 = createVehicle ["rhsusf_m1a1aimwd_usarmy",[14204.41,16264.516,0],[],0,"CAN_COLLIDE"];
		_veh17 setFormDir 313.640255;
		_veh17 setDir 313.640255;

*/

// --Units--
_group0 = createGroup west;
	_unit0 = _group0 createUnit ["rhsusf_m1a1aimwd_usarmy",[14142.929,16140.052,0],[],0,"FORM"];
		if (isNull _unit0) then {
			_unit0 = createVehicle ["rhsusf_m1a1aimwd_usarmy",[14142.929,16140.052,0],[],0,"FORM"];
 			createVehicleCrew _unit0;
		};
		(group _unit0) selectLeader _unit0;
		_unit0 setFormDir 141.45406;
		_unit0 setDir 141.45406;
_group1 = createGroup west;
	_unit1 = _group1 createUnit ["rhsusf_m1a1aimwd_usarmy",[14438.834,16358.801,0],[],0,"FORM"];
		if (isNull _unit1) then {
			_unit1 = createVehicle ["rhsusf_m1a1aimwd_usarmy",[14438.834,16358.801,0],[],0,"FORM"];
 			createVehicleCrew _unit1;
		};
		(group _unit1) selectLeader _unit1;
		_unit1 setFormDir 304.752476;
		_unit1 setDir 304.752476;
_group2 = createGroup west;
	_unit2 = _group2 createUnit ["rhsusf_m1a1aimwd_usarmy",[14276.791,16333.709,0],[],0,"FORM"];
		if (isNull _unit2) then {
			_unit2 = createVehicle ["rhsusf_m1a1aimwd_usarmy",[14276.791,16333.709,0],[],0,"FORM"];
 			createVehicleCrew _unit2;
		};
		(group _unit2) selectLeader _unit2;
		_unit2 setFormDir 43.629742;
		_unit2 setDir 43.629742;
_group3 = createGroup west;
	_unit3 = _group3 createUnit ["rhsusf_army_ucp_squadleader",[14205.54,16267.008,0],[],0,"FORM"];
		if (isNull _unit3) then {
			_unit3 = createVehicle ["rhsusf_army_ucp_squadleader",[14205.54,16267.008,0],[],0,"FORM"];
 			createVehicleCrew _unit3;
		};
		(group _unit3) selectLeader _unit3;
		_unit3 setFormDir 100.881;
		_unit3 setDir 100.881;
_group4 = createGroup west;
	_unit4 = _group4 createUnit ["rhsusf_army_ucp_crewman",[14207.22,16267.278,0],[],0,"FORM"];
		if (isNull _unit4) then {
			_unit4 = createVehicle ["rhsusf_army_ucp_crewman",[14207.22,16267.278,0],[],0,"FORM"];
 			createVehicleCrew _unit4;
		};
		(group _unit4) selectLeader _unit4;
		_unit4 setFormDir 266.083618;
		_unit4 setDir 266.083618;
_group5 = createGroup west;
	_unit5 = _group5 createUnit ["rhsusf_army_ucp_crewman",[14207.172,16265.897,0],[],0,"FORM"];
		if (isNull _unit5) then {
			_unit5 = createVehicle ["rhsusf_army_ucp_crewman",[14207.172,16265.897,0],[],0,"FORM"];
 			createVehicleCrew _unit5;
		};
		(group _unit5) selectLeader _unit5;
		_unit5 setFormDir 315.164791;
		_unit5 setDir 315.164791;
_group6 = createGroup west;
	_unit6 = _group6 createUnit ["rhsusf_army_ucp_riflemanl",[14215.083,16284.741,0],[],0,"FORM"];
		if (isNull _unit6) then {
			_unit6 = createVehicle ["rhsusf_army_ucp_riflemanl",[14215.083,16284.741,0],[],0,"FORM"];
 			createVehicleCrew _unit6;
		};
		(group _unit6) selectLeader _unit6;
		_unit6 setFormDir 230.48477;
		_unit6 setDir 230.48477;
_group7 = createGroup west;
	_unit7 = _group7 createUnit ["rhsusf_army_ucp_crewman",[14160.582,16295.732,0],[],0,"FORM"];
		if (isNull _unit7) then {
			_unit7 = createVehicle ["rhsusf_army_ucp_crewman",[14160.582,16295.732,0],[],0,"FORM"];
 			createVehicleCrew _unit7;
		};
		(group _unit7) selectLeader _unit7;
_group8 = createGroup west;
	_unit8 = _group8 createUnit ["rhsusf_army_ucp_riflemanl",[14161.843,16283.794,0],[],0,"FORM"];
		if (isNull _unit8) then {
			_unit8 = createVehicle ["rhsusf_army_ucp_riflemanl",[14161.843,16283.794,0],[],0,"FORM"];
 			createVehicleCrew _unit8;
		};
		(group _unit8) selectLeader _unit8;
		_unit8 setFormDir 1.830305;
		_unit8 setDir 1.830305;
_group9 = createGroup west;
	_unit9 = _group9 createUnit ["rhsusf_army_ucp_riflemanl",[14160.777,16286.91,0],[],0,"FORM"];
		if (isNull _unit9) then {
			_unit9 = createVehicle ["rhsusf_army_ucp_riflemanl",[14160.777,16286.91,0],[],0,"FORM"];
 			createVehicleCrew _unit9;
		};
		(group _unit9) selectLeader _unit9;
		_unit9 setFormDir 150.59111;
		_unit9 setDir 150.59111;
_group10 = createGroup west;
	_unit10 = _group10 createUnit ["rhsusf_army_ucp_sniper",[14163.026,16284.057,0],[],0,"FORM"];
		if (isNull _unit10) then {
			_unit10 = createVehicle ["rhsusf_army_ucp_sniper",[14163.026,16284.057,0],[],0,"FORM"];
 			createVehicleCrew _unit10;
		};
		(group _unit10) selectLeader _unit10;
		_unit10 setFormDir 316.05435;
		_unit10 setDir 316.05435;
_group11 = createGroup west;
	_unit11 = _group11 createUnit ["rhsusf_army_ucp_marksman",[14160.392,16286.003,0],[],0,"FORM"];
		if (isNull _unit11) then {
			_unit11 = createVehicle ["rhsusf_army_ucp_marksman",[14160.392,16286.003,0],[],0,"FORM"];
 			createVehicleCrew _unit11;
		};
		(group _unit11) selectLeader _unit11;
		_unit11 setFormDir 147.58954;
		_unit11 setDir 147.58954;
_group12 = createGroup west;
	_unit12 = _group12 createUnit ["rhsusf_army_ucp_medic",[14142.175,16268.283,0],[],0,"NONE"];
		if (isNull _unit12) then {
			_unit12 = createVehicle ["rhsusf_army_ucp_medic",[14142.175,16268.283,0],[],0,"NONE"];
 			createVehicleCrew _unit12;
		};
		(group _unit12) selectLeader _unit12;
	_unit13 = _group12 createUnit ["rhsusf_army_ucp_medic",[14140.689,16268.712,0],[],0,"NONE"];
		if (isNull _unit13) then {
			_unit13 = createVehicle ["rhsusf_army_ucp_medic",[14140.689,16268.712,0],[],0,"NONE"];
 			createVehicleCrew _unit13;
		};
_group13 = createGroup west;
	_unit14 = _group13 createUnit ["rhsusf_m1025_w_m2",[14234.684,15614.648,0],[],0,"FORM"];
		if (isNull _unit14) then {
			_unit14 = createVehicle ["rhsusf_m1025_w_m2",[14234.684,15614.648,0],[],0,"FORM"];
 			createVehicleCrew _unit14;
		};
		(group _unit14) selectLeader _unit14;
		_unit14 setFormDir 268.70526;
		_unit14 setDir 268.70526;
_group14 = createGroup west;
	_unit15 = _group14 createUnit ["rhsusf_m1025_w_mk19",[14639.67,16367.304,0],[],0,"FORM"];
		if (isNull _unit15) then {
			_unit15 = createVehicle ["rhsusf_m1025_w_mk19",[14639.67,16367.304,0],[],0,"FORM"];
 			createVehicleCrew _unit15;
		};
		(group _unit15) selectLeader _unit15;
		_unit15 setFormDir 289.429176;
		_unit15 setDir 289.429176;
_group15 = createGroup west;
	_unit16 = _group15 createUnit ["rhsusf_m1025_w_m2",[13108.718,15572.297,0],[],0,"FORM"];
		if (isNull _unit16) then {
			_unit16 = createVehicle ["rhsusf_m1025_w_m2",[13108.718,15572.297,0],[],0,"FORM"];
 			createVehicleCrew _unit16;
		};
		(group _unit16) selectLeader _unit16;
_group16 = createGroup west;
	_unit17 = _group16 createUnit ["rhsusf_m1025_w_m2",[14765.425,16108.657,0],[],0,"FORM"];
		if (isNull _unit17) then {
			_unit17 = createVehicle ["rhsusf_m1025_w_m2",[14765.425,16108.657,0],[],0,"FORM"];
 			createVehicleCrew _unit17;
		};
		(group _unit17) selectLeader _unit17;
		_unit17 setFormDir 224.41937;
		_unit17 setDir 224.41937;
_group17 = createGroup west;
	_unit18 = _group17 createUnit ["rhsusf_m1025_w_mk19",[15816.493,17427.195,0],[],0,"FORM"];
		if (isNull _unit18) then {
			_unit18 = createVehicle ["rhsusf_m1025_w_mk19",[15816.493,17427.195,0],[],0,"FORM"];
 			createVehicleCrew _unit18;
		};
		(group _unit18) selectLeader _unit18;
		_unit18 setFormDir 278.062248;
		_unit18 setDir 278.062248;
// --Waypoints--
_wp70 = _group7 addWaypoint [[14130.927,16239.869,0],0];
	_wp70 setWaypointBehaviour "SAFE";
	_wp70 setWaypointSpeed "LIMITED";
_wp71 = _group7 addWaypoint [[14173.79,16221.431,0],0];
_wp72 = _group7 addWaypoint [[14213.747,16283.842,0],0];
	_wp72 setWaypointType "CYCLE";
	_wp72 setWaypointTimeout [40,50,60];
_wp120 = _group12 addWaypoint [[14178.55,16318.487,0],0];
	_wp120 setWaypointTimeout [30,30,30];
	_wp120 setWaypointBehaviour "SAFE";
	_wp120 setWaypointSpeed "LIMITED";
	_wp120 setWaypointFormation "LINE";
_wp121 = _group12 addWaypoint [[14143.519,16232.24,0],0];
	_wp121 setWaypointType "CYCLE";
_wp130 = _group13 addWaypoint [[14037.809,15789.442,0],0];
	_wp130 setWaypointBehaviour "SAFE";
	_wp130 setWaypointSpeed "LIMITED";
	_wp130 setWaypointFormation "COLUMN";
_wp131 = _group13 addWaypoint [[14151.974,16317.592,0],0];
_wp132 = _group13 addWaypoint [[14575.967,16388.43,0],0];
	_wp132 setWaypointType "GUARD";
_wp140 = _group14 addWaypoint [[14239.881,16409.945,0],0];
	_wp140 setWaypointBehaviour "SAFE";
	_wp140 setWaypointSpeed "LIMITED";
	_wp140 setWaypointFormation "COLUMN";
_wp141 = _group14 addWaypoint [[14064.428,16437.094,0],0];
_wp142 = _group14 addWaypoint [[12398.301,15873.131,0],0];
	_wp142 setWaypointType "GUARD";
_wp150 = _group15 addWaypoint [[13191.921,15950.122,0],0];
	_wp150 setWaypointBehaviour "SAFE";
	_wp150 setWaypointSpeed "LIMITED";
	_wp150 setWaypointFormation "COLUMN";
_wp151 = _group15 addWaypoint [[15141.431,17542.566,0],0];
_wp152 = _group15 addWaypoint [[15790.25,17430.836,0],0];
	_wp152 setWaypointType "GUARD";
_wp160 = _group16 addWaypoint [[14226.718,15614.575,0],0];
	_wp160 setWaypointBehaviour "SAFE";
	_wp160 setWaypointSpeed "LIMITED";
	_wp160 setWaypointFormation "COLUMN";
_wp161 = _group16 addWaypoint [[14036.522,15794.553,0],0];
_wp162 = _group16 addWaypoint [[14230.557,16404.559,0],0];
_wp163 = _group16 addWaypoint [[14063.364,16438.252,0],0];
_wp164 = _group16 addWaypoint [[14595.683,17004.568,0],0];
	_wp164 setWaypointType "GUARD";
_wp170 = _group17 addWaypoint [[15134.616,17539.904,0],0];
	_wp170 setWaypointBehaviour "SAFE";
	_wp170 setWaypointSpeed "LIMITED";
	_wp170 setWaypointFormation "COLUMN";
_wp171 = _group17 addWaypoint [[14060.241,16450.32,0],0];
_wp172 = _group17 addWaypoint [[14228.038,16413.994,0],0];
_wp173 = _group17 addWaypoint [[14042.918,15770.955,0],0];
_wp174 = _group17 addWaypoint [[14267.444,15617.94,0],0];
_wp175 = _group17 addWaypoint [[14361.736,15762.834,0],0];
	_wp175 setWaypointType "GUARD";