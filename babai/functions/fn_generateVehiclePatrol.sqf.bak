private ["_type","_pos","_rad","_a"];

_type = _this select 0;
_pos = _this select 1;
_rad = _this select 2;
_skill = _this select 3;
_grp = createGroup resistance;
_vehicle = [_type,_pos,_rad] call BABAI_fnc_createvehicleia;
    _a = 0;
while { _a < 3 } do {
  _unit = _grp createUnit ["gign_soldier1",_pos,  [],_skill,"NONE"];
  _unit setVariable ["copLevel",1,true];
  _unit setVariable ["startPos",_pos];
  _unit setVariable ["patrolArea",_rad];
  [_unit] joinSilent _grp;

  _listItems = items _unit;
  _countItems = count _listItems;
 _b=0;
  while{ _b < _countItems } do {

    _unit removeItems "FirstAidKit";
     _b = _b + 1;
  };

  

  switch (_a) do {
    case 0 : {
      _unit moveInDriver  _vehicle ;
     };
    case 1 : {
      _unit moveInGunner _vehicle ;
    };
    case 2 : {
      if (_type == "fly") then {
        _unit moveInGunner _vehicle ;
      }else {
        _unit moveInCargo _vehicle ;
      };
    };
  };
  [_pos,_grp,_rad] call BABAI_fnc_setpatrol;

  _a = _a +1;
};
