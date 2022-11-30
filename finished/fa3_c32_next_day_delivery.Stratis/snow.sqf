//made by darkChozo
//edited by Ciaran to use new rainParams/setRain & make large snow clouds server-calculated

0 setFog 0.3;
0 setOvercast 1;
0 setRain 1;
forceWeatherChange;
setRain [
	"snow.paa",//"a3\data_f\Destruct\damage_Metal_MC.paa", // rainDropTexture - some alternatives: carflare_ca.paa, cl_fire.paa | biki suggested: rainnormal_ca.paa
	2,	// texDropCount
	0.01,	// minRainDensity
	20,	// effectRadius
	0.25,	// windCoef
	2,	// dropSpeed
	0.5,	// rndSpeed
	0.5,	// rndDir
	0.06,	// dropWidth
	0.06,	// dropHeight
	[0.1,0.1,0.1,15],	// dropColor
	0.25,	// lumSunFront
	0.25,	// lumSunBack
	3.0,	// refractCoef
	0.3,	// refractSaturation
	true,	// snow
	false	// dropColorStrong
];
/*
setRain [
	"a3\data_f\Destruct\damage_Metal_MC.paa", // rainDropTexture - some alternatives: carflare_ca.paa, cl_fire.paa | biki suggested: rainnormal_ca.paa
	1,	// texDropCount
	0.01,	// minRainDensity
	20,	// effectRadius
	0.25,	// windCoef
	2,	// dropSpeed
	0.5,	// rndSpeed
	0.5,	// rndDir
	0.06,	// dropWidth
	0.06,	// dropHeight
	[0.1,0.1,0.1,15],	// dropColor
	0.25,	// lumSunFront
	0.25,	// lumSunBack
	3.0,	// refractCoef
	0.3,	// refractSaturation
	true,	// snow
	false	// dropColorStrong
];*/

if (c_param_snowExtra && {particlesQuality > 0}) then {
	dc_fnc_coldBreath = {
		if (hasInterface) then {
			while {alive _this} do {
						sleep (4*(1 - getFatigue _this) + random 1);
						drop [["\A3\data_f\ParticleEffects\Universal\Universal", 16, 12, 8,1], "", "Billboard", 1,
							 (1-((vectorMagnitude velocity _this) / 35)) *.75 max .05,
							 _this selectionPosition "Head" vectorAdd [0,.02,0],
							 velocityModelSpace _this vectorAdd [0, .1, 0], 1, 1.3, 1, .01, [.1,.25,.33,.4], [[1, 1, 1, .5],[1, 1, 1, 0]], [1], 1, 0, "", "", _this];
						drop [["\A3\data_f\ParticleEffects\Universal\Universal", 16, 12, 8,1], "", "Billboard", 1,
							(1-((vectorMagnitude velocity _this) / 35)) *.75 max .05,
							_this selectionPosition "Head" vectorAdd [0,.02,0],
							velocityModelSpace _this vectorAdd [0, .15, 0], 1, 1.3, 1, .01, [.1,.22,.3,.35], [[1, 1, 1, .5],[1, 1, 1, 0]], [1], 1, 0, "", "", _this];
			};
		};
	};


	{
		_x spawn dc_fnc_coldBreath;
	} forEach allUnits;

	if (isServer) exitwith {
		[] spawn {
			while {true} do {
				sleep 0.5 + random 2;
				_randomPlayer = selectRandom playableUnits
				_nearbyPos = [(position _randomPlayer select 0) - 200 + random 400,(position _randomPlayer select 1) - 200 + random 400,0];
				_vel = [3-random 6, 3-random 6, random 2];
				for "_i" from 1 to 2 do {
				drop [ // https://community.bistudio.com/wiki/ParticleArray
					["\A3\data_f\ParticleEffects\Universal\Universal", 16, 12, 1,1], //shapeName
					"", //animationName
					"Billboard", //type
					1, //timerPeriod
					8, //lifeTime
					_randomPlayer worldToModel _nearbyPos, //position
					_vel vectorAdd [3-random 1.5, 3-random 1.5, .4-random .2], //moveVelocity
					5-random 10, //rotationVelocity
					1.4, //weight (kg) - for gravity calc?
					1, //volume (m^3) - for air resistance calc? ¯\_(ツ)_/¯
					0, //rubbing - how affected by wind it is
					[8,10], //particle size (m)
					[[1,1,1,0],[1, 1, 1, .2],[1, 1, 1, 0]], //colour - I don't kno why this is three arrays
					[1], //animationPhase
					1, //randomDirectionPeriod (s)
					0, //randomDirectionIntensity
					"", //onTimer
					"", //beforeDestroy
					_randomPlayer //object - particle is attached to this object
				]; //comment your code chozo ;_;
				};
			};
		};
	};

	/* [] spawn {
		while {true} do {
			sleep 0.3 + random 1;
			_nearbyPos = [(position player select 0) - 200 + random 400,(position player select 1) - 200 + random 400,0];
			_vel = [3-random 6, 3-random 6, random 2];
			for "_i" from 1 to 3 do {
			drop [["\A3\data_f\ParticleEffects\Universal\Universal", 16, 12, 1,1], "", "Billboard", 1, 8, player worldToModel _nearbyPos, _vel vectorAdd [3-random 1.5, 3-random 1.5, .4-random .2], 5-random 10, 1.4, 1, 0, [8,10], [[1,1,1,0],[1, 1, 1, .2],[1, 1, 1, 0]], [1], 1, 0, "", "", player];
			};
		};
	}; */
};
