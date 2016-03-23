//_type = sniper, unit, gunner,
//_style = gendarmerie, daesh
//[_grp, _style,_type,_pos]

//[_grp, "unit","gendarmerie",_pos,_rad]
private ["_type","_style","_unit","_grp","_pos","_area"];


_grp = _this select 0;
_type = _this select 1;
_style = _this select 2;

_pos = _this select 3;
_area = _this select 4;
_skill = _this select 5;
_unitType = "gign_soldier1";
switch (_style) do {
    case "gendarmerie" : {

      _unitList = [
      "gign_soldier1",
      "gign_soldier2",
      "gign_soldier4",
      "gign_soldier5",
      "gign_soldier6"
      ];
      _unitType = _unitList call BIS_fnc_selectRandom;
    };
    case "daesh" : {
      _unitType = "";
    };
};

 _unit = _grp createUnit [_unitType,_pos,[],_skill,"NONE" ];
 _unit setVariable ["copLevel",1,true];
 _unit setVariable ["startPos",_pos];
 _unit setVariable ["patrolArea",_area];
 [_unit] joinSilent _grp;

 _listItems = items _unit;
 _countItems = count _listItems;
_b=0;
 while{ _b < _countItems } do {

   _unit removeItems "FirstAidKit";
    _b = _b + 1;
 };
