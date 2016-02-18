if (!isServer) exitWith {};

_newGroup = createGroup east;
_newUnit = _newGroup createUnit ['rhs_vdv_flora_machinegunner', [9482.71,20300.7,0.00143433], [], 0, 'CAN_COLLIDE'];
_newUnit setSkill 0.5;
_newUnit setRank 'PRIVATE';
_newUnit setFormDir 0;
_newUnit setDir 0;
_newUnit setPosASL [9482.71,20300.7,138.471];
_newGroup setFormation 'WEDGE';
_newGroup setCombatMode 'YELLOW';
_newGroup setBehaviour 'AWARE';
_newGroup setSpeedMode 'NORMAL';
_newGroup = createGroup east;
_newUnit = _newGroup createUnit ['rhs_vdv_flora_rifleman', [9484.34,20301.3,0.00143433], [], 0, 'CAN_COLLIDE'];
_newUnit setSkill 0.5;
_newUnit setRank 'PRIVATE';
_newUnit setFormDir 0;
_newUnit setDir 0;
_newUnit setPosASL [9484.34,20301.3,134.96];
_newGroup setFormation 'WEDGE';
_newGroup setCombatMode 'YELLOW';
_newGroup setBehaviour 'AWARE';
_newGroup setSpeedMode 'NORMAL';
_newGroup = createGroup east;
_newUnit = _newGroup createUnit ['rhs_vdv_flora_marksman', [9499.37,20265.1,0.00144958], [], 0, 'CAN_COLLIDE'];
_newUnit setSkill 0.5;
_newUnit setRank 'PRIVATE';
_newUnit setFormDir 283.855;
_newUnit setDir 283.855;
_newUnit setPosASL [9499.37,20265.1,142.423];
_newGroup setFormation 'WEDGE';
_newGroup setCombatMode 'YELLOW';
_newGroup setBehaviour 'AWARE';
_newGroup setSpeedMode 'NORMAL';
_newGroup = createGroup east;
_newUnit = _newGroup createUnit ['rhs_vdv_flora_grenadier', [9481.22,20319.7,0.00143433], [], 0, 'CAN_COLLIDE'];
_newUnit setSkill 0.5;
_newUnit setRank 'PRIVATE';
_newUnit setFormDir 152.564;
_newUnit setDir 152.564;
_newUnit setPosASL [9481.22,20319.7,136.01];
_newGroup setFormation 'WEDGE';
_newGroup setCombatMode 'YELLOW';
_newGroup setBehaviour 'AWARE';
_newGroup setSpeedMode 'NORMAL';


// Created by SMC v2.1.3 (for Arma 3)
// 02/06/16 21:32:59

// --Markers--
createMarker ["RUS",[13736.552,21025.045,54.924847]];
	"RUS" setMarkerShape "ICON";
	"RUS" setMarkerType "rhs_flag_Russia";
createMarker ["RUS_2",[6233.5132,13503.349,70.143692]];
	"RUS_2" setMarkerShape "ICON";
	"RUS_2" setMarkerType "rhs_flag_Russia";
createMarker ["para1",[7610.335,22254.582,72.158783]];
	"para1" setMarkerShape "ICON";
	"para1" setMarkerType "COREV_Marker_Parachute";
	"para1" setMarkerColor "ColorWEST";
createMarker ["dot1_4",[7818.5151,24262.32,-0.093615979]];
	"dot1_4" setMarkerShape "ICON";
	"dot1_4" setMarkerType "mil_dot";
	"dot1_4" setMarkerColor "ColorWEST";
createMarker ["wp_1",[7722.4619,23594.539,-19.14521]];
	"wp_1" setMarkerShape "ICON";
	"wp_1" setMarkerType "Empty";
createMarker ["wp_2",[7577.0952,21522.371,157.16063]];
	"wp_2" setMarkerShape "ICON";
	"wp_2" setMarkerType "Empty";
