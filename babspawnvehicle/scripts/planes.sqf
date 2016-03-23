if(isServer) then {
_planesPosition = [
					[[24493.7,13777.2,7.43248],		155.519,		"Sab_af_An2"		],
					[[32121.8,2761.87,7.87169],		122.463,		"Sab_ana_An2"		],
					[[35330,12382.8,14.2826],		131.312,		"Sab_yel_An2"		],
					[[38165.1,20399.5,11.8378],		250.903,		"Sab_cz_An2"		],
					[[31711,30846.4,21.2744],		337.008,		"Sab_ee_An2"		],
					[[21974.8,24935.7,20.1458],		116.353,		"Sab_tk_An2"		],
					[[16413,34123.1,8.50144],		109.167,		"Sab_tk_An2"		],
					[[7156.13,18241.4,7.38524],		153.578,		"sab_BI_An2"		]

				];

{
	_pos = _x select 0;
	_degree = _x select 1;
	_models = _x select 2;
	[_pos,_degree,_models] call BABSPAWNVEHICLE_fnc_spawnPlanes;

} forEach _planesPosition;
};
