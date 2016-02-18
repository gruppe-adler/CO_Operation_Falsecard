_loopMoveForever = 
{
	_unit = _this select 0;
	_anim = _this select 1;
	_length = _this select 2;
	_sleep = _this select 3;
	_type = 1;

	[[_unit,_anim,_length,_sleep, _type], "client\animations.sqf"] remoteExec ["bis_fnc_execVM", 0, true]; 
};

_loopMove = 
{
	_unit = _this select 0;
	_anim = _this select 1;
	_length = _this select 2;
	_sleep = _this select 3;
	_type = 0;

	[[_unit,_anim,_length,_sleep, _type], "client\animations.sqf"] remoteExec ["bis_fnc_execVM", 0, true]; 
};

//VEHICLES===============================================================================================================

a10_1 = createVehicle ['RHS_A10', [15152.7,16707.8,-0.112898], [], 0, 'CAN_COLLIDE'];
a10_1 allowDamage false;
a10_1 setPosASL [17106,26203,17.3];
a10_1 setVectorDirAndUp [[-1.8,1,-0.0238101], [0.000788196,0.0238102,0.999716]];
a10_2 = createVehicle ['RHS_A10', [15152.7,16707.8,-0.112898], [], 0, 'CAN_COLLIDE'];
a10_2 allowDamage false;
a10_2 setPosASL [17106,26187,17.3];
a10_2 setVectorDirAndUp [[-1.8,1,-0.0238101], [0.000788196,0.0238102,0.999716]];
a10_3 = createVehicle ['RHS_A10', [15152.7,16707.8,-0.112898], [], 0, 'CAN_COLLIDE'];
a10_3 allowDamage false;
a10_3 setPosASL [17106,26148,17.3];
a10_3 setVectorDirAndUp [[-1.8,1,-0.0238101], [0.000788196,0.0238102,0.999716]];
ah_1 = createVehicle ['RHS_AH1Z', [15167.8,16723.7,-0.00353241], [], 0, 'CAN_COLLIDE'];
ah_1 allowDamage false;
ah_1 setPosASL [17106,26308,17.3];
ah_1 setVectorDirAndUp [[-1.8,1,-1.18165e-005], [-1.52368e-005,1.36791e-005,1]];
ah_2 = createVehicle ['RHS_AH1Z', [15167.8,16723.7,-0.00353241], [], 0, 'CAN_COLLIDE'];
ah_2 allowDamage false;
ah_2 setPosASL [17106,26319,17.3];
ah_2 setVectorDirAndUp [[-1.8,1,-1.18165e-005], [-1.52368e-005,1.36791e-005,1]];
ah_3 = createVehicle ['RHS_AH1Z', [15167.8,16723.7,-0.00353241], [], 0, 'CAN_COLLIDE'];
ah_3 allowDamage false;
ah_3 setPosASL [17106,26330,17.3];
ah_3 setVectorDirAndUp [[-1.8,1,-1.18165e-005], [-1.52368e-005,1.36791e-005,1]];
uh_1 = createVehicle ['RHS_UH1Y_UNARMED_d', [15179.7,16734,-0.00497055], [], 0, 'CAN_COLLIDE'];
uh_1 allowDamage false;
uh_1 setPosASL [17106,26375,17.4];
uh_1 setVectorDirAndUp [[-1,0,4.04163e-005], [-2.56946e-005,-3.80825e-005,1]];
uh_2 = createVehicle ['RHS_UH1Y_UNARMED_d', [15179.7,16734,-0.00497055], [], 0, 'CAN_COLLIDE'];
uh_2 allowDamage false;
uh_2 setPosASL [17106,26360,17.3];
uh_2 setVectorDirAndUp [[-1,0,4.04163e-005], [-2.56946e-005,-3.80825e-005,1]];

//uh_3 = createVehicle ['RHS_UH1Y_UNARMED_d', [12073.5,26214.5,17.2673], [], 0, 'CAN_COLLIDE'];
//uh_3 allowDamage false;
uh_3 setPosASL [17073.5,26214.5,17.2673];
uh_3 setVectorDirAndUp [[1,0,4.04163e-005], [-2.56946e-005,-3.80825e-005,1]];

