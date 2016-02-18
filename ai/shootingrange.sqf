bludetected = false;

_s1fire =
{
	soldier1 disableAI "MOVE";
	_count1 = 0;
	while {behaviour soldier1 != "COMBAT"} do
	{	
		soldier1 doTarget target1;
		sleep random 7;
		shoot_logic action ["useWeapon", soldier1, soldier1, 0];
		_count1 = _count1 +1;

		if (_count1 == 30) then {
			sleep 3;
			soldier1 addItemToUniform "rhs_30Rnd_545x39_7N10_AK";
			_count1 = 0;
		};
	};
	soldier1 enableAI "MOVE";
};

_s2fire =
{
	soldier2 disableAI "MOVE";
	_count2 = 0;
	while {behaviour soldier2 != "COMBAT"} do
	{	
		soldier2 doTarget target2;
		sleep random 7;
		shoot_logic action ["useWeapon", soldier2, soldier2, 0];
		_count2 = _count2 +1;

		if (_count2 == 30) then {
			sleep 3;
			soldier2 addItemToUniform "rhs_30Rnd_545x39_7N10_AK";
			_count2 = 0;
		};
	};
	soldier2 enableAI "MOVE";
};

[] spawn _s1fire;
[] spawn _s2fire;