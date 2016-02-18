//null = [this] execVM "equipment\restricted_arsenal.sqf";

//if !(isServer) exitWith{};

//waitUntil {player == player};

private ["_additionalItems","_additionalBackpacks", "_additionalHeadgear", "_additionalGoogles", "_additionalUniforms", "_additionalVests", "_additionalMagazines", "_additionalWeapons"];

//Init stuff
_crate = _this select 0;

//["AmmoboxInit",[_crate,false,{(player distance2D arsenalposition < 9)}]] spawn BIS_fnc_arsenal;
["AmmoboxInit",[_crate,false,{true}]] spawn BIS_fnc_arsenal;

//ALLGEMEINE ITEMS, FÜR ALLE EINHEITEN
_availableHeadgear = [
"ARC_GER_Flecktarn_Helmet",
"ARC_GER_Flecktarn_Helmet_Light",
"ARC_GER_Flecktarn_Helmet_simple",
"ARC_GER_Flecktarn_Mich"
];

_availableGoggles = [
"G_Balaclava_oli",
"G_Balaclava_blk"
];

_availableItems = [
"ItemMap",
"ItemGPS",
"tf_anprc152",
"ItemCompass",
"ItemWatch",
"FHQ_optic_AC11704",
"FHQ_optic_MicroCCO",
"FHQ_optic_AC12136",
"FHQ_optic_AIM",
"FHQ_optic_AimM_BLK",
"FHQ_optic_HWS_G33",
"FHQ_optic_HWS",
"SMA_SFFL_BLK",
"FHQ_acc_LLM01F",
"Binocular",
"ACE_fieldDressing",
"ACE_morphine",
"ACE_epinephrine",	
"ACE_CableTie",
"ACE_EarPlugs"
];

_availableUniforms = [
"ARC_GER_Flecktarn_Uniform",
"ARC_GER_Flecktarn_Uniform_Light",
"ARC_GER_Flecktarn_Uniform_vest",
"GER_Flecktarn_Pullover"
];

_availableVests = [
"ARC_GER_Flecktarn_PlateCarrier_1",
"ARC_GER_Flecktarn_PlateCarrier_2"
];

_availableBackpacks = [
"B_Parachute"
];

_availableMagazines = [
"HandGrenade",
"SmokeShellYellow",
"SmokeShellRed",
"SmokeShellGreen",
"SmokeShellPurple",
"SmokeShellBlue",
"ACE_M84",
"SmokeShellOrange",
"SmokeShell",
"Chemlight_green",
"Chemlight_red",
"rhsusf_mag_17Rnd_9x19_JHP",
"16Rnd_9x21_Mag",
"30Rnd_556x45_Stanag_Tracer_Red",
"30Rnd_556x45_Stanag"
];

_availableWeapons = [
"rhsusf_weap_glock17g4",
"Pstl9x19_P99",
"Auto556x45_G36C",
"Auto556x45_G36KV"
];





//SPEZIALEQUIPMENT ====================================================================

_schuetze = 
{
	_additionalItems = [
	"rhsusf_acc_nt4_black",
	"muzzle_snds_M"
	];


	_additionalBackpacks = [
	
	];
	
	_additionalHeadgear = [
	
	];
	
	_additionalGoogles = [
	
	];
	
	_additionalUniforms = [
	
	];
	
	_additionalVests = [
	
	];
	
	_additionalMagazines = [
	
	];
	
	_additionalWeapons = [
	
	];
};

_schuetzeat =
{
	_additionalItems = [
	"rhsusf_acc_nt4_black",
	"muzzle_snds_M"
	];

	_additionalBackpacks = [
	
	];
	
	_additionalHeadgear = [
	
	];
	
	_additionalGoogles = [
	
	];
	
	_additionalUniforms = [
	
	];
	
	_additionalVests = [
	
	];
	
	_additionalMagazines = [
	
	];
	
	_additionalWeapons = [
	
	];
};

_schuetzemg =
{
	_additionalItems = [

	];

	_additionalBackpacks = [
	
	];
	
	_additionalHeadgear = [
	
	];
	
	_additionalGoogles = [
	
	];
	
	_additionalUniforms = [
	
	];
	
	_additionalVests = [
	
	];
	
	_additionalMagazines = [
	"200Rnd_556x45_Box"
	];
	
	_additionalWeapons = [
	"Auto556x45_Minimi_A"
	];
};

_grenadier =
{
	_additionalItems = [
	"rhsusf_acc_nt4_black",
	"muzzle_snds_M"
	];

	_additionalBackpacks = [
	
	];
	
	_additionalHeadgear = [
	
	];
	
	_additionalGoogles = [
	
	];
	
	_additionalUniforms = [
	
	];
	
	_additionalVests = [
	
	];
	
	_additionalMagazines = [
	"1Rnd_HE_Grenade_shell",
	"1Rnd_Smoke_Grenade_shell",
	"1Rnd_SmokeRed_Grenade_shell",
	"1Rnd_SmokeGreen_Grenade_shell",
	"1Rnd_SmokeYellow_Grenade_shell",
	"1Rnd_SmokePurple_Grenade_shell",
	"1Rnd_SmokeBlue_Grenade_shell",
	"1Rnd_SmokeOrange_Grenade_shell"
	];
	
	_additionalWeapons = [
	"Auto556x45_G36KV_GL"
	];
};

_sprengmeister =
{
	_additionalItems = [
	"ACE_wirecutter",
	"rhsusf_acc_nt4_black",
	"muzzle_snds_M"
	];

	_additionalBackpacks = [
	
	];
	
	_additionalHeadgear = [
	
	];
	
	_additionalGoogles = [
	
	];
	
	_additionalUniforms = [
	
	];
	
	_additionalVests = [
	
	];
	
	_additionalMagazines = [
	"ATMine_Range_Mag",
	"APERSMine_Range_Mag",
	"APERSTripMine_Wire_Mag",
	"ClaymoreDirectionalMine_Remote_Mag",
	"DemoCharge_Remote_Mag",
	"rhs_mine_M19_mag"
	];
	
	_additionalWeapons = [
	
	];
};

_sanitaeter =
{
	_additionalItems = [
	"rhsusf_acc_nt4_black",
	"muzzle_snds_M",
	"ACE_bloodIV",
	"ACE_bloodIV_500",
	"ACE_bloodIV_250",
	"ACE_bodyBag"
	];

	_additionalBackpacks = [
	
	];
	
	_additionalHeadgear = [
	"ARC_Common_OD_M_Helmet_Light"
	
	];
	
	_additionalGoogles = [
	
	];
	
	_additionalUniforms = [
	
	];
	
	_additionalVests = [
	
	];
	
	_additionalMagazines = [
	
	];
	
	_additionalWeapons = [
	
	];
};

_gruppenscharfschuetze =
{
	_additionalItems = [
	"ACE_Vector",
	"ACE_Yardage450",
	"ACE_Kestrel4500",
	"ACE_RangeCard",
	"ACE_ATragMX",
	"SMA_supp_762",
	"bipod_01_F_blk",
	"FHQ_optic_ACOG",
	"optic_MRCO",
	"optic_Hamr",
	"optic_DMS",
	"rhsusf_acc_ACOG"
	];

	_additionalBackpacks = [
	
	];
	
	_additionalHeadgear = [
	"ARC_GER_Flecktarn_booniehat"
	];
	
	_additionalGoogles = [
	
	];
	
	_additionalUniforms = [
	
	];
	
	_additionalVests = [
	
	];
	
	_additionalMagazines = [
	"SMA_20Rnd_762x51mm_M80A1_EPR",
	"SMA_20Rnd_762x51mm_M80A1_EPR_Tracer"
	];
	
	_additionalWeapons = [
	"SMA_HK417_16in_afg"
	];
};

