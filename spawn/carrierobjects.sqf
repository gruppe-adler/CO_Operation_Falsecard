carrierobjects = [];

//Werkzeugwagen
_newObject = createVehicle ['Land_ToolTrolley_01_F', [17102.9,26305.9,-0.0250015], [], 0, 'CAN_COLLIDE'];
_newObject setPosASL [17102.9,26305.9,17.1673];
_newObject setVectorDirAndUp [[-0.996812,0.0797847,-6.23221e-005], [-5.19325e-005,0.000132296,1]];
_newObject = createVehicle ['Land_WeldingTrolley_01_F', [17099.9,26320.7,-0.0249786], [], 0, 'CAN_COLLIDE'];
_newObject setPosASL [17099.9,26320.7,17.1674];
_newObject setVectorDirAndUp [[-0.430786,-0.902454,8.07629e-006], [6.2499e-005,-2.08846e-005,1]];
carrierobjects = carrierobjects + [_newObject];

//Jet Engine Air Start Unit
_newObject = createVehicle ['Land_JetEngineStarter_01_F', [17101.5,26294.8,-0.0235233], [], 0, 'CAN_COLLIDE'];
_newObject setPosASL [17101.5,26294.8,17.1688];
_newObject setVectorDirAndUp [[-0.0691225,0.997607,0.00169455], [0.000110675,-0.00169095,0.999998]];
carrierobjects = carrierobjects + [_newObject];

//Supply Crate
/*
crate = createVehicle ['B_supplyCrate_F', [17073.5,26218.5,17.1673], [], 0, 'CAN_COLLIDE'];
crate setPosASL [17073.5,26218.5,17.1673];
crate setVectorDirAndUp [[0.000422494,1,-7.14671e-006], [-1.14335e-005,7.15154e-006,1]];
[crate] execVM "equipment\clearbox.sqf";
[crate] execVM "equipment\additems.sqf";
*/

//Pallet Trolley
_newObject = createVehicle ['Land_PalletTrolley_01_khaki_F', [17075.3,26219.6,-0.0249977], [], 0, 'CAN_COLLIDE'];
_newObject setPosASL [17075.3,26219.6,17.1673];
_newObject setVectorDirAndUp [[0.540802,-0.84115,1.75717e-005], [-8.63159e-006,1.53406e-005,1]];
carrierobjects = carrierobjects + [_newObject];

//Lights
_newObject = createVehicle ['Land_PortableLight_double_F', [17100.6,26327.4,0], [], 0, 'CAN_COLLIDE'];
_newObject setPosASL [17100.6,26327.3,17.1924];
_newObject setVectorDirAndUp [[-0.407325,0.913283,0], [0,0,1]];
carrierobjects = carrierobjects + [_newObject];

_newObject = createVehicle ['Land_PortableLight_double_F', [17102.3,26300.3,0], [], 0, 'CAN_COLLIDE'];
_newObject setPosASL [17102.3,26300.4,17.1924];
_newObject setVectorDirAndUp [[-0.163228,-0.986588,0], [0,0,1]];
carrierobjects = carrierobjects + [_newObject];

_newObject = createVehicle ['Land_PortableLight_single_F', [17099.8,26183.7,0], [], 0, 'CAN_COLLIDE'];
_newObject setPosASL [17099.9,26183.8,17.1924];
_newObject setVectorDirAndUp [[-0.509773,-0.860309,0], [0,0,1]];
carrierobjects = carrierobjects + [_newObject];
