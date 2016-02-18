//null = [this] execVM "equipment\baseloadout.sqf";
//if !(isServer) exitWith{};

_unit = _this select 0;

comment "Exported from Arsenal by Fridel Castro";

comment "Remove existing items";
removeAllWeapons _unit;
removeAllItems _unit;
removeAllAssignedItems _unit;
removeUniform _unit;
removeVest _unit;
removeBackpack _unit;
removeHeadgear _unit;
removeGoggles _unit;

comment "Add containers";
_unit forceAddUniform "ARC_GER_Flecktarn_Uniform_tshirt";
_unit addHeadgear "ARC_GER_Flecktarn_Helmet_simple";

comment "Add weapons";

comment "Add items";
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";