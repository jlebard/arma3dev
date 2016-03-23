private["_unit","_killer","_mode"];

  _mode =_this select 0;


switch (_mode) do {
  case 0 : {
        _uidU = _this select 1;

        _statU =  ["show",[_uidU,true]] call BAB_fnc_redisfunction;
        _tab1U = _statU select 0;
        _tab2U = _statU select 1;
        _levelU = _tab1U select 0;
        _scoreU = _tab1U select 1;
        _deathU = _tab1U select 2;

        _ndeathU = _deathU + 1;
        if(_levelU == 0) then {
          _scoreU = 0 ;
          if(_scoreU > 0)then{
            _score = _scoreU - 1000;
          };
          if(_scoreU < 0)then{
            _score = _scoreU + 1000;
          };


        };
        if(_levelU > 0) then {
          if(_scoreU > 0)then{
            _score = _scoreU - 1000;
          };
          if(_scoreU < 0)then{
            _score = _scoreU + 1000;
          };
        };
        if(_levelU < 0) then {
          if(_scoreU > 0)then{
            _score = _scoreU - 1000;
          };
          if(_scoreU < 0)then{
            _score = _scoreU + 1000;
          };
        };

        _ntab1U = [_tab1U select 0,_scoreU,_ndeathU];
        _ntab2U =  _tab2U;
        _nStatU = [_ntab1U,_ntab2U];
        _u=["update",[_uidK,_nStatU]] call BAB_fnc_redisfunction;

  };
  case 1 : {
    _uidK = _this select 1;
    _killThis = _this select 2;

    _statK =  ["show",[_uidK,true]] call BAB_fnc_redisfunction;

    _tab1K = _statK select 0;
    _tab2K = _statK select 1;
    _levelk = _tab1K select 0;
    _scoreValue = _tab1K select 1;
    _deathK = _tab1K select 2;
    _iaKillK = _tab2K select 0;
    _zedsKillK = _tab2K select 1;
    _playerKillK = _tab2K select 2;



    _niaKillK = _iaKillK;
    _nplayerKillK = _playerKillK;
    switch (_killThis) do {
      case "zeds": { //is zeds
        _zedsKillK = _zedsKillK +1;
      };
      case "ia": { //isas by A3EAI
        _iaKillK = _iaKillK +1;
      };
      case "player": { //is player but recheck for sure

          _playerKillK = _playerKillK +1;
        };
      };

      _ntab1k = [_levelk,_scoreValue,_killThis] call BAB_fnc_preparescore;
      _ntab1k pushBack _deathK;
      _ntab2k = [_iaKillK,_zedsKillK,_playerKillK];
      _nStatK = [_ntab1k,_ntab2k];
      _k=["update",[_uidK,_nStatK]] call BAB_fnc_redisfunction;

      _Killer = [_uidK] call BAB_fnc_getmyplayer;
      _ownerK = owner _Killer;

      missionNamespace setVariable["StatLVL",_k];
      _ownerK publicVariableclient "StatLVL";
  };

};

  _finalReturnValue = "Function onkilledaction executed";
