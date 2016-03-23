
//private ["_named","_pos","_size[A,B]","_shape","_color"];
_markerPosition = [
					["Protected_Area",[32022.9,4244.5,0.0013175],[3500, 2500],"ELLIPSE","ColorRed"," >>> Sector B Area <<< "],
					["Prison_Area",[29986,17443.3,0.00143814],[150,80],"ELLIPSE","ColorRed"," >>> Prison Area <<< "]
					];

{
	_named = _x select 0;
	_pos = _x select 1;
	_size = _x select 2;
	_shape = _x select 3;
	_color = _x select 4;
	_text = _x select 5;

	 [_named,_pos,_size,_shape,_color,_text] call BABSPAWNVEHICLE_fnc_spawnmarkers;

} forEach _markerPosition;
