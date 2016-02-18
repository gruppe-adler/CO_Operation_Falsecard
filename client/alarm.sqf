_repetitions = 8;

alarmon = true;
alarmed = true;
if (!hasInterface) exitWith {};

if ((loudspeaker1 distance player) < 500) then
{
	for [{_i = 0},{_i < _repetitions},{_i = _i + 1}] do 
	{
		loudspeaker1 say3d "siren_close";
		sleep 9.285;
	};

	alarmon = false;
}

else
{
	for [{_i = 0},{_i < _repetitions},{_i = _i + 1}] do 
	{
		loudspeaker1 say3d "siren_far";
		sleep 9.285;
	};

	alarmon = false;
};