_panzerabwehrschuetze =
{
	_additionalItems = [
	"rhsusf_acc_nt4_black",
	"muzzle_snds_M"
	];

	_additionalBackpacks = [
	
	];
	
	_additionalHeadgear = [
	
	];
	
	_additionalGoogles = [
	
	];
	
	_additionalUniforms = [
	
	];
	
	_additionalVests = [
	
	];
	
	_additionalMagazines = [
	
	];
	
	_additionalWeapons = [
	
	];
};

_luftabwehrschuetze =
{
	_additionalItems = [
	"rhsusf_acc_nt4_black",
	"muzzle_snds_M"
	];

	_additionalBackpacks = [
	
	];
	
	_additionalHeadgear = [
	
	];
	
	_additionalGoogles = [
	
	];
	
	_additionalUniforms = [
	
	];
	
	_additionalVests = [
	
	];
	
	_additionalMagazines = [
	
	];
	
	_additionalWeapons = [
	
	];
};

_mechaniker =
{
	_additionalItems = [
	"rhsusf_acc_nt4_black",
	"muzzle_snds_M",
	"ACE_wirecutter",
	"ACE_CableTie"
	];

	_additionalBackpacks = [
	
	];
	
	_additionalHeadgear = [
	
	];
	
	_additionalGoogles = [
	
	];
	
	_additionalUniforms = [
	
	];
	
	_additionalVests = [
	
	];
	
	_additionalMagazines = [
	
	];
	
	_additionalWeapons = [
	
	];
};

_zugfuehrer =
{
	_additionalItems = [
	"rhsusf_acc_nt4_black",
	"muzzle_snds_M",
	"ACE_Banana"
	];

	_additionalBackpacks = [
	
	];
	
	_additionalHeadgear = [
	"ARC_GER_Flecktarn_Milcap"
	];
	
	_additionalGoogles = [
	"G_Tactical_Clear"
	];
	
	_additionalUniforms = [
	"GER_Flecktarn_Officer_Uniform"
	];
	
	_additionalVests = [
	
	];
	
	_additionalMagazines = [
	
	];
	
	_additionalWeapons = [
	
	];
};

_empty =
{
	_additionalItems = [

	];
	
	_additionalBackpacks = [
	
	];
	
	_additionalHeadgear = [
	
	];
	
	_additionalGoogles = [
	
	];
	
	_additionalUniforms = [
	
	];
	
	_additionalVests = [
	
	];
	
	_additionalMagazines = [
	
	];
	
	_additionalWeapons = [
	
	];
};

//ZUSÄTZLICHES EQUIP AUFRUFEN
switch (roleDescription player) do
{
	case "Schütze" : {call _schuetze};
	case "Schütze AT" : {call _schuetzeat};
	case "Schütze MG" : {call _schuetzemg};
	case "Grenadier" : {call _grenadier};
	case "Sprengmeister" : {call _sprengmeister};
	case "Sanitäter" : {call _sanitaeter};
	case "Gruppenscharfschütze" : {call _gruppenscharfschuetze};
	case "Panzerabwehrschütze" : {call _panzerabwehrschuetze};
	case "Luftabwehrschütze" : {call _luftabwehrschuetze};
	case "Mechaniker" : {call _mechaniker};
	case "Gruppenführer" : {call _zugfuehrer};
	default {call _empty};
};


//EQUIP ZUM ARSENAL HINZUFÜGEN
[_crate,(_availableBackpacks + _additionalBackpacks)] call BIS_fnc_addVirtualBackpackCargo;
[_crate,(_availableItems + _availableHeadgear + _availableGoggles + _availableUniforms + _availableVests + _additionalItems + _additionalHeadgear + _additionalGoogles + _additionalUniforms + _additionalVests)] call BIS_fnc_addVirtualItemCargo;
[_crate,(_availableMagazines + _additionalMagazines)] call BIS_fnc_addVirtualMagazineCargo;
[_crate,(_availableWeapons + _additionalWeapons)] call BIS_fnc_addVirtualWeaponCargo;