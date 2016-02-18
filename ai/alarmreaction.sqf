if !(isServer) exitWith {};

alarmed = true;

//BTR 1
[btr1crew2, btr1crew3] joinSilent btr1crew1;
[tankcrew2, tankcrew3] joinSilent tankcrew1;
[btr2crew2,btr2crew3,btr2crew4,btr2crew5] joinSilent btr2crew1;
[Inf2, Inf3] joinSilent Inf1;

//Airfield Patrouille
/*
_wp = group GrpL1 addWaypoint [[9160,21636,0],0];
_wp setWaypointType "GETIN NEAREST";
_wp setWaypointSpeed "NORMAL";

_wp = group GrpL1 addWaypoint [[9008,21428,0],0];
_wp setWaypointType "MOVE";
_wp setWaypointSpeed "NORMAL";

_wp = group GrpL1 addWaypoint [[9002,21306,0],0];
_wp setWaypointType "MOVE";
_wp setWaypointSpeed "NORMAL";

_wp = group GrpL1 addWaypoint [[8523,20995,0],0];
_wp setWaypointType "GETOUT";
_wp setWaypointSpeed "NORMAL";

_wp = group GrpL1 addWaypoint [[8553,20900,0],0];
_wp setWaypointType "MOVE";
_wp setWaypointSpeed "NORMAL";
*/


/*
//UAZ vor Halle
_wp = group Kfz1 addWaypoint [[9008,21428,0],0];
_wp setWaypointType "MOVE";
_wp setWaypointSpeed "NORMAL";

_wp = group Kfz1 addWaypoint [[9002,21306,0],0];
_wp setWaypointType "MOVE";
_wp setWaypointSpeed "NORMAL";

_wp = group Kfz1 addWaypoint [[8523,20995,0],0];
_wp setWaypointType "GETOUT";
_wp setWaypointSpeed "NORMAL";

_wp = group Kfz1 addWaypoint [[8553,20900,0],0];
_wp setWaypointType "MOVE";
_wp setWaypointSpeed "NORMAL";
*/


/*


//BMP1
_wp = group bmp1 addWaypoint [[9014,21463,0],0];
_wp setWaypointType "MOVE";
_wp setWaypointSpeed "NORMAL";

_wp = group bmp1 addWaypoint [[9002,21306,0],0];
_wp setWaypointType "MOVE";
_wp setWaypointSpeed "NORMAL";

_wp = group bmp1 addWaypoint [[8523,20995,0],0];
_wp setWaypointType "GETOUT";
_wp setWaypointSpeed "NORMAL";

_wp = group bmp1 addWaypoint [[8553,20900,0],0];
_wp setWaypointType "MOVE";
_wp setWaypointSpeed "NORMAL";

//BTR1
_wp = group btr1 addWaypoint [[9014,21463,0],0];
_wp setWaypointType "MOVE";
_wp setWaypointSpeed "NORMAL";

_wp = group btr1 addWaypoint [[9002,21306,0],0];
_wp setWaypointType "MOVE";
_wp setWaypointSpeed "NORMAL";

_wp = group btr1 addWaypoint [[8523,20995,0],0];
_wp setWaypointType "GETOUT";
_wp setWaypointSpeed "NORMAL";

_wp = group btr1 addWaypoint [[8696,20983,0],0];
_wp setWaypointType "MOVE";
_wp setWaypointSpeed "NORMAL";

//BTR2
_wp = group btr2 addWaypoint [[9232,21553,0],0];
_wp setWaypointType "MOVE";
_wp setWaypointSpeed "NORMAL";

_wp = group btr2 addWaypoint [[9004,21394,0],0];
_wp setWaypointType "MOVE";
_wp setWaypointSpeed "NORMAL";

_wp = group btr2 addWaypoint [[9002,21306,0],0];
_wp setWaypointType "MOVE";
_wp setWaypointSpeed "NORMAL";

_wp = group btr2 addWaypoint [[8523,20995,0],0];
_wp setWaypointType "GETOUT";
_wp setWaypointSpeed "NORMAL";

_wp = group btr2 addWaypoint [[8696,20983,0],0];
_wp setWaypointType "MOVE";
_wp setWaypointSpeed "NORMAL";

//T801
_wp = group t801 addWaypoint [[9232,21553,0],0];
_wp setWaypointType "MOVE";
_wp setWaypointSpeed "NORMAL";

_wp = group t801 addWaypoint [[9004,21394,0],0];
_wp setWaypointType "MOVE";
_wp setWaypointSpeed "NORMAL";

_wp = group t801 addWaypoint [[9002,21306,0],0];
_wp setWaypointType "MOVE";
_wp setWaypointSpeed "NORMAL";

_wp = group t801 addWaypoint [[8523,20995,0],0];
_wp setWaypointType "GETOUT";
_wp setWaypointSpeed "NORMAL";

_wp = group t801 addWaypoint [[8696,20983,0],0];
_wp setWaypointType "MOVE";
_wp setWaypointSpeed "NORMAL";

//Infanterie bei Basis
[Inf2,Inf3] joinSilent (group Inf1);
/*
_wp = group Inf1 addWaypoint [[9256,21691,0],0];
_wp setWaypointType "GETIN NEAREST";
_wp setWaypointSpeed "NORMAL";

_wp = group Inf1 addWaypoint [[9226,21679,0],0];
_wp setWaypointType "MOVE";
_wp setWaypointSpeed "NORMAL";

_wp = group Inf1 addWaypoint [[9191,21666,0],0];
_wp setWaypointType "MOVE";
_wp setWaypointSpeed "NORMAL";

_wp = group Inf1 addWaypoint [[8998,21398,0],0];
_wp setWaypointType "MOVE";
_wp setWaypointSpeed "NORMAL";

_wp = group Inf1 addWaypoint [[9002,21306,0],0];
_wp setWaypointType "MOVE";
_wp setWaypointSpeed "NORMAL";

_wp = group Inf1 addWaypoint [[8515,20976,0],0];
_wp setWaypointType "GETOUT";
_wp setWaypointSpeed "NORMAL";

_wp = group Inf1 addWaypoint [[8530,20881,0],0];
_wp setWaypointType "MOVE";
_wp setWaypointSpeed "NORMAL";
*/