


private ["_named","_pos","_size","_shape","_color","_text"];
_named = _this select 0;
_pos = _this select 1;
_size = _this select 2;
_shape = _this select 3;
_color = _this select 4;
_text = _this select 5;

_marker = createMarker[_named,_pos];
_named setMarkerSize _size;
_named setMarkerShape _shape;
_named setMarkerColor _color;


_namedText= _named +"Options";
_markerText = createMarker [_namedText, _pos ];

_namedText setMarkerText _text;
_namedText setMarkerColor "ColorBlack";
