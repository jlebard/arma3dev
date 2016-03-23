
_center = createCenter sideLogic;

AllLocation = [];



{
  _location = _x;
  _posATL = locationPosition _location;
_nameLocation = text _location;
_response = _posATL call BABAI_fnc_checkdistancebl;
_t = floor (random 20);
if("true" in _response) then {

  diag_log  format["no Zeds spawn Marker on %1 at %2",_nameLocation,_posATL];

}
else {
  diag_log format["Zeds spawn Marker on %1 at %2",_nameLocation,_posATL];
  if (_t > 8) then {

  _marker = createMarker[_nameLocation,_posATL];
  //_named setMarkerSize _size;
  _nameLocation setMarkerShape "ICON";
  _typeLocation = type _location;
    diag_log format["this %1 , type %2",_nameLocation,_typeLocation];
    switch (_typeLocation) do {

      case "Namevillage" : {
        _nameLocation setMarkerColor "ColorBlack";
        _nameLocation setMarkerType "Toxic_Black";
        _radius = 50;

      [1,_posATL,_radius,_center,1,[0.6,0.37,0.4,[],3,20,300,10,5],"black",_nameLocation] call BABAI_fnc_generaterandomlogicpos;

      };
      case "Namelocal" : {
        _nameLocation setMarkerColor "ColorGreen";
        _nameLocation setMarkerType "Toxic_Green";
        _radius = 200;
          [1,_posATL,_radius,_center,1,[0.6,0.37,0.4,[],5,30,200,5,10],"green",_nameLocation] call BABAI_fnc_generaterandomlogicpos;
     };
      case "Namecity" : {
        _nameLocation setMarkerColor "ColorYellow";
        _nameLocation setMarkerType "Toxic_Yellow";
          _radius = 400;
            [2,_posATL,_radius,_center,2,[0.6,0.37,0.4,[],10,50,100,2,20],"yellow",_nameLocation] call BABAI_fnc_generaterandomlogicpos;
      };
      case "NameCityCapital" : {
          _nameLocation setMarkerColor "ColorRed";
          _nameLocation setMarkerType "Toxic_Red";
          _radius = 800;
  [4,_posATL,_radius,_center,3,[0.6,0.37,0.4,[],20,100,60,1,40],"red",_nameLocation] call BABAI_fnc_generaterandomlogicpos;
      }; //cases (insertable by snippet)
    };
  };

};




} forEach nearestLocations [[0,0,0], ["NameVillage","NameCity","NameCityCapital","NameLocal"], 250000];

//"NameVillage","NameCity",
