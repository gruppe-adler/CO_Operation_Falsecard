call compile preprocessFileLineNumbers "plank\plank_init.sqf";
enableSentences false;
enableSaving [false, false];

ABGEFLOGEN = false;

//BAUMATERIAL
cnc_barrier = 2;	
sb_long = 4;
sb_short = 8;
sb_round = 4;
sb_bunker = 1;
tanktrap = 2;
hbarrier = 3;
pallet = 10;


//SERVER ONLY
if (isServer) then
{

	[] execVM "spawn\armory.sqf";
	//[] execVM "spawn\carrieralles.sqf";
	
	[] execVM "spawn\carriervehicles.sqf";
	[] execVM "spawn\carrierunits.sqf";
	[] execVM "spawn\carrierpilots.sqf";
	[] execVM "spawn\carrierobjects.sqf";
	

	//[] execVM "spawn\RUS_officer1.sqf";
	[] execVM "ai\shootingrange.sqf";
	[] execVM "helpers\medical_settings.sqf";
	[] execVM "spareparts\sparepartsinit.sqf";
	

	//Groups
	["Initialize"] call BIS_fnc_dynamicGroups;

	//TFAR
	if (isClass (configFile >> "CfgPatches" >> "task_force_radio")) then {
		[] execVM "tfarsettings.sqf";
	};
	
	targettruck setPosASL [9146.11,21649.4,14.8471];
	targettruck setVectorDirAndUp [[0.557907,-0.829903,-0.000642323], [0.00169829,0.000367713,0.999999]];
};


//PLAYERS + ZEUS
if (hasInterface) then
{
	if (!didJIP && (roleDescription player != "Zeus 1") && (roleDescription player != "Zeus 2")) then {
		0 cutText ["Nicht bewegen! Server lädt.", "BLACK FADED", 0, false];
	};
	
	[] execVM "client\usertextures.sqf";
	[] execVM "client\pilotactions.sqf";
	[] execVM "client\klbsactions.sqf";
	[] execVM "client\carrierambience.sqf";
	[] execVM "client\sprengmeisteractions.sqf";
	[] execVM "spawn\carrierlights.sqf";
	[] execVM "equipment\addarsenalaction.sqf";
	[] execVM "spareparts\sparepartsinit.sqf";
	
	//PLAYERS ONLY
	if ((roleDescription player != "Zeus 1") && (roleDescription player != "Zeus 2")) then {

		waitUntil {!isNull player};
		waitUntil {player == player};
		[player] execVM "equipment\baseloadout.sqf";

		//Groups
		["InitializePlayer", [player]] call BIS_fnc_dynamicGroups;

		if (!didJIP) then {
			//Intro
			[] execVM "helpers\intro.sqf";
		};
	}
	//ZEUS ONLY
	else
	{
		[] execVM "client\aresmodules.sqf";
	};

	//Add JIP to Zeus
	if (didJIP) then {
		[[player], "helpers\addjiptozeus.sqf"] remoteExec ["execVM",0,false];
	};

	//player allowDamage false;
};



//SPAWN UNITS
HC1Present = if (isNil "HC") then {False} else {True};

if (HC1Present && isMultiplayer) then {
	diag_log "Units spawning on HC";
	if (!isServer && !hasInterface) then {
		[] execVM "spawn\RUS_klbsunits.sqf";
		[] execVM "spawn\RUS_airfieldunits.sqf";
		[] execVM "spawn\RUS_surroundingunits.sqf";
	};
}
else {
	if (isServer) then {
		[] execVM "spawn\RUS_klbsunits.sqf";
		[] execVM "spawn\RUS_airfieldunits.sqf";
		[] execVM "spawn\RUS_surroundingunits.sqf";
		diag_log "HC not present - units spawned on server";
	};
};

	
