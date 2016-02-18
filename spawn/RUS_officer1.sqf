
removeAllWeapons officer1;
removeAllItems officer1;
removeAllAssignedItems officer1;
removeUniform officer1;
removeVest officer1;
removeBackpack officer1;
removeGoggles officer1;

officer1 forceAddUniform "rhs_uniform_flora_patchless";
for "_i" from 1 to 2 do {officer1 addItemToUniform "ACE_fieldDressing";};
officer1 addItemToUniform "ACE_morphine";
for "_i" from 1 to 2 do {officer1 addItemToUniform "rhs_30Rnd_545x39_AK";};
officer1 addItemToUniform "8Rnd_762x25_TT33";
officer1 addVest "rhs_6sh92_radio";
officer1 addItemToVest "SmokeShell";
officer1 addItemToVest "SmokeShellGreen";
for "_i" from 1 to 2 do {officer1 addItemToVest "Chemlight_green";};
officer1 addItemToVest "8Rnd_762x25_TT33";
for "_i" from 1 to 7 do {officer1 addItemToVest "rhs_30Rnd_545x39_AK";};

officer1 addWeapon "rhs_weap_ak74m_npz";
officer1 addWeapon "Pstl762x25_TT33";

officer1 linkItem "ItemMap";
officer1 linkItem "ItemCompass";
officer1 linkItem "tf_microdagr";
officer1 linkItem "tf_anprc152_1";

officer1 setFace "WhiteHead_17";
officer1 setSpeaker "RHS_Male01RUS";


_wp = group officer1 addWaypoint [[8549.58,20852.1,0.638878],0]; 
_wp setWaypointType "MOVE";
_wp setWaypointBehaviour "SAFE";
_wp setWaypointTimeout [30,40,50];

_wp = group officer1 addWaypoint [[8570.6,20907.4,1.02982],0]; 
_wp setWaypointType "MOVE";
_wp setWaypointBehaviour "SAFE";
_wp setWaypointTimeout [10,15,20];

_wp = group officer1 addWaypoint [[8548.25,20894.5,0.289871],0]; 
_wp setWaypointType "MOVE";
_wp setWaypointBehaviour "SAFE";
_wp setWaypointTimeout [10,15,20];

_wp = group officer1 addWaypoint [[8544.02,20854.7,0.000915527],0]; 
_wp setWaypointType "CYCLE";
_wp setWaypointBehaviour "SAFE";
