
    _level = _this select 0;
    _score = _this select 1;
    _typeKill = _this select 2;
    _scoreToadd=1000;
    _scoreprepare=0;
    _scoreadd=0;



    if ((_level < 0) && (_level > -10)) then {
      _ratio = _level * (-0.1);
      _va = _scoreToadd * _ratio;
      _scoreprepare = _scoreToadd - (_va);

      if(_typeKill == "player") then {
        _scoreadd = _scoreprepare * (-1);
      }else {
        _scoreadd = _scoreprepare;
      };


    };
    if((_level < -9) && (_level > -100)) then {
      _scoreprepare = 100 - _level;

      if(_typeKill == "player") then {
        _scoreadd = _scoreprepare * (-1);
      }else {
          _scoreadd = _scoreprepare;
      };
    };
    if(_level < -99)then {
      if(_typeKill == "player") then {
        _scoreadd = -1;
      }else {
        _scoreadd = 1;
      };

    };
    if (_level == 0) then {

      if(_typeKill == "player") then {
        _scoreadd = _scoreToadd * (-1);
      }else {
        _scoreadd = _scoreToadd;
      };
    };
    if ((_level > 0) && (_level <10)) then {
      _ratio = _level * 0.1;
      _va = _scoreadd * _ratio;
      _scoreprepare = _scoreToadd - _va;

      if(_typeKill == "player") then {
        _scoreadd = _scoreprepare * (-1);
      }else {
        _scoreadd = _scoreprepare;
      };


    };
    if ((_level > 9) && (_level <100)) then {
      _va = 100 - _level;
      _scoreprepare = _scoreToadd - _va;
      if(_typeKill == "player") then {
        _scoreadd = _scoreprepare * (-1);
      }else {
        _scoreadd = _scoreprepare;
      };



    };
    if(_level > 99) then {
      if(_typeKill == "player") then {
        _scoreadd =  -1;
      }else {
        _scoreadd = 1;
      };
    };




    _lvlUp= 100000 * ( _level + 1) + (100000 * (_level+1)/10);
    _lvlDown = 100000 * ( _level - 1) - (100000 * (_level-1)/10);
    _newscore = _score + _scoreadd;

    _nlevel = _level;
    if(_newscore > _lvlUp) then {

      _nlevel = _level +1;
      _newscore = 0;
    }
    else {
      if(_newscore < _lvlDown) then {
        _nlevel = _level -1;
        _newscore = 0;
      }
      else {
      _nlevel = _level;
      };
    };


    _returnValue = [_nlevel,_newscore];
    _returnValue;
