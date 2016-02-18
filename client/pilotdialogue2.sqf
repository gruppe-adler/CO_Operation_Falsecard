/* Spielt Piloten Voicelines ab
*
* ausgeführt durch client\takeoff.sqf
*/

if !(hasInterface) exitWith {};

sleep 1;
playSound ["03_copy", true];

sleep 2;
playSound ["04_rdy", true];

sleep 8;
playSound ["05_takeoff", true];




/*
//Pilot antwortet Spieler
sleep 0.5;
pilot1 kbAddTopic ["t3", "sentences.bikb", "", ""]; 
pilot1 kbTell  [pilot2, "t3", "03_copy",["",{},"",[""]],"VEHICLE"];

//Pilot 1 kommuniziert mit Tower
sleep 2;
pilot1 kbAddTopic ["t4", "sentences.bikb", "", ""]; 
pilot1 kbTell  [pilot2, "t4", "04_rdy",["",{},"",[""]],"VEHICLE"];
sleep 8;
pilot1 kbAddTopic ["t5", "sentences.bikb", "", ""]; 
pilot1 kbTell  [pilot2, "t5", "05_takeoff",["",{},"",[""]],"VEHICLE"];
