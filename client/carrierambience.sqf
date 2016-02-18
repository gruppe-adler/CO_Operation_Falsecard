_loopSound = 
{
	_obj = _this select 0;
	_sound = _this select 1;
	_length = _this select 2;
	
	while {!ABGEFLOGEN} do
	{
		_obj say3D _sound;
		sleep _length;
	};
	
};

//OBJECTS=====
//Radar
radar1 = "Sign_Sphere10cm_F" createVehicleLocal [17104.4,26256.7,2.35036];
radar1 setPosASL [17104.4,26256.7,45.2565];
radar2 = "Sign_Sphere10cm_F" createVehicleLocal [17104.4,26231.9,5.35223];
radar2 setPosASL [17104.4,26231.9,44.0319];

//Motor
engine1 = "Sign_Sphere10cm_F" createVehicleLocal [17095.7,26293.5,0.0357305];
engine1 setPosASL [17108.7,26293.5,0.0357305];
engine2 = "Sign_Sphere10cm_F" createVehicleLocal [17099.3,26247.7,-40.691];
engine2 setPosASL [17099.3,26247.7,-48.691];


//SOUNDS=====
//Radar
[radar1, "radar1", 10.28] spawn _loopSound;
[radar2, "radar2", 4.40] spawn _loopSound;

//Motor */
[engine1, "engine1", 9.99] spawn _loopSound;
[engine2, "ambhum1", 9.28] spawn _loopSound;



/*
//Radar
radar1 = "Sign_Sphere10cm_F" createVehicleLocal ['Sign_Sphere10cm_F', [17104.4,26256.7,2.35036], [], 0, 'CAN_COLLIDE'];
radar1 setPosASL [17104.4,26256.7,45.2565];
radar1 setVectorDirAndUp [[-3.55433e-006,0.999999,-0.00133259], [0.00266722,0.0013326,0.999996]];

radar2 = "Sign_Sphere10cm_F" createVehicleLocal ['Sign_Sphere10cm_F', [17104.4,26231.9,5.35223], [], 0, 'CAN_COLLIDE'];
radar2 setPosASL [17104.4,26231.9,44.0319];
radar2 setVectorDirAndUp [[-8.53194e-005,0.999968,-0.00799851], [0.010666,0.00799896,0.999911]];

//Motor
engine1 = "Sign_Sphere10cm_F" createVehicleLocal ['Sign_Sphere10cm_F', [17097.9,26243.4,1.07026], [], 0, 'CAN_COLLIDE'];
engine1 setPosASL [17097.9,26243.4,1.07026];
engine1 setVectorDirAndUp [[-9.59916e-005,0.999968,-0.00799827], [0.0120003,0.00799884,0.999896]]; 

engine2 = "Sign_Sphere10cm_F" createVehicleLocal ['Sign_Sphere10cm_F', [17099.3,26247.7,-40.691], [], 0, 'CAN_COLLIDE'];
engine2 setPosASL [17099.3,26247.7,-48.691];
engine2 setVectorDirAndUp [[-8.53194e-005,0.999968,-0.00799851], [0.010666,0.00799896,0.999911]];