
private["_uid","_prefix","_data"];

_uid = _this select 0;
_prefix = PREFIX_LEVELING;
_data = _this select 1;


[_prefix, _uid, _data] call EPOCH_fnc_server_hiveSET;
