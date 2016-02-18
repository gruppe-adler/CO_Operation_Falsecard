/* Startet Motorversagen
*
* ausgeführt manuell durch Zeus remoteexec auf clients+server
*/

_soundDauer = 14.8;
problems = true;
enginesoundfinished = false;

// Truck verwundbar machen (damit setHit funktioniert)
targettruck allowDamage true;
sleep 1;


//Eventhandler entfernen
targettruck removeAllEventHandlers "Engine";

//Motor kann nicht mehr ausgeschaltet werden
[targettruck] execVM "spareparts\keepengineon.sqf";

//Alten Rauch löschen, neuen Rauch spawnen
deleteVehicle ps;
[targettruck, true] execVM "spareparts\truck_particleeffects2.sqf";


if (player in targettruck) then {
	//lauter Sound
	targettruck say3D "engine_breakdown_loud";
}
else {
	//leiser Sound
	targettruck say3D "engine_breakdown";
};

sleep _soundDauer;
enginesoundfinished = true;

//Motor beschädigen
targettruck setHit ["motor", 1];

/*
if (local targettruck) then
{
	targettruck setHit ["motor", 1];
};
*/

//Partikel löschen
sleep 2;
deleteVehicle ps;

// Truck wieder unverwundbar machen
targettruck allowDamage false;			

//Weitergebe-Interaktion zu allen Spielern hinzufügen
if (hasInterface) then {
	[] execVM "spareparts\givesparepartsaction.sqf";
};

//Server erstellt guard trigger um den Truck
if (isServer) then {
	truckguard = createTrigger ["EmptyDetector", getpos targettruck];
	truckguard setTriggerArea [100,100,0,false];
	truckguard setTriggerType "EAST G";
};