createMarker ["dot1_4_1",[7681.4536,23200.094,-0.004925462]];
	"dot1_4_1" setMarkerShape "ICON";
	"dot1_4_1" setMarkerType "mil_dot";
	"dot1_4_1" setMarkerColor "ColorWEST";
createMarker ["dot1_4_2",[8109.7715,25427.344,-0.012381129]];
	"dot1_4_2" setMarkerShape "ICON";
	"dot1_4_2" setMarkerType "mil_dot";
	"dot1_4_2" setMarkerColor "ColorWEST";
createMarker ["dot1_4_3",[9408.917,25725.492,-0.0052688741]];
	"dot1_4_3" setMarkerShape "ICON";
	"dot1_4_3" setMarkerType "mil_dot";
	"dot1_4_3" setMarkerColor "ColorWEST";
createMarker ["dot1_4_4",[10648.007,25836.855,-0.0033158041]];
	"dot1_4_4" setMarkerShape "ICON";
	"dot1_4_4" setMarkerType "mil_dot";
	"dot1_4_4" setMarkerColor "ColorWEST";
createMarker ["dot1_4_5",[12016.023,25915.623,-0.0013055722]];
	"dot1_4_5" setMarkerShape "ICON";
	"dot1_4_5" setMarkerType "mil_dot";
	"dot1_4_5" setMarkerColor "ColorWEST";
createMarker ["dot1_4_6",[13266.709,25941.322,-0.008256264]];
	"dot1_4_6" setMarkerShape "ICON";
	"dot1_4_6" setMarkerType "mil_dot";
	"dot1_4_6" setMarkerColor "ColorWEST";
createMarker ["dot1_4_7",[14560.227,25975.588,0.0013164189]];
	"dot1_4_7" setMarkerShape "ICON";
	"dot1_4_7" setMarkerType "mil_dot";
	"dot1_4_7" setMarkerColor "ColorWEST";
// --Vehicles/Objects--
_veh0 = createVehicle ["rhs_uaz_vdv",[9502.2979,20236.248,0],[],0,"CAN_COLLIDE"];
		_veh0 setFormDir 90.372932;
		_veh0 setDir 90.372932;
_veh1 = createVehicle ["rhs_tigr_m_vdv",[9522.0635,20355.088,0],[],0,"CAN_COLLIDE"];
		_veh1 setFormDir 314.798973;
		_veh1 setDir 314.798973;
// --Units--
_group0 = createGroup east;
	_unit0 = _group0 createUnit ["rhs_vdv_flora_rifleman",[9503.0439,20234.822,0],[],0,"FORM"];
		if (isNull _unit0) then {
			_unit0 = createVehicle ["rhs_vdv_flora_rifleman",[9503.0439,20234.822,0],[],0,"FORM"];
 			createVehicleCrew _unit0;
		};
		(group _unit0) selectLeader _unit0;
		_unit0 setFormDir 153.19046;
		_unit0 setDir 153.19046;
		_unit0 setVehicleLock "LOCKEDPLAYER";
_group1 = createGroup east;
	_unit1 = _group1 createUnit ["rhs_vdv_flora_machinegunner",[9503.4727,20237.771,0],[],0,"FORM"];
		if (isNull _unit1) then {
			_unit1 = createVehicle ["rhs_vdv_flora_machinegunner",[9503.4727,20237.771,0],[],0,"FORM"];
 			createVehicleCrew _unit1;
		};
		(group _unit1) selectLeader _unit1;
		_unit1 setFormDir 172.51849;
		_unit1 setDir 172.51849;
		_unit1 setVehicleLock "LOCKEDPLAYER";
_group2 = createGroup east;
	_unit2 = _group2 createUnit ["rhs_vdv_flora_grenadier",[9520.4912,20354.467,0],[],0,"FORM"];
		if (isNull _unit2) then {
			_unit2 = createVehicle ["rhs_vdv_flora_grenadier",[9520.4912,20354.467,0],[],0,"FORM"];
 			createVehicleCrew _unit2;
		};
		(group _unit2) selectLeader _unit2;
		_unit2 setFormDir 258.21046;
		_unit2 setDir 258.21046;
		_unit2 setVehicleLock "LOCKEDPLAYER";
