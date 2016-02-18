if !(isServer) exitWith {};

//Declare variables (else the switch function wont work)
_items = [];
_backpacks = [];
_weapons = [];
_magazines = [];

_container = (_this select 0);

_container setPosASL [17072.5,26218.5,17.1673];
_container setVectorDirAndUp [[0.000422494,1,-7.14671e-006], [-1.14335e-005,7.15154e-006,1]];

clearWeaponCargoGlobal _container;
clearItemCargoGlobal _container;
clearMagazineCargoGlobal _container;
clearBackpackCargoGlobal _container;

//=========LIST BOXES========================================


_items = [
	"ACE_fieldDressing", 100,
	"ACE_morphine", 80,
	"ACE_epinephrine", 40,	
	"ACE_EarPlugs", 20,
	"ACE_bloodIV_500", 20,
	"ACE_bloodIV_250", 30,
	"rhs_weap_optic_smaw", 1
];

_backpacks = [
	"ARC_GER_Backpack_compact_Flecktarn", 10,
	"ARC_GER_Backpack_Flecktarn", 10,
	"ARC_GER_Kitbag_compact_Flecktarn", 10,
	"tf_rt1523g_bwmod", 3,
	"ARC_GER_Backpack_Carryall_Flecktarn", 2
];

_weapons = [
	"rhs_weap_fim92", 1,
	"rhs_weap_smaw_green", 1,
	"rhs_weap_M136", 3
];

_magazines = [
//Rockets
	"rhs_fim92_mag", 6,
	"rhs_mag_smaw_HEAA", 10,
	"rhs_mag_smaw_HEDP", 2,
	"rhs_mag_smaw_SR", 6,

//Ammo
	"SMA_20Rnd_762x51mm_M80A1_EPR", 10,
	"SMA_20Rnd_762x51mm_M80A1_EPR_Tracer", 10,
	"30Rnd_556x45_Stanag_Tracer_Red", 100,
	"30Rnd_556x45_Stanag", 100,
	"HandGrenade", 20,

//Demo
	"ATMine_Range_Mag", 2,
	"APERSMine_Range_Mag", 4,
	"APERSTripMine_Wire_Mag", 4,
	"ClaymoreDirectionalMine_Remote_Mag", 6,
	"DemoCharge_Remote_Mag", 6,
	"rhs_mine_M19_mag", 4
];


//=========ADD ITEMS=========================================

//count -1 so that it can be used to select from array
_nitems = (count _items) -1; 
_nbackpacks = (count _backpacks) -1;
_nweapons = (count _weapons) -1;
_nmagazines = (count _magazines) -1;


//Add items
for [{_x = 0},{_x <= _nitems},{_x = _x + 2}] do {

	_amount = _items select (_x + 1);
	_additem = _items select _x;

	_container additemcargoglobal [_additem, _amount];
};

//Add backpacks
for [{_x = 0},{_x <= _nbackpacks},{_x = _x + 2}] do {

	_amount = _backpacks select (_x + 1);
	_additem = _backpacks select _x;

	_container addbackpackcargoglobal [_additem, _amount];
};

//Add weapons
for [{_x = 0},{_x <= _nweapons},{_x = _x + 2}] do {

	_amount = _weapons select (_x + 1);
	_additem = _weapons select _x;

	_container addweaponcargoglobal [_additem, _amount];
};

//Add magazines
for [{_x = 0},{_x <= _nmagazines},{_x = _x + 2}] do {

	_amount = _magazines select (_x + 1);
	_additem = _magazines select _x;

	_container addmagazinecargoglobal [_additem, _amount];
};

