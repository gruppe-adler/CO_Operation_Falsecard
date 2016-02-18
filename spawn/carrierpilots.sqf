carrierpilots = [];
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

//PILOTS==============================================================================================

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
pilot3 setFormDir 175.865;
pilot3 setPosASL [17078.9,26220,17.1937];

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
pilot4 setFormDir 127.301;
pilot4 setDir 110.301;
pilot4 setPosASL [17076.5,26219.9,17.1937];

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


sleep 3;
pilot3 setDir 175.865;