_group3 = createGroup east;
	_unit3 = _group3 createUnit ["rhs_vdv_flora_rifleman",[9519.2373,20355.971,0],[],0,"FORM"];
		if (isNull _unit3) then {
			_unit3 = createVehicle ["rhs_vdv_flora_rifleman",[9519.2373,20355.971,0],[],0,"FORM"];
 			createVehicleCrew _unit3;
		};
		(group _unit3) selectLeader _unit3;
		_unit3 setFormDir 35.318798;
		_unit3 setDir 35.318798;
		_unit3 setVehicleLock "LOCKEDPLAYER";
_group4 = createGroup east;
	_unit4 = _group4 createUnit ["RHS_Ural_Open_VDV_01",[9520.0303,20321.355,0],[],0,"FORM"];
		if (isNull _unit4) then {
			_unit4 = createVehicle ["RHS_Ural_Open_VDV_01",[9520.0303,20321.355,0],[],0,"FORM"];
 			createVehicleCrew _unit4;
		};
		(group _unit4) selectLeader _unit4;
		_unit4 setFormDir 167.86269;
		_unit4 setDir 167.86269;
		_unit4 setVehicleLock "LOCKEDPLAYER";
_group5 = createGroup east;
	_unit5 = _group5 createUnit ["rhs_vdv_flora_machinegunner",[9511.9531,20357.271,0],[],0,"FORM"];
		if (isNull _unit5) then {
			_unit5 = createVehicle ["rhs_vdv_flora_machinegunner",[9511.9531,20357.271,0],[],0,"FORM"];
 			createVehicleCrew _unit5;
		};
		(group _unit5) selectLeader _unit5;
		_unit5 setFormDir 284.130333;
		_unit5 setDir 284.130333;
		_unit5 setVehicleLock "LOCKEDPLAYER";
	_unit6 = _group5 createUnit ["rhs_vdv_flora_rifleman",[9512.8496,20355.836,0],[],0,"FORM"];
		if (isNull _unit6) then {
			_unit6 = createVehicle ["rhs_vdv_flora_rifleman",[9512.8496,20355.836,0],[],0,"FORM"];
 			createVehicleCrew _unit6;
		};
		_unit6 setVehicleLock "LOCKEDPLAYER";
_group6 = createGroup east;
	_unit7 = _group6 createUnit ["rhs_vdv_flora_rifleman",[9326.8662,20252.406,0],[],0,"FORM"];
		if (isNull _unit7) then {
			_unit7 = createVehicle ["rhs_vdv_flora_rifleman",[9326.8662,20252.406,0],[],0,"FORM"];
 			createVehicleCrew _unit7;
		};
		(group _unit7) selectLeader _unit7;
		_unit7 setVehicleLock "LOCKEDPLAYER";
	_unit8 = _group6 createUnit ["rhs_vdv_flora_LAT",[9331.9639,20249.605,0],[],0,"FORM"];
		if (isNull _unit8) then {
			_unit8 = createVehicle ["rhs_vdv_flora_LAT",[9331.9639,20249.605,0],[],0,"FORM"];
 			createVehicleCrew _unit8;
		};
		_unit8 setVehicleLock "LOCKEDPLAYER";
_group7 = createGroup east;
	_unit9 = _group7 createUnit ["rhs_vdv_flora_rifleman",[9515.2813,20290.41,0],[],0,"FORM"];
		if (isNull _unit9) then {
			_unit9 = createVehicle ["rhs_vdv_flora_rifleman",[9515.2813,20290.41,0],[],0,"FORM"];
 			createVehicleCrew _unit9;
		};
		(group _unit9) selectLeader _unit9;
		_unit9 setVehicleLock "LOCKEDPLAYER";
	_unit10 = _group7 createUnit ["rhs_vdv_flora_marksman",[9517.75,20287.279,0],[],0,"FORM"];
		if (isNull _unit10) then {
			_unit10 = createVehicle ["rhs_vdv_flora_marksman",[9517.75,20287.279,0],[],0,"FORM"];
 			createVehicleCrew _unit10;
		};
		_unit10 setVehicleLock "LOCKEDPLAYER";
