carrierunits = [];
/*
_loopMoveForever = 
{
	_unit = _this select 0;
	_anim = _this select 1;
	_length = _this select 2;
	_sleep = _this select 3;
	
	sleep _sleep;

	while {alive _unit} do 
	{
		_unit disableAI "ANIM";
		_unit switchMove _anim;
		sleep _length;
	};
};
*/

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



