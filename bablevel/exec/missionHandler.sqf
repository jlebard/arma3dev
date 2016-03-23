addMissionEventHandler ["EntityKilled",{

  _killed = _this select 0;
  _killer = _this select 1;
  _factionKilled = faction _killed;
  _nameKilled = name _killed;
  _uidKilled = getPlayerUID _killed;
  _factionKiller = faction _killer;
  _nameKiller = name _killer;
  _distance = _killer distance _killed;
  // "Ryanzombiesfaction" => zeds, "GIGN_units" => my ia, "OPF_F" => epochplayer , IND_F => Epoch IA military
  _uidKiller = getPlayerUID _killer;
if (_factionKilled == "OPF_F") then {
 _ownerKilled = owner _killed;
 _rKilled = _uidKilled call BABLEVEL_fnc_ondieaction;

};

if( _factionKiller == "OPF_F" ) then {
 _ownerKiller = owner _killer;

_rkiller = [_uidKiller,_killed,currentWeapon _killer,_distance] call BABLEVEL_fnc_onkillaction;



};

if(_nameKiller == _nameKilled) then
{
  _textlog = format["%1 prefer die alone",_nameKilled];
  _textlog remoteExec ["systemChat"];
}else {
  _textlog = format["%1(%2) was killed by %3 (%4) with %5 at %6 m",_nameKilled,_factionKilled,_nameKiller,_factionKiller, currentWeapon _killer,_distance];
  _textlog remoteExec ["systemChat"];
};

  //[_killed,_killer] call BAB_fnc_onkilledaction;


  }];

  //EntityRespawned

  /**
  addMissionEventHandler ["EntityRespawned",{

  }];
  **/
