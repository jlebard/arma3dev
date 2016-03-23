private ["_classname","_uidplayer","_statplayer"];

_uidplayer = _this select 0;
_classname = _this select 1;

_statplayer = _uidplayer call BABLEVEL_fnc_getplayerstat;

_statweapons = _stat player select 2;

_newstatweapons = [];
_countstatweapons = count _statweapons;

if(_countstatweapons == 0 )then {
_weaponstat = [_classname,1,0,0];
_newstatweapons pushBack _weaponstat;
}else {

  for "_i" from 0 to (_countstatweapons -1) do {
    _weaponstat_i = _statweapons select _i;

    if(_classname == _weaponstat_i select 0) then {

    _weaponstat_i = [_classname, (_weaponstat_i select 1) +1,_weaponstat_i select 2,_weaponstat_i select 3];

    }
    else {
      _weaponstat_i = [_classname, 1,0,0];
    }
      _newstatweapons pushBack _weaponstat_i;
  };


};

_r = [_stat select 0,_stat select 1, _newstatweapons,_stat select 3];

[DBPREFIXBABLEVEL,_uidplayer, _r] call EPOCH_fnc_server_hiveSET;
_result = _uidplayer call BABLEVEL_fnc_getplayerstat;
_result;
