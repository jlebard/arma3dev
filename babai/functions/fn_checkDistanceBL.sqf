private["_posATL"];

_posATL = _this;
_return = [];

{
  _BLposATL = _x select 0;
  _BLdistMin = _x select 1;
  _dist = _posATL distance _BLposATL;
  if(_dist < _BLdistMin)then {
    _return pushBack "true";
  } else {
      _return pushBack "false";
  };



    //code
} forEach BLACKLISTEDAREAFORZEDS;

_return;
