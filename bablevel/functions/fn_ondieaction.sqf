private ["_uidKilled"];
_uidKilled = _this;

_statKilled = _uidKilled call BABLEVEL_fnc_getplayerstat;

_tab1 = _statKilled select 0;
//default : [ [0,0,0,[] ] , [0,0,0,0,0,0,0] , [],[] ] ;

_lvl = _tab1 select 0;
_death = (_tab1 select 1) +1;
_scorelvl = _lvl call BABLEVEL_fnc_nextlevelvalue;
_scoretoreduce = _scorelvl * 0.1 ;
_progress = (_tab1 select 2) - (floor _scoretoreduce) ;

if(_progress < 0)then {
  _progress = 0;
}
_return = [[_lvl,_death,_progress,_tab1 select 3],_statKilled select 1,_statKilled select 2,_statKilled select 3];
_return;
