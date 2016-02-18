//Radar
radar1 = createVehicleLocal ['Sign_Sphere10cm_F', [17104.4,26256.7,2.35036], [], 0, 'CAN_COLLIDE'];
radar1 setPosASL [17104.4,26256.7,45.2565];
radar1 setVectorDirAndUp [[-3.55433e-006,0.999999,-0.00133259], [0.00266722,0.0013326,0.999996]];

radar2 = createVehicleLocal ['Sign_Sphere10cm_F', [17104.4,26231.9,5.35223], [], 0, 'CAN_COLLIDE'];
radar2 setPosASL [17104.4,26231.9,44.0319];
radar2 setVectorDirAndUp [[-8.53194e-005,0.999968,-0.00799851], [0.010666,0.00799896,0.999911]];

//Motor
engine1 = createVehicleLocal ['Sign_Sphere10cm_F', [17097.9,26243.4,1.07026], [], 0, 'CAN_COLLIDE'];
engine1 setPosASL [17097.9,26243.4,1.07026];
engine1 setVectorDirAndUp [[-9.59916e-005,0.999968,-0.00799827], [0.0120003,0.00799884,0.999896]]; 

engine2 = createVehicleLocal ['Sign_Sphere10cm_F', [17099.3,26247.7,-40.691], [], 0, 'CAN_COLLIDE'];
engine2 setPosASL [17099.3,26247.7,-48.691];
engine2 setVectorDirAndUp [[-8.53194e-005,0.999968,-0.00799851], [0.010666,0.00799896,0.999911]];


SOUNDOBJECTSCREATED = true;
publicVariable "SOUNDOBJECTSCREATED";