_group8 = createGroup east;
	_unit11 = _group8 createUnit ["rhs_vdv_flora_rifleman",[9420.4092,20248.045,0],[],0,"FORM"];
		if (isNull _unit11) then {
			_unit11 = createVehicle ["rhs_vdv_flora_rifleman",[9420.4092,20248.045,0],[],0,"FORM"];
 			createVehicleCrew _unit11;
		};
		(group _unit11) selectLeader _unit11;
_group9 = createGroup east;
	_unit12 = _group9 createUnit ["rhs_vdv_flora_grenadier",[9477.2676,20265.154,0],[],0,"FORM"];
		if (isNull _unit12) then {
			_unit12 = createVehicle ["rhs_vdv_flora_grenadier",[9477.2676,20265.154,0],[],0,"FORM"];
 			createVehicleCrew _unit12;
		};
		(group _unit12) selectLeader _unit12;
// --Waypoints--
_wp50 = _group5 addWaypoint [[9444.6582,20344.25,0],0];
	_wp50 setWaypointBehaviour "SAFE";
	_wp50 setWaypointSpeed "LIMITED";
_wp51 = _group5 addWaypoint [[9438.1943,20304.27,0],0];
	_wp51 setWaypointBehaviour "SAFE";
	_wp51 setWaypointSpeed "LIMITED";
_wp52 = _group5 addWaypoint [[9510.5215,20319.631,0],0];
	_wp52 setWaypointType "CYCLE";
	_wp52 setWaypointBehaviour "SAFE";
	_wp52 setWaypointSpeed "LIMITED";
_wp60 = _group6 addWaypoint [[9320.2422,20297.752,0],0];
	_wpObj1250497 = ([9320.2422,20297.752,0] nearestObject 1250497);
	if !(isNull _wpObj1250497) then {
		_wp60 waypointAttachObject _wpObj1250497;
		_wp60 setWaypointHousePosition 0;
	};
	_wp60 setWaypointBehaviour "SAFE";
	_wp60 setWaypointSpeed "LIMITED";
_wp61 = _group6 addWaypoint [[9370.542,20284.125,0],0];
	_wpObj1250503 = ([9370.542,20284.125,0] nearestObject 1250503);
	if !(isNull _wpObj1250503) then {
		_wp61 waypointAttachObject _wpObj1250503;
		_wp61 setWaypointHousePosition 6;
	};
	_wp61 setWaypointTimeout [10,10,10];
_wp62 = _group6 addWaypoint [[9342.6738,20238.268,0],0];
	_wpObj1324899 = ([9342.6738,20238.268,0] nearestObject 1324899);
	if !(isNull _wpObj1324899) then {
		_wp62 waypointAttachObject _wpObj1324899;
		_wp62 setWaypointHousePosition 0;
	};
	_wp62 setWaypointType "CYCLE";
	_wp62 setWaypointTimeout [10,10,10];
_wp70 = _group7 addWaypoint [[9382.54,20273.051,0],0];
	_wp70 setWaypointBehaviour "SAFE";
	_wp70 setWaypointSpeed "LIMITED";
_wp71 = _group7 addWaypoint [[9453.2363,20137.936,0],0];
	_wp71 setWaypointBehaviour "SAFE";
	_wp71 setWaypointSpeed "LIMITED";
_wp72 = _group7 addWaypoint [[9515.249,20252.408,0],0];
	_wp72 setWaypointType "CYCLE";
	_wp72 setWaypointBehaviour "SAFE";
	_wp72 setWaypointSpeed "LIMITED";
