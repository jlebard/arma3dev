private ["_uidplayer","_arrayindex","_typeoforfaction"];

_uidplayer = _this select 0;
_arrayindex = _this select 1;
_typeoforfaction = _this select 2;
_statlevelplayer = _this select 3;
_currentWeapon = _this select 4;
_distance = _this select 5;

_config = "BABLEVELUNITSPARAMS" call EPOCH_returnConfig;
_points = getText (_config >> _typeoforfaction >> "points");




/*

template : [[lvl,death,xp,[title_1,title_2,...]],[playerkill,zedskill,epochSapperF,epochSapperB_F,epochcloak,greatwhite,iakill],[[weapons class, count fired],[...]]]
default : [ [0,0,0,[] ] , [0,0,0,0,0,0,0] , [] ] ;

*/

_tab1 = _statlevelplayer select 0;
_tab2 = _statlevelplayer select 1;
_tab3 = _statlevelplayer select 2;
_tab4 = _statlevelplayer select 3;


_lvl = _tab1 select 0 ;
_death = _tab1 select 1 ;
_xp = _tab1 select 2 ;


_newtab2 = [];
for "_i" from 0 to ((count _tab2) -1) do {
  if (_i == _arrayindex) then {
    _newtab2 pushBack ((_tab2 select _i)+1);
  }else {
    _newtab2 pushBack (_tab2 select _i);
  };

};

_scoretoadd = _points * (1-(_lvl * 0.01));
_lvlupscore = _lvl call BABLEVEL_fnc_nextlevelvalue;

_xp = _xp + _scoretoadd;

if(_newscore >= _lvlupscore) then {
  _lvl = _lvl +1;
  _xp = 0;
};

_newtab3 = [];
_nb = count _tab3;
if (_nb == 0)then {
  _newtab3 = [[_currentWeapon, 1,1]];
}else {
  for "_i" from 0 to (_nb -1)do {
    _tab3_i = _newtab3 select _i;
    _classname = _tab3_i select 0;
    _newdistance = 0;
    if(_currentWeapon == _classname) then {
      if(_distance > (_tab3_i select 3)) then {
        _newdistance = _distance;
      }
    else {
        _newdistance = _tab3_i select 3;
      };
    _tab3_i = [_classname,(_tab3_i select 1),(_tab3_i select 2)+1,_newdistance];
    }
  else {
      _tab3_i=   [_classname,1,1,_distance];
    };
    _newtab3 pushBack  _tab3_i;
  };
};

_return = [[_lvl,_death,_xp],_newtab2,_newtab3,_tab4];
_return;
