if (!isServer) exitWith {};

_pos = _this select 0;

//Vehicle
"BW_Dingo_Wdl" createVehicle _pos;

//Units
_group0 = createGroup west;
_unit0 = _group0 createUnit ["rhsusf_army_ucp_squadleader",(_pos vectorAdd [2,0,0]),[],0,"FORM"];
_unit1 = _group0 createUnit ["rhsusf_army_ucp_squadleader",(_pos vectorAdd [2,1,0]),[],0,"FORM"];

sleep 0.5;

//Equipment
comment "Exported from Arsenal by McDiod";

comment "Remove existing items";
removeAllWeapons _unit0;
removeAllItems _unit0;
removeAllAssignedItems _unit0;
removeUniform _unit0;
removeVest _unit0;
removeBackpack _unit0;
removeHeadgear _unit0;
removeGoggles _unit0;
comment "Add containers";
_unit0 forceAddUniform "GER_Flecktarn_Officer_Uniform";
_unit0 addHeadgear "H_Beret_02";

sleep 0.5;

comment "Remove existing items";
removeAllWeapons _unit1;
removeAllItems _unit1;
removeAllAssignedItems _unit1;
removeUniform _unit1;
removeVest _unit1;
removeBackpack _unit1;
removeHeadgear _unit1;
removeGoggles _unit1;
comment "Add containers";
_unit1 forceAddUniform "GER_Flecktarn_Officer_Uniform";
_unit1 addHeadgear "H_Beret_02";

sleep 0.5;

//Add to Zeus
curatorModule1 addCuratorEditableObjects [[_unit0, _unit1], true];
curatorModule2 addCuratorEditableObjects [[_unit0, _unit1], true];