private ["_models","_where","_dir","_vehicle"];

_models = _this select 1;
_where = _this select 2;


_vehicle = createVehicle [_models,_where,[],0,"CAN_COLLIDE"];

if(!isNil(_this select 3))then{
  _dir =_this select 3;
  _vehicle setDir _dir ;
}
