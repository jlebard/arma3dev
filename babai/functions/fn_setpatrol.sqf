private ["_startpos","_grp","_rad","_wp"];






_startpos = _this select 0;
_grp = _this select 1;
_rad = _this select 2;
_newpostion = [[[_startpos , _rad]] ,["water","out"]] call BIS_fnc_randomPos;

_wp = _grp addWaypoint [_newpostion,0];
_wp setWaypointType "MOVE";
_wp setWaypointStatements ["true", "_unit = thislist select 0; _start = _unit getVariable 'startPos'; _grp = group _unit; _rad = _unit getVariable 'patrolArea'; [_start,_grp,_rad] call BABAI_fnc_setpatrol;"];
_grp move _newpostion ;
diag_log format ["Patrol %1 move to %2", _grp, _newpostion ];
