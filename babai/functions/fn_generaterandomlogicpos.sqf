private ["_count","_pos","_radius","_center"];

_count = _this select 0;
_pos = _this select 1;
_radius = _this select 2;
_center = _this select 3;
_coef = _this select 4;
_setting = _this select 5;
_type = _setting select 0;/// 0.6
_type2 = _setting select 1; //0.37
_type3 = _setting select 2; // 0.4
_type4 = _setting select 3; //
_aliveamount = _setting select 4;
_totalamount = _setting select 5;
_frequency = _setting select 6;
_delay = _setting select 7;
_hordesize = _setting select 8;
_color = _this select 6;
_name = _this select 7;

_rad = _radius / _coef;


////


_rM = [
  [_center,_pos],
  0.9,
  _type,
  _type2,
  _type3,
  _type4,
  0.5,
  0.9,
  0.9,
   _rad,
   _aliveamount,
   _totalamount,
   5,
   _frequency,_delay,0,_hordesize];
   _rM call BABAI_fnc_createunitlogic;



   _nameMarkerM = format["%1_zeds_marker",_name];
   createMarker [_nameMarkerM, _pos];
   _nameMarkerM setMarkerShape "ELLIPSE";
   _nameMarkerM setMarkerSize [_radius,_radius];
   _nameMarkerM setMarkerBrush "DIAGGRID";
   _colorMbrush = "";
   switch (_color) do {
       case "black":{
           _colorMbrush ="ColorBlack";
         };//cases (insertable by snippet)
       case "green":{
         _colorMbrush ="ColorGreen";
       };
       case "yellow":{
         _colorMbrush ="ColorYellow";
       };
       case "red":{
         _colorMbrush ="ColorRed";
       };
   };

   _nameMarkerM setMarkerColor _colorMbrush;

///



for "_i" from 0 to _count do {
  diag_log format["%1 logic spawn start",_i];

  _spawnpostion = [[[_pos , _radius]] ,["water","out"]] call BIS_fnc_randomPos;

  _stringRadius = format ["%1",_rad];
  _nameMarker = format["%1_zeds_marker_%2",_name,_i];
  _marker = createMarker [_nameMarker, _spawnpostion];
  _nameMarker setMarkerShape "ICON";
  //_nameMarker setMarkerSize [_rad/2,_rad /2];
  //_nameMarker setMarkerBrush "DIAGGRID";
  _colorbrush = "";
  _iconMarker ="";
  switch (_color) do {
      case "black":{
          _colorbrush ="ColorBlack";
          _iconMarker = "Toxic_Black";
        };//cases (insertable by snippet)
      case "green":{
        _colorbrush ="ColorGreen";
        _iconMarker = "Toxic_Green";
      };
      case "yellow":{
        _colorbrush ="ColorYellow";
        _iconMarker = "Toxic_Yellow";
      };
      case "red":{
        _colorbrush ="ColorRed";
        _iconMarker = "Toxic_Red";
      };
  };

  _nameMarker setMarkerColor _colorbrush;
  _nameMarker setMarkerType _iconMarker;
  _r = [
    [_center,_spawnpostion],
    0.9,
    _type,
    _type2,
    _type3,
    _type4,
    0.5,
    0.9,
    0.9,
     _rad,
     _aliveamount,
     _totalamount,
     5,
     _frequency,_delay,0,_hordesize];

  _r call BABAI_fnc_createunitlogic;



  diag_log format["%1 logic spawn end with this value %2",_i,_r];


};
