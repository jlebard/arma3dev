/**

_r = "xxxxxxxxxxxxx" call BABLEVEL_fnc_getplayerstat;

return array :

template : [[lvl,death,xp,[title_1,title_2,...]],[playerkill,zedskill,epochSapperF,epochSapperB_F,epochcloak,greatwhite,iakill],[[weapons class, count fired],[...]]]
default : [ [0,0,0,[] ] , [0,0,0,0,0,0,0] , [] ] ;
**/


private ["_playeruid","_result","_data","_responseREDIS"];



_playeruid = _this;
_responseREDIS = [DBPREFIXBABLEVEL, _playeruid] call EPOCH_fnc_server_hiveGETRANGE;
 _data = [[0,0,0,[]],[0,0,0,0,0,0,0,0],[],[]];
if ((_responseREDIS select 0) == 1 && typeName(_responseREDIS select 1) == "ARRAY")
  then {
   _arr = _responseREDIS select 1;
   if(typeName(_arr select 0) != "ARRAY")
    then {
     [DBPREFIXBABLEVEL, _playeruid, _data] call EPOCH_fnc_server_hiveSET;
     _data =  [DBPREFIXBABLEVEL, _playeruid] call EPOCH_fnc_server_hiveGETRANGE;
   }else {
      _data = _arr;
   };
}
else {
  [DBPREFIXBABLEVEL, _playeruid, _data] call EPOCH_fnc_server_hiveSET;
  _data =  [DBPREFIXBABLEVEL, _playeruid] call EPOCH_fnc_server_hiveGETRANGE;
};

_result = _data;
_result;
