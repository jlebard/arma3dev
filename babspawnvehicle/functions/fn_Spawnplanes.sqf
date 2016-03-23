
	private ["_where","_dir","_models"];
	_where = _this select 0;
	_dir = _this select 1;
	_models = _this select 2;
	_planes = createVehicle [_models,_where,[],0,"CAN_COLLIDE"]; //createvehicle ["NOM_TYPE",getpos,[],0,"CAN_COLLIDE"];

    _planes setDir _dir;
    clearItemCargoGlobal _planes ;
    clearBackpackCargoGlobal _planes ;
    _planes addBackpackCargoGlobal ["B_Parachute",10];
    _planes addItemCargoGlobal ["FAK",10];
    _planes allowDamage false;
    _planes setVectorUp (surfaceNormal (getPos _planes));
    _planes lock true;
    _planes allowDamage true;


