_vehicle = _this select 0;
_engineState = _this select 1;

if (_engineState) then {
	ps = "#particlesource" createVehicleLocal getpos _vehicle;
	ps attachTo [_vehicle,[0.8,2.8,0.9]];
	ps setParticleCircle [0, [0, 0, 0]];
	ps setParticleRandom [0, [0.25, 0.25, 0], [0.2, 0.2, 0], 0, 0.25, [0, 0, 0, 0.1], 0, 0];
	//ps setParticleParams [["\Ca\Data\ParticleEffects\FireAndSmokeAnim\SmokeAnim.p3d", 8, 3, 1], "", "Billboard", 1, 8, [0, 0, 0], [0, 0, 1.5], 0, 10, 7.9, 0.066, [1, 3, 6], [[0.5, 0.5, 0.5, 0.15], [0.75, 0.75, 0.75, 0.075], [1, 1, 1, 0]], [0.125], 1, 0, "", "", _OBJ];
	ps setParticleParams 
	/*Sprite*/		[["\Ca\Data\ParticleEffects\FireAndSmokeAnim\SmokeAnim.p3d", 8, 3, 1],"",// File,Ntieth,Index,Count,Loop(Bool)
	/*Type*/			"Billboard",
	/*TimmerPer*/		1,
	/*Lifetime*/		4,
	/*Position*/		[0,0,0],
	/*MoveVelocity*/	[0,0,1.1],
	/*Simulation*/		0,10,7.9,0.066,//rotationVel,weight,volume,rubbing
	/*Scale*/			[1.5,1.5,3],
	/*Color*/			[[0.15, 0.15, 0.15, 0.35], [0.1, 0.1, 0.1, 0.45], [0.0, 0.0, 0.0, 0]],
	/*AnimSpeed*/		[0.125],
	/*randDirPeriod*/	1,
	/*randDirIntesity*/	0,
	/*onTimerScript*/	"",
	/*DestroyScript*/	"",
	/*Follow*/			[]];
	ps setDropInterval 0.05;
}
else
{
	deleteVehicle ps;
};



//default colors [[0.5, 0.5, 0.5, 0.15], [0.75, 0.75, 0.75, 0.075], [1, 1, 1, 0]],