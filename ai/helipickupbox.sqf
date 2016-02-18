sleep 20;
missionstarted = true;

pilot3 switchMove "";
pilot4 switchMove "";

deckofficer switchMove "";
deckofficer setDir 215;
deckofficer disableAI "MOVE";

pilot3 moveInDriver uh_3;
pilot3 assignAsDriver uh_3;
pilot4 moveinTurret [uh_3, [0]];
pilot4 assignAsGunner uh_3;

sleep 5;
uh_3 engineOn true;