//ch_1 = createVehicle ['RHS_CH_47F', [15129.7,16694,0.077425], [], 0, 'CAN_COLLIDE'];
//ch_1 allowDamage false;
ch_1 setPosASL [17086,26300,17.3];
ch_1 setVectorDirAndUp [[0.15,1,0.0255042], [-1.41444e-005,-0.0255042,0.999675]];

carriervehicles = [a10_1,a10_2,a10_3,ah_1,ah_2,ah_3,uh_1,uh_2];



//UNITS=================================================================================================================
carrierunits = [];

//WORKERS===============================================================================================
_newGroup = createGroup west;
_newUnit = _newGroup createUnit ['b_survivor_F', [17101.6,26308.7,0.00143814], [], 0, 'CAN_COLLIDE'];
_newUnit setSkill 0.5;
_newUnit setRank 'PRIVATE';
_newUnit setFormDir 43.3201;
_newUnit setDir 43.3201;
_newUnit setPosASL [17101.6,26308.7,17.1938];
_newGroup setFormation 'WEDGE';
_newGroup setCombatMode 'YELLOW';
_newGroup setBehaviour 'AWARE';
_newGroup setSpeedMode 'NORMAL';
_newGroup = createGroup west;

[_newUnit, "Acts_carFixingWheel", 20, 0] spawn _loopMoveForever;
carrierunits set [(count carrierunits), _newUnit];

comment "Exported from Arsenal by McDiod";

comment "Remove existing items";
removeAllWeapons _newUnit;
removeAllItems _newUnit;
removeAllAssignedItems _newUnit;
removeUniform _newUnit;
removeVest _newUnit;
removeBackpack _newUnit;
removeHeadgear _newUnit;
removeGoggles _newUnit;

comment "Add containers";
_newUnit forceAddUniform "rhs_uniform_df15";
_newUnit addHeadgear "ARC_CapHeadPhone_Blk";

comment "Add weapons";

comment "Add items";
_newUnit linkItem "ItemMap";
_newUnit linkItem "ItemCompass";
_newUnit linkItem "tf_microdagr";
_newUnit linkItem "tf_anprc152_1";

_newUnit = _newGroup createUnit ['b_survivor_F', [17101.1,26322.4,0.00143814], [], 0, 'CAN_COLLIDE'];
_newUnit setSkill 0.5;
_newUnit setRank 'PRIVATE';
_newUnit setFormDir 147.553;
_newUnit setDir 147.553;
_newUnit setPosASL [17101.1,26322.4,17.1938];
_newGroup setFormation 'WEDGE';
_newGroup setCombatMode 'YELLOW';
_newGroup setBehaviour 'AWARE';
_newGroup setSpeedMode 'NORMAL';
_newGroup = createGroup west;

[_newUnit, "Acts_carFixingWheel", 20, 5] spawn _loopMoveForever;
carrierunits set [(count carrierunits), _newUnit];

comment "Exported from Arsenal by McDiod";

comment "Remove existing items";
removeAllWeapons _newUnit;
removeAllItems _newUnit;
removeAllAssignedItems _newUnit;
removeUniform _newUnit;
removeVest _newUnit;
removeBackpack _newUnit;
removeHeadgear _newUnit;
removeGoggles _newUnit;

comment "Add containers";
_newUnit forceAddUniform "U_C_WorkerCoveralls";
_newUnit addHeadgear "ARC_CapHeadPhone_Blk";

comment "Add weapons";

comment "Add items";
_newUnit linkItem "ItemMap";
_newUnit linkItem "ItemCompass";
_newUnit linkItem "tf_microdagr";
_newUnit linkItem "tf_anprc152_1";


_newUnit = _newGroup createUnit ['b_survivor_F', [17105.9,26306.6,0.00143814], [], 0, 'CAN_COLLIDE'];
_newUnit setSkill 0.5;
_newUnit setRank 'PRIVATE';
_newUnit setFormDir 0;
_newUnit setDir 0;
_newUnit setPosASL [17105.9,26306.6,17.1938];
_newGroup setFormation 'WEDGE';
_newGroup setCombatMode 'YELLOW';
_newGroup setBehaviour 'AWARE';
_newGroup setSpeedMode 'NORMAL';
_newGroup = createGroup west;

[_newUnit, "Acts_carFixingWheel", 20, 10] spawn _loopMoveForever;
carrierunits set [(count carrierunits), _newUnit];

