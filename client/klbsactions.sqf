alarmon = false;
_action = ["mcd_alarm","Alarm auslösen","",{[[],"client\alarm.sqf"] remoteExec ["execVM",0,false];[[],"ai\alarmreaction.sqf"] remoteExec ["execVM",0, false]}, {!(alarmon)}, {}, [], [0,0,0.45],3] call ace_interact_menu_fnc_createAction;
[alarmsign1, 0, [], _action] call ace_interact_menu_fnc_addActionToObject;


//[alarmsign1,0,["mcd_alarm"]] call ace_interact_menu_fnc_removeActionFromObject;

