/* Fügt Spielern missionsspezifische Zeusmodule hinzu
*
* Ausgelöst durch init.sqf
*/

if (isClass (configFile >> "CfgPatches" >> "Ares")) then
{
	["0_Mission", "Motorprobleme starten", {"spareparts\truck_enginetrouble.sqf" remoteExec ["execVM",0,false]}] call Ares_fnc_RegisterCustomModule;
	["0_Mission", "Motorversagen", {"spareparts\truck_breakdown.sqf" remoteExec ["execVM",0,false]}] call Ares_fnc_RegisterCustomModule;
	["0_Mission", "Schrotthaufen spawnen", {[[[_this select 0, _this select 1], "spareparts\newjunkpile.sqf"], "BIS_fnc_execVM", true, true] call BIS_fnc_MP}] call Ares_fnc_RegisterCustomModule;
	["0_Mission", "Zeus - Objekt hinzufügen", {[[_this select 0], "helpers\addSingleUnitToZeus.sqf"] remoteExec ["execVM",0,false]}] call Ares_fnc_RegisterCustomModule;
	["0_Mission", "Zeus - Objekt entfernen", {[[_this select 0], "helpers\removeSingleUnitFromZeus.sqf"] remoteExec ["execVM",0,false]}] call Ares_fnc_RegisterCustomModule;
	["0_Mission", "Abderaeinheiten spawnen", {[[], "spawn\RUS_abderaunits.sqf"] remoteExec ["execVM",0,false]}] call Ares_fnc_RegisterCustomModule;
	["0_Mission", "An Deck teleportieren", {[[_this select 1], "helpers\portToDeck.sqf"] remoteExec ["execVM",0,false]}] call Ares_fnc_RegisterCustomModule;
	["0_Mission", "Schaden zurücksetzen", {(_this select 1) setDamage 0}] call Ares_fnc_RegisterCustomModule;
	

	["1_Target Units", "Ural1 Squad 8", {[[_this select 0], "spawn\targeted\zeus_uralsquad1.sqf"] remoteExec ["execVM",0,false]}] call Ares_fnc_RegisterCustomModule;
	["1_Target Units", "Ural2 Squad 8", {[[_this select 0], "spawn\targeted\zeus_uralsquad2.sqf"] remoteExec ["execVM",0,false]}] call Ares_fnc_RegisterCustomModule;
	["1_Target Units", "GAZ Armed 5", {[[_this select 0], "spawn\targeted\zeus_gazarmed.sqf"] remoteExec ["execVM",0,false]}] call Ares_fnc_RegisterCustomModule;
	["1_Target Units", "UAZ 5", {[[_this select 0], "spawn\targeted\zeus_uaz.sqf"] remoteExec ["execVM",0,false]}] call Ares_fnc_RegisterCustomModule;
	["1_Target Units", "GAZ66 Squad 8", {[[_this select 0], "spawn\targeted\zeus_gaz66squad.sqf"] remoteExec ["execVM",0,false]}] call Ares_fnc_RegisterCustomModule;
	["1_Target Units", "BMP1 Squad 9", {[[_this select 0], "spawn\targeted\zeus_bmp1squad.sqf"] remoteExec ["execVM",0,false]}] call Ares_fnc_RegisterCustomModule;
	["1_Target Units", "MI8", {[[_this select 0], "spawn\targeted\zeus_mi8.sqf"] remoteExec ["execVM",0,false]}] call Ares_fnc_RegisterCustomModule;
	["1_Target Units", "BTR60 Squad 9", {[[_this select 0], "spawn\targeted\zeus_btr60squad.sqf"] remoteExec ["execVM",0,false]}] call Ares_fnc_RegisterCustomModule;
	["1_Target Units", "BTR60", {[[_this select 0], "spawn\targeted\zeus_btr60.sqf"] remoteExec ["execVM",0,false]}] call Ares_fnc_RegisterCustomModule;
	["1_Target Units", "BMP1", {[[_this select 0], "spawn\targeted\zeus_bmp1.sqf"] remoteExec ["execVM",0,false]}] call Ares_fnc_RegisterCustomModule;
	["1_Target Units", "Riflesquad 10", {[[_this select 0], "spawn\targeted\zeus_riflesquad.sqf"] remoteExec ["execVM",0,false]}] call Ares_fnc_RegisterCustomModule;
	["1_Target Units", "Fireteam 5", {[[_this select 0], "spawn\targeted\zeus_fireteam.sqf"] remoteExec ["execVM",0,false]}] call Ares_fnc_RegisterCustomModule;

	["2_Static Units", "Ural1 Squad 8", {[[_this select 0], "spawn\static\zeus_uralsquad1.sqf"] remoteExec ["execVM",0,false]}] call Ares_fnc_RegisterCustomModule;
	["2_Static Units", "Ural2 Squad 8", {[[_this select 0], "spawn\static\zeus_uralsquad2.sqf"] remoteExec ["execVM",0,false]}] call Ares_fnc_RegisterCustomModule;
	["2_Static Units", "GAZ Armed 5", {[[_this select 0], "spawn\static\zeus_gazarmed.sqf"] remoteExec ["execVM",0,false]}] call Ares_fnc_RegisterCustomModule;
	["2_Static Units", "UAZ 5", {[[_this select 0], "spawn\static\zeus_uaz.sqf"] remoteExec ["execVM",0,false]}] call Ares_fnc_RegisterCustomModule;
	["2_Static Units", "GAZ66 Squad 8", {[[_this select 0], "spawn\static\zeus_gaz66squad.sqf"] remoteExec ["execVM",0,false]}] call Ares_fnc_RegisterCustomModule;
	["2_Static Units", "BMP1 Squad 9", {[[_this select 0], "spawn\static\zeus_bmp1squad.sqf"] remoteExec ["execVM",0,false]}] call Ares_fnc_RegisterCustomModule;
	["2_Static Units", "MI8", {[[_this select 0], "spawn\static\zeus_mi8.sqf"] remoteExec ["execVM",0,false]}] call Ares_fnc_RegisterCustomModule;
	["2_Static Units", "BTR60 Squad 9", {[[_this select 0], "spawn\static\zeus_btr60squad.sqf"] remoteExec ["execVM",0,false]}] call Ares_fnc_RegisterCustomModule;
	["2_Static Units", "BTR60", {[[_this select 0], "spawn\static\zeus_btr60.sqf"] remoteExec ["execVM",0,false]}] call Ares_fnc_RegisterCustomModule;
	["2_Static Units", "BMP1", {[[_this select 0], "spawn\static\zeus_bmp1.sqf"] remoteExec ["execVM",0,false]}] call Ares_fnc_RegisterCustomModule;
	["2_Static Units", "Riflesquad 10", {[[_this select 0], "spawn\static\zeus_riflesquad.sqf"] remoteExec ["execVM",0,false]}] call Ares_fnc_RegisterCustomModule;
	["2_Static Units", "Fireteam 5", {[[_this select 0], "spawn\static\zeus_fireteam.sqf"] remoteExec ["execVM",0,false]}] call Ares_fnc_RegisterCustomModule;

	["3_Missionsende", "Slingload", {[[_this select 1], "helpers\forceSlingload.sqf"] remoteExec ["execVM",0,false]}] call Ares_fnc_RegisterCustomModule;
	["3_Missionsende", "Debrief Dingo", {[[_this select 0], "spawn\zeus_dingoofficers.sqf"] remoteExec ["execVM",0,false]}] call Ares_fnc_RegisterCustomModule;
};


