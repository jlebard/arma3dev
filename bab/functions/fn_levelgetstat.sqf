private["_uid","_prefix","_response","_data","_arr"];

_uid = _this select 0;


_prefix = PREFIX_LEVELING;
// get reference to player and get playerUID to use as unique key


// Get data using prefix:key. "PlayerMYCustomKey" is the prefix and "_plyrUID" unique key.


 _data=[[0,0,0],[0,0,0]];

_response = [_prefix, _uid] call EPOCH_fnc_server_hiveGETRANGE;

if ((_response select 0) == 1 && typeName(_response select 1) == "ARRAY") then {

   _arr = _response select 1;
   _data = [[0,0,0],[0,0,0]];
   if(typeName(_arr select 0) != "ARRAY")then {
     _data = [[0,0,0],[0,0,0]];
     [_prefix, _uid, _data] call EPOCH_fnc_server_hiveSET;
     _data =  [_prefix, _uid] call EPOCH_fnc_server_hiveGETRANGE;
   }else {
      _data = _arr;
   };


   // do something with _arr data here
}
else {
  _data = [[0,0,0],[0,0,0]];
  [_prefix, _uid, _data] call EPOCH_fnc_server_hiveSET;


};

_data;
