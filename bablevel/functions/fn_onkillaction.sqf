private ["_uidKiller", "_objectKilled","_currentWeaponKiller","_distance"];

_uidKiller = _this select 0;
_objectKilled = _this select 1;
_currentWeaponKiller = _this select 2;

_factionObjectKilled = faction _objectKilled;

  // "Ryanzombiesfaction" => zeds, "GIGN_units" => my ia, "OPF_F" => epochplayer , IND_F => Epoch IA military
  //CONFIGBABLEVELUNITS = [_zedsFaction,_iaFaction,_epochplayerFaction,_epochiaFaction,_epochzedslist];

  /*

  template : [[lvl,death,xp,[title_1,title_2,...]],
  [playerkill,zedskill,epochSapperF,epochSapperB_F,epochcloak,greatwhite,iakill],[[weapons class, count fired,kill fired],[...]]]
  default : [ [0,0,0,[] ] , [0,0,0,0,0,0,0] , [] ] ;

  */

_r = _uidKiller call BABLEVEL_fnc_getplayerstat;
switch (_factionObjectKilled) do {
  case (CONFIGBABLEVELUNITS select 0) : {
        _r = [_uidKiller,6,_factionObjectKilled,_r,_currentWeaponKiller,_distance] call BABLEVEL_fnc_scorepreparearray;

  }
  case (CONFIGBABLEVELUNITS select 1) : {
        _r = [_uidKiller,1,_factionObjectKilled,_r,_currentWeaponKiller,_distance] call BABLEVEL_fnc_scorepreparearray;
  }
  case (CONFIGBABLEVELUNITS select 2) : {
          _r = [_uidKiller,0,_factionObjectKilled,_r,_currentWeaponKiller,_distance] call BABLEVEL_fnc_scorepreparearray;
  }
  case (CONFIGBABLEVELUNITS select 3) : {
          _r = [_uidKiller,6,_factionObjectKilled,_r,_currentWeaponKiller,_distance] call BABLEVEL_fnc_scorepreparearray;
  }
  default {
    _typeofObjectKilled = typeof _objectKilled;
    _unitslistepoch = CONFIGBABLEVELUNITS select 4;
    switch (_typeofObjectKilled ) do {
      case (_unitslistepoch select 0) : {
          _r = [_uidKiller,4,_factionObjectKilled,_r,_currentWeaponKiller,_distance] call BABLEVEL_fnc_scorepreparearray;
      };
      case (_unitslistepoch select 1) : {
          _r = [_uidKiller,5,_factionObjectKilled,_r,_currentWeaponKiller,_distance] call BABLEVEL_fnc_scorepreparearray;
      };
      case (_unitslistepoch select 2) : {
          _r = [_uidKiller,2,_factionObjectKilled,_r,_currentWeaponKiller,_distance] call BABLEVEL_fnc_scorepreparearray;
      };
      case (_unitslistepoch select 3) : {
          _r = [_uidKiller,3,_factionObjectKilled,_r,_currentWeaponKiller,_distance] call BABLEVEL_fnc_scorepreparearray;
      };
    };
  };
};

[DBPREFIXBABLEVEL,_uidKiller, _r] call EPOCH_fnc_server_hiveSET;
_rkiller = _uidKiller call BABLEVEL_fnc_getplayerstat;
_rkiller;