comment "Exported from Arsenal by McDiod";

comment "Remove existing items";
removeAllWeapons _newUnit;
removeAllItems _newUnit;
removeAllAssignedItems _newUnit;
removeUniform _newUnit;
removeVest _newUnit;
removeBackpack _newUnit;
removeHeadgear _newUnit;
removeGoggles _newUnit;

comment "Add containers";
_newUnit forceAddUniform "rhs_uniform_df15";
_newUnit addHeadgear "ARC_CapHeadPhone_Blk";

comment "Add weapons";

comment "Add items";
_newUnit linkItem "ItemMap";
_newUnit linkItem "ItemCompass";
_newUnit linkItem "tf_microdagr";
_newUnit linkItem "tf_anprc152_1";


_newUnit = _newGroup createUnit ['b_survivor_F', [17100.5,26189.5,0.00143814], [], 0, 'CAN_COLLIDE'];
_newUnit setSkill 0.5;
_newUnit setRank 'PRIVATE';
_newUnit setFormDir 85.0948;
_newUnit setDir 85.0948;
_newUnit setPosASL [17100.9,26189.5,17.1938];
_newGroup setFormation 'WEDGE';
_newGroup setCombatMode 'YELLOW';
_newGroup setBehaviour 'AWARE';
_newGroup setSpeedMode 'NORMAL';

[_newUnit, "Acts_carFixingWheel", 20, 8] spawn _loopMoveForever;
carrierunits set [(count carrierunits), _newUnit];

comment "Exported from Arsenal by McDiod";

comment "Remove existing items";
removeAllWeapons _newUnit;
removeAllItems _newUnit;
removeAllAssignedItems _newUnit;
removeUniform _newUnit;
removeVest _newUnit;
removeBackpack _newUnit;
removeHeadgear _newUnit;
removeGoggles _newUnit;

comment "Add containers";
_newUnit forceAddUniform "U_C_WorkerCoveralls";
_newUnit addHeadgear "H_Hat_Headphones";

comment "Add weapons";

comment "Add items";
_newUnit linkItem "ItemMap";
_newUnit linkItem "ItemCompass";
_newUnit linkItem "tf_microdagr";
_newUnit linkItem "tf_anprc152_1";


//AUFBAU======================================================================================================================

_newGroup = createGroup west;
_newUnit = _newGroup createUnit ['b_survivor_F', [17098.1,26253.5,0.00143814], [], 0, 'CAN_COLLIDE'];
_newUnit setSkill 0.5;
_newUnit setRank 'PRIVATE';
_newUnit setFormDir 264.964;
_newUnit setDir 264.964;
_newUnit setPosASL [17098.1,26253.5,28.716];
_newGroup setFormation 'WEDGE';
_newGroup setCombatMode 'YELLOW';
_newGroup setBehaviour 'AWARE';
_newGroup setSpeedMode 'NORMAL';
_newGroup = createGroup west;

[_newUnit, "Acts_Kore_IdleNoWeapon_loop", 7.468, 0] spawn _loopMoveForever;
carrierunits set [(count carrierunits), _newUnit];

comment "Exported from Arsenal by McDiod";

comment "Remove existing items";
removeAllWeapons _newUnit;
removeAllItems _newUnit;
removeAllAssignedItems _newUnit;
removeUniform _newUnit;
removeVest _newUnit;
removeBackpack _newUnit;
removeHeadgear _newUnit;
removeGoggles _newUnit;

comment "Add containers";
_newUnit forceAddUniform "rhs_uniform_FROG01_m81";
_newUnit addHeadgear "H_Beret_Colonel";
_newUnit addGoggles "G_Aviator";

comment "Add weapons";

comment "Add items";
_newUnit linkItem "ItemMap";
_newUnit linkItem "ItemCompass";
_newUnit linkItem "tf_microdagr";
_newUnit linkItem "tf_anprc152_1";


_newUnit = _newGroup createUnit ['b_survivor_F', [17098.3,26240,0.00143814], [], 0, 'CAN_COLLIDE'];
_newUnit setSkill 0.5;
_newUnit setRank 'PRIVATE';
_newUnit setFormDir 185.047;
_newUnit setDir 185.047;
_newUnit setPosASL [17098.3,26240.2,26.0673];
_newGroup setFormation 'WEDGE';
_newGroup setCombatMode 'YELLOW';
_newGroup setBehaviour 'AWARE';
_newGroup setSpeedMode 'NORMAL';
_newGroup = createGroup west;

