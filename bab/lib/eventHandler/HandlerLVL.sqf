
getThePlayer = {
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
};



"LVLshowDB" addPublicVariableEventHandler
{
   _uid = _this select 1 ;
   _player = [_uid] call BAB_fnc_getmyplayer;
   _owner = owner _player;
   _data =  ["show",[_uid,true]] call BAB_fnc_redisfunction;


   missionNamespace setVariable ["StatLVL", _data];
   _owner publicVariableClient "StatLVL";
 };



"LVLupdateDB" addPublicVariableEventHandler
{
     _d = _this select 1;
     _dataUpdate = _d select 1;
    _uid= _d select 0;
     _player = [_uid] call BAB_fnc_getmyplayer;
     _owner = owner _player;
     //_narray = _d select 1;

      _update=["update",[_uid,_dataUpdate]] call BAB_fnc_redisfunction;
      _data =  ["show",[_uid,true]] call BAB_fnc_redisfunction;

       missionNamespace setVariable ["StatLVL", _data];
      _owner publicVariableClient "StatLVL";
};


"LVLonKill" addPublicVariableEventHandler {
  _d = _this select 1;
  _mode = _d select 0;
  // [_mode,_uidkiller, uidkilled or why killed ]
  //_mode : 0 => player are killed, 1 => units killed by player, 2 => 3 player killed by player;
  switch (_mode) do {
    case 0 : {
      _playerdeadUID = _d select 1;
      _killedBy = _d select 2;
      [0,_playerdeadUID,_killedBy] call BAB_fnc_onkilledaction;

      _data =  ["show",[_playerdeadUID,true]] call BAB_fnc_redisfunction;
      _Unit = [_playerdeadUID] call BAB_fnc_getmyplayer;
      _ownerU = owner _Unit;
      missionNamespace setVariable["StatLVL",_data];
      _ownerU publicVariableclient "StatLVL";



    };
    case 1 : {
      _playerkillerUID = _d select 1;
      _killThis = _d select 2;
      [1,_playerkillerUID,_killThis] call BAB_fnc_onkilledaction;

      _data =  ["show",[_playerkillerUID,true]] call BAB_fnc_redisfunction;
      _Killer = [_playerkillerUID] call BAB_fnc_getmyplayer;
      _ownerK = owner _Killer;
      missionNamespace setVariable["StatLVL",_data];
      _ownerK publicVariableclient "StatLVL";


    };

  };





  //get Player Object;
};
