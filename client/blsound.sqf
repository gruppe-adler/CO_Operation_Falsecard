/* Spielt beim Aktivieren des Zeitzünders der Brandladung global Sound ab
*
* Ausgeführt lokal durch ACE-Interaction aus client\brandladung.sqf
*/


blcomplete = {
	//Aktion entfernen
	[crate,0,["mcd_brandladung_activate"]] call ace_interact_menu_fnc_removeActionFromObject;
	playSound3D ["a3\sounds_f\sfx\beep_target.wss", crate, false, getPosASL crate,1, 1, 10];
	
	//Task complete
	brandladungangebracht = true;
};

//Sounds abspielen (playsound3d ist global)
[] spawn {
	playSound3D ["rhsusf\addons\rhsusf_uav\sounds\watchBeep_single.ogg", crate, false, getPosASL crate,1, 1, 10];
	sleep 0.2;
	playSound3D ["rhsusf\addons\rhsusf_uav\sounds\watchBeep_single.ogg", crate, false, getPosASL crate,1, 1, 10];
	sleep 0.25;
	playSound3D ["rhsusf\addons\rhsusf_uav\sounds\watchBeep_single.ogg", crate, false, getPosASL crate,1, 1, 10];;
	sleep 0.7;
	playSound3D ["rhsusf\addons\rhsusf_uav\sounds\watchBeep_single.ogg", crate, false, getPosASL crate,1, 1, 10];
	sleep 0.33;
	playSound3D ["rhsusf\addons\rhsusf_uav\sounds\watchBeep_single.ogg", crate, false, getPosASL crate,1, 1, 10];
};

[2.1, [], {call blcomplete}, {hint "Abgebrochen"}, "Zeitzünder einstellen"] call ace_common_fnc_progressBar;


