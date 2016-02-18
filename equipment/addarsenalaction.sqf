[wall1] execVM "equipment\restricted_arsenal.sqf";
[wall2] execVM "equipment\restricted_arsenal.sqf";


waitUntil {!isNil "WEAPONHOLDER"};
{
	[_x] execVM "equipment\restricted_arsenal.sqf";
} forEach weaponholder;