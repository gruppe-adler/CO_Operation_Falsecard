/* Gibt dem Spieler Baumaterial
*
* Ausgeführt durch ACE Action aus plankactions_init.sqf
*
*/

_inventory = [0,0,0,0,0,0,0,0];

//Erhöht Anzahl von jeweiligem Baumaterial des Spielers um 1
_updateInventory = {
	_fortID = _this select 0;
	_currentInv = player getVariable ["plank_deploy_fortCounts", []];
	if (count _currentInv == 0) then {
		//Spieler hat kein Inventar
		_inventory = [0,0,0,0,0,0,0,0];
		_inventory set [_fortID,1];
	}
	else {
		//Spieler hat Inventar
		_inventory = (player getVariable ["plank_deploy_fortCounts", []]);
		_addFort = (_inventory select _fortID) + 1;
		_inventory set [_fortID, _addFort];
	};
};

//Baumaterial hinzufügen
switch (_this select 0) do {
	case 1: {
			[0] call _updateInventory;
			[player, _inventory] call plank_api_fnc_forceAddFortifications;
		 	"plankactions\plankactions_update.sqf" remoteExec ["execVM",0,true];
		 	cnc_barrier = cnc_barrier -1;
		 	publicVariable "cnc_barrier";
			};

	case 2: {
			[1] call _updateInventory;
			[player, _inventory] call plank_api_fnc_forceAddFortifications;
		 	"plankactions\plankactions_update.sqf" remoteExec ["execVM",0,true];
		 	sb_long = sb_long -1;
		 	publicVariable "sb_long";
			};

	case 3: {
			[2] call _updateInventory;
			[player, _inventory] call plank_api_fnc_forceAddFortifications;
		 	"plankactions\plankactions_update.sqf" remoteExec ["execVM",0,true];
		 	sb_short = sb_short -1;
		 	publicVariable "sb_short";
			};

	case 4: {
			[3] call _updateInventory;
			[player, _inventory] call plank_api_fnc_forceAddFortifications;
		 	"plankactions\plankactions_update.sqf" remoteExec ["execVM",0,true];
		 	sb_round = sb_round -1;
		 	publicVariable "sb_round";
			};

	case 5: {
			[4] call _updateInventory;
			[player, _inventory] call plank_api_fnc_forceAddFortifications;
		 	"plankactions\plankactions_update.sqf" remoteExec ["execVM",0,true];
		 	sb_bunker = sb_bunker -1;
		 	publicVariable "sb_bunker";
			};

	case 6: {
			[5] call _updateInventory;
			[player, _inventory] call plank_api_fnc_forceAddFortifications;
		 	"plankactions\plankactions_update.sqf" remoteExec ["execVM",0,true];
		 	tanktrap = tanktrap -1;
		 	publicVariable "tanktrap";
			};

	case 7: {
			[6] call _updateInventory;
			[player, _inventory] call plank_api_fnc_forceAddFortifications;
		 	"plankactions\plankactions_update.sqf" remoteExec ["execVM",0,true];
		 	hbarrier = hbarrier -1;
		 	publicVariable "hbarrier";
			};

	case 8: {
			[7] call _updateInventory;
			[player, _inventory] call plank_api_fnc_forceAddFortifications;
		 	"plankactions\plankactions_update.sqf" remoteExec ["execVM",0,true];
		 	pallet = pallet -1;
		 	publicVariable "pallet";
			};
};

//Mausrad Aktion - Baumaterial wegwerfen
if (isNil "WEGWERFACTION") then {
	WEGWERFACTION = player addAction ["<t color=""#C42606"">Übriges Baumaterial wegwerfen", "plankactions\removefortifications.sqf"];
};

