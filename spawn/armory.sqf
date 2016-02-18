WEAPONHOLDER = [];
armoryitems = 
[
	//Waffen
	["Auto556x45_G36KV", 0.5, 0.74, 18, 90, 90],
	["Auto556x45_G36KV_GL", 1.8, 0.74, 18, 90, 90],
	["SMA_HK417_16in_afg", 3.1, 0.74, 18, 90, 90],
	
	["Auto556x45_Minimi_A", 3, 0.9, 17.165, 90, 105],
	
	["Pstl9x19_P99", 0.2, 0.76, 17.5, 90, 90],
	["rhsusf_weap_glock17g4", 0.7, 0.76, 17.5, 90, 90],
	
	["rhs_weap_M136", 1, 0.79, 18.8, 90, 90],
	["rhs_weap_fim92", 2.8, 0.76, 18.8, 90, 90],
	
	//Helme
	["ARC_GER_Flecktarn_booniehat", -1, -0.57, 17.8, 180, 0],
	["ARC_GER_Flecktarn_Milcap", -1, -0.57, 18.2, 180, 0],
	
	["ARC_GER_Flecktarn_Helmet", -0.1, -0.25, 16.45, -90, 90],
	["ARC_GER_Flecktarn_Helmet_Light", 0.2, -0.25, 16.45, -90, 90],
	
	//Items
	["rhsusf_ANPVS_15", 0.9, 1.1, 16.34, 90, 90],
	["tf_anprc152_2", 4, 0.75, 17.7, 90, 90],
	["tf_anprc152_2", 4.3, 0.75, 17.7, 90, 90],
	["Binocular", 1.5, 0.95, 17.13, 60, 90]
];

_poswall = getPosASL wall1;
_dirwall = getDir wall1;
_counter = 0;

{
	_weapon = _x select 0;
	_xpos = _x select 1;
	_ypos = _x select 2;
	_zpos = _x select 3;
	_dir = _x select 4;
	_pitch = _x select 5;
	
	
	_whname = format ["wh_%1",_counter];
	_whname = "Library_WEAPONHOLDER" createVehicle _poswall;
	_whname addWeaponCargoGlobal [_weapon,1];
	_whname setDir (_dirwall+_dir);
	_whname setPosASL [(_poswall select 0)+_xpos,(_poswall select 1)-_ypos, _zpos];
	[_whname, _pitch, 90] call BIS_fnc_setPitchBank;

	[_whname] execVM "equipment\restricted_arsenal.sqf";
	
	WEAPONHOLDER set [(count WEAPONHOLDER), _whname];
	
	_counter = _counter + 1;
} forEach armoryitems;

publicVariable "WEAPONHOLDER";



