private["_uid"];
_uid = _this select 0;
_result = [];
{
  private ["_uidSc"];
  _uidSc = getPlayerUID _x;
  if( _uidSc == _uid ) then {
    _result = _x;

  };
}foreach allPlayers;
_result;