_newUnit disableAI "MOVE";
carrierunits set [(count carrierunits), _newUnit];

comment "Exported from Arsenal by McDiod";

comment "Remove existing items";
removeAllWeapons _newUnit;
removeAllItems _newUnit;
removeAllAssignedItems _newUnit;
removeUniform _newUnit;
removeVest _newUnit;
removeBackpack _newUnit;
removeHeadgear _newUnit;
removeGoggles _newUnit;

comment "Add containers";
_newUnit forceAddUniform "rhs_uniform_FROG01_m81";
_newUnit addHeadgear "H_Cap_headphones";

comment "Add weapons";

comment "Add items";
_newUnit linkItem "ItemMap";
_newUnit linkItem "ItemCompass";
_newUnit linkItem "tf_microdagr";
_newUnit linkItem "tf_anprc152_1";


_newUnit = _newGroup createUnit ['b_survivor_F', [17098.2,26238.9,0.00143814], [], 0, 'CAN_COLLIDE'];
_newUnit setSkill 0.5;
_newUnit setRank 'PRIVATE';
_newUnit setFormDir 0;
_newUnit setDir 0;
_newUnit setPosASL [17098.2,26238.9,26.0673];
_newGroup setFormation 'WEDGE';
_newGroup setCombatMode 'YELLOW';
_newGroup setBehaviour 'AWARE';
_newGroup setSpeedMode 'NORMAL';

[_newUnit, "Acts_Kore_TalkingOverRadio_loop", 7.468, 0] spawn _loopMoveForever;
carrierunits set [(count carrierunits), _newUnit];

comment "Exported from Arsenal by McDiod";

comment "Remove existing items";
removeAllWeapons _newUnit;
removeAllItems _newUnit;
removeAllAssignedItems _newUnit;
removeUniform _newUnit;
removeVest _newUnit;
removeBackpack _newUnit;
removeHeadgear _newUnit;
removeGoggles _newUnit;

comment "Add containers";
_newUnit forceAddUniform "rhs_uniform_FROG01_m81";
_newUnit addHeadgear "H_Hat_Headphones";
_newUnit addGoggles "rhs_googles_black";

comment "Add weapons";

comment "Add items";
_newUnit linkItem "ItemMap";
_newUnit linkItem "ItemCompass";
_newUnit linkItem "tf_microdagr";
_newUnit linkItem "tf_anprc152_1";



//LIFT====================================================================================================================
/*
_newGroup = createGroup west;
deckofficer = _newGroup createUnit ['rhsusf_usmc_marpat_wd_helipilot', [17079.3,26216.9,0.00143623], [], 0, 'CAN_COLLIDE'];
deckofficer setSkill 0.5;
deckofficer setRank 'PRIVATE';

_newGroup setFormation 'WEDGE';
_newGroup setCombatMode 'YELLOW';
_newGroup setBehaviour 'COMBAT';
_newGroup setSpeedMode 'NORMAL';
*/
//Einheit auf Map gesetzt

deckofficer setFormDir 327.595;
deckofficer setDir 335.595;
deckofficer setPosASL [17079.3,26217.9,17.1937];

[deckofficer, "Acts_C_in1_briefing", 77, 0] spawn _loopMove;
carrierunits set [(count carrierunits), deckofficer];

comment "Exported from Arsenal by McDiod";

comment "Remove existing items";
removeAllWeapons deckofficer;
removeAllItems deckofficer;
removeAllAssignedItems deckofficer;
removeUniform deckofficer;
removeVest deckofficer;
removeBackpack deckofficer;
removeHeadgear deckofficer;
removeGoggles deckofficer;

comment "Add containers";
deckofficer forceAddUniform "ARC_Common_OD_TAN_Uniform";
deckofficer addHeadgear "rhsusf_cvc_green_ess";

comment "Add weapons";

comment "Add items";
deckofficer linkItem "ItemMap";
deckofficer linkItem "ItemCompass";
deckofficer linkItem "tf_microdagr";
deckofficer linkItem "tf_anprc152_1";