_wp80 = _group8 addWaypoint [[9404.3047,20250.035,0],0];
	_wpObj1334362 = ([9404.3047,20250.035,0] nearestObject 1334362);
	if !(isNull _wpObj1334362) then {
		_wp80 waypointAttachObject _wpObj1334362;
		_wp80 setWaypointHousePosition 3;
	};
	_wp80 setWaypointBehaviour "SAFE";
	_wp80 setWaypointSpeed "LIMITED";
_wp81 = _group8 addWaypoint [[9396.2119,20284.027,0],0];
	_wpObj1282825 = ([9396.2119,20284.027,0] nearestObject 1282825);
	if !(isNull _wpObj1282825) then {
		_wp81 waypointAttachObject _wpObj1282825;
		_wp81 setWaypointHousePosition 2;
	};
	_wp81 setWaypointTimeout [10,10,10];
_wp82 = _group8 addWaypoint [[9428.6934,20287.225,0],0];
	_wpObj1282849 = ([9428.6934,20287.225,0] nearestObject 1282849);
	if !(isNull _wpObj1282849) then {
		_wp82 waypointAttachObject _wpObj1282849;
		_wp82 setWaypointHousePosition 0;
	};
	_wp82 setWaypointTimeout [10,10,10];
_wp83 = _group8 addWaypoint [[9441.8037,20259.166,0],0];
	_wpObj1282840 = ([9441.8037,20259.166,0] nearestObject 1282840);
	if !(isNull _wpObj1282840) then {
		_wp83 waypointAttachObject _wpObj1282840;
		_wp83 setWaypointHousePosition 0;
	};
	_wp83 setWaypointType "CYCLE";
	_wp83 setWaypointTimeout [10,10,10];
_wp90 = _group9 addWaypoint [[9460.2031,20277.494,0],0];
	_wpObj1282973 = ([9460.2031,20277.494,0] nearestObject 1282973);
	if !(isNull _wpObj1282973) then {
		_wp90 waypointAttachObject _wpObj1282973;
		_wp90 setWaypointHousePosition 2;
	};
	_wp90 setWaypointBehaviour "SAFE";
	_wp90 setWaypointSpeed "LIMITED";
_wp91 = _group9 addWaypoint [[9455.2432,20292.43,0],0];
	_wpObj1282841 = ([9455.2432,20292.43,0] nearestObject 1282841);
	if !(isNull _wpObj1282841) then {
		_wp91 waypointAttachObject _wpObj1282841;
		_wp91 setWaypointHousePosition 0;
	};
	_wp91 setWaypointTimeout [10,10,10];
_wp92 = _group9 addWaypoint [[9486.1924,20297.805,0],0];
	_wpObj1282977 = ([9486.1924,20297.805,0] nearestObject 1282977);
	if !(isNull _wpObj1282977) then {
		_wp92 waypointAttachObject _wpObj1282977;
		_wp92 setWaypointHousePosition 0;
	};
	_wp92 setWaypointTimeout [10,10,10];
_wp93 = _group9 addWaypoint [[9506.6758,20300.986,0],0];
	_wpObj1282984 = ([9506.6758,20300.986,0] nearestObject 1282984);
	if !(isNull _wpObj1282984) then {
		_wp93 waypointAttachObject _wpObj1282984;
		_wp93 setWaypointHousePosition 0;
	};
	_wp93 setWaypointTimeout [10,10,10];
_wp94 = _group9 addWaypoint [[9504.4336,20261.936,0],0];
	_wpObj1282979 = ([9504.4336,20261.936,0] nearestObject 1282979);
	if !(isNull _wpObj1282979) then {
		_wp94 waypointAttachObject _wpObj1282979;
		_wp94 setWaypointHousePosition 5;
	};
	_wp94 setWaypointType "CYCLE";
	_wp94 setWaypointTimeout [10,10,10];
