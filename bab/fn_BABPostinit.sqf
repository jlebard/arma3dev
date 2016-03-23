systemChat format["BAB MOD Loading Planes"];
[] execvm "\BAB\scripts\planes.sqf";
systemChat format["BAB MOD Loading markers"];
[] execvm "\BAB\scripts\markers.sqf";
systemChat format["BAB MOD Loading Loots"];
[] execvm "\BAB\scripts\loots.sqf";
systemChat format["BAB MOD Loading StatLVL"];
[] execvm "\BAB\lib\onPlayerConnect\setpublicstat.sqf";



//_fnc_fileCompilePublicStat =  compile loadFile "\BAB\lib\eventHandler\HandlerLVL.sqf";
//[] call _fnc_fileCompilePublicStat;
