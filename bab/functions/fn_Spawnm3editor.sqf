
private["_valueM3editor"];
private ["_obj"];
_valueM3editor = _this;
	_obj = createVehicle [_valueM3editor select 0, [0,0,0], [], 0, "CAN_COLLIDE"];
	if (_valueM3editor select 4) then {
		_obj setDir (_valueM3editor select 2);
		_obj setPos (_valueM3editor select 1);
	} else {
		_obj setPosATL (_valueM3editor select 1);
		_obj setVectorDirAndUp (_valueM3editor select 3);
	};