//DECK===================================================================================================================
_newGroup = createGroup west;
guard1 = _newGroup createUnit ['b_soldier_universal_f', [17096.8,26251.9,0.00144005], [], 0, 'CAN_COLLIDE'];
guard1 setSkill 0.5;
guard1 setRank 'PRIVATE';
guard1 setFormDir 256.433;
guard1 setDir 256.433;
guard1 setPosASL [17096.8,26251.9,17.1938];
_newGroup setFormation 'WEDGE';
_newGroup setCombatMode 'YELLOW';
_newGroup setBehaviour 'AWARE';
_newGroup setSpeedMode 'NORMAL';

guard1 disableAI "MOVE";
carrierunits set [(count carrierunits), guard1];

comment "Exported from Arsenal by McDiod";

comment "Remove existing items";
removeAllWeapons guard1;
removeAllItems guard1;
removeAllAssignedItems guard1;
removeUniform guard1;
removeVest guard1;
removeBackpack guard1;
removeHeadgear guard1;
removeGoggles guard1;

comment "Add containers";
guard1 forceAddUniform "rhs_uniform_FROG01_m81";
for "_i" from 1 to 3 do {guard1 addItemToUniform "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
guard1 addVest "V_BandollierB_oli";
guard1 addHeadgear "H_Hat_Headphones";
guard1 addGoggles "rhs_googles_black";

comment "Add weapons";
guard1 addWeapon "rhs_weap_m16a4_carryhandle";

comment "Add items";
guard1 linkItem "ItemMap";
guard1 linkItem "ItemCompass";
guard1 linkItem "tf_microdagr";
guard1 linkItem "tf_anprc152_1";


_newGroup = createGroup west;
_newUnit = _newGroup createUnit ['b_soldier_universal_f', [17108.9,26240.6,0.00144005], [], 0, 'CAN_COLLIDE'];
_newUnit setSkill 0.5;
_newUnit setRank 'PRIVATE';
_newUnit setFormDir 54.3986;
_newUnit setDir 54.3986;
_newUnit setPosASL [17108.9,26240.6,17.1938];
_newGroup setFormation 'WEDGE';
_newGroup setCombatMode 'YELLOW';
_newGroup setBehaviour 'AWARE';
_newGroup setSpeedMode 'NORMAL';

_newUnit disableAI "MOVE";
carrierunits set [(count carrierunits), _newUnit];

comment "Exported from Arsenal by McDiod";

comment "Remove existing items";
removeAllWeapons _newUnit;
removeAllItems _newUnit;
removeAllAssignedItems _newUnit;
removeUniform _newUnit;
removeVest _newUnit;
removeBackpack _newUnit;
removeHeadgear _newUnit;
removeGoggles _newUnit;

comment "Add containers";
_newUnit forceAddUniform "rhs_uniform_FROG01_m81";
for "_i" from 1 to 3 do {_newUnit addItemToUniform "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
_newUnit addVest "V_BandollierB_oli";
_newUnit addHeadgear "ARC_CapHeadPhone_Blk";
_newUnit addGoggles "rhs_googles_black";

comment "Add weapons";
_newUnit addWeapon "rhs_weap_m16a4_carryhandle";

comment "Add items";
_newUnit linkItem "ItemMap";
_newUnit linkItem "ItemCompass";
_newUnit linkItem "tf_microdagr";
_newUnit linkItem "tf_anprc152_1";


//OBJECTS========================================================================================
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



//PILOTS==============================================================================================
carrierpilots = [];

pilot1 disableAI "MOVE";
pilot1 setSkill 0.5;
pilot1 setRank 'PRIVATE';
// pilot1 setFormDir 271.88;
pilot1 setDir 271.88;
// pilot1 setPosASL [17107.3,26239.1,17.1938];

carrierpilots set [(count carrierpilots), pilot1];

comment "Exported from Arsenal by McDiod";
comment "Remove existing items";
removeAllWeapons pilot1;
removeAllItems pilot1;
removeAllAssignedItems pilot1;
removeUniform pilot1;
removeVest pilot1;
removeBackpack pilot1;
removeHeadgear pilot1;
removeGoggles pilot1;
comment "Add containers";
pilot1 forceAddUniform "U_I_pilotCoveralls";
for "_i" from 1 to 2 do {pilot1 addItemToUniform "ACE_fieldDressing";};
pilot1 addItemToUniform "ACE_morphine";
pilot1 addGoggles "G_Aviator";
comment "Add weapons";
comment "Add items";
pilot1 linkItem "ItemMap";
pilot1 linkItem "ItemCompass";
pilot1 linkItem "tf_microdagr";
pilot1 linkItem "ItemRadio";


pilot2 disableAI "MOVE";
pilot2 setSkill 0.5;
pilot2 setRank 'PRIVATE';
//pilot2 setFormDir 266.331;
pilot2 setDir 266.331;
//pilot2 setPosASL [17107.4,26237.9,17.1938];


carrierpilots set [(count carrierpilots), pilot2];
 
comment "Exported from Arsenal by McDiod";
comment "Remove existing items";
removeAllWeapons pilot2;
removeAllItems pilot2;
removeAllAssignedItems pilot2;
removeUniform pilot2;
removeVest pilot2;
removeBackpack pilot2;
removeHeadgear pilot2;
removeGoggles pilot2;
comment "Add containers";
pilot2 forceAddUniform "U_I_pilotCoveralls";
for "_i" from 1 to 2 do {pilot2 addItemToUniform "ACE_fieldDressing";};
pilot2 addItemToUniform "ACE_morphine";
pilot2 addHeadgear "H_Cap_blk";
comment "Add weapons";
comment "Add items";
pilot2 linkItem "ItemMap";
pilot2 linkItem "ItemCompass";
pilot2 linkItem "tf_microdagr";
pilot2 linkItem "ItemRadio";



pilot3 disableAI "MOVE";
pilot3 setSkill 0.5;
pilot3 setRank 'PRIVATE';
//pilot3 setFormDir 175.865;
//pilot3 setPosASL [17078.9,26220,17.1937];

carrierpilots set [(count carrierpilots), pilot3];

[pilot3, "Acts_Kore_IdleNoWeapon_loop", 7.468, 3] spawn _loopMove;

comment "Exported from Arsenal by McDiod";
comment "Remove existing items";
removeAllWeapons pilot3;
removeAllItems pilot3;
removeAllAssignedItems pilot3;
removeUniform pilot3;
removeVest pilot3;
removeBackpack pilot3;
removeHeadgear pilot3;
removeGoggles pilot3;
comment "Add containers";
pilot3 forceAddUniform "U_I_pilotCoveralls";
for "_i" from 1 to 2 do {pilot3 addItemToUniform "ACE_fieldDressing";};
pilot3 addItemToUniform "ACE_morphine";
pilot3 addHeadgear "H_PilotHelmetHeli_B";
pilot3 addGoggles "G_Aviator";
comment "Add weapons";
comment "Add items";
pilot3 linkItem "ItemMap";
pilot3 linkItem "ItemCompass";
pilot3 linkItem "tf_microdagr";
pilot3 linkItem "tf_anprc152_1";



pilot4 disableAI "MOVE";
pilot4 setSkill 0.5;
pilot4 setRank 'PRIVATE';
//pilot4 setFormDir 127.301;
//pilot4 setDir 110.301;
//pilot4 setPosASL [17076.5,26219.9,17.1937];

carrierpilots set [(count carrierpilots), pilot4];

[pilot4, "Acts_A_M03_briefing", 5, 0] spawn _loopMove;

comment "Exported from Arsenal by McDiod";
comment "Remove existing items";
removeAllWeapons pilot4;
removeAllItems pilot4;
removeAllAssignedItems pilot4;
removeUniform pilot4;
removeVest pilot4;
removeBackpack pilot4;
removeHeadgear pilot4;
removeGoggles pilot4;
comment "Add containers";
pilot4 forceAddUniform "U_I_pilotCoveralls";
for "_i" from 1 to 2 do {pilot4 addItemToUniform "ACE_fieldDressing";};
pilot4 addItemToUniform "ACE_morphine";
pilot4 addHeadgear "H_PilotHelmetHeli_B";
pilot4 addGoggles "G_Aviator";
comment "Add weapons";
comment "Add items";
pilot4 linkItem "ItemMap";
pilot4 linkItem "ItemCompass";
pilot4 linkItem "tf_microdagr";
pilot4 linkItem "tf_anprc152_1";
