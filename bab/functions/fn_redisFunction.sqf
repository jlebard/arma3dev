
// exemple ["show",["xxxxxxxxxxx","true"]]
private["_why","_data","_result"];

_why = _this select 0;
_data = _this select 1;
_uid = _data select 0;
_result = [[0,0,0],[0,0,0]];
switch (_why) do {

  case "show": {

    _result = [_uid] call BAB_fnc_levelgetstat;


  };
  case "update":{

    _updateData = _data select 1;
    _addStat=[_uid,_updateData] call BAB_fnc_leveladdstat;
    _result = [_uid] call BAB_fnc_levelgetstat;

  };
  case "delete":{

  };
};

_result;
