//Set bdd redis

PREFIX_LEVELING = "BabLeveling";

LEVEL_AllUser=[];
//[str serverTime,["server_start","nice",str serverTime]] call BAB_fnc_leveladdstat;
onPlayerConnected
{
  //[(str serverTime),["onPlayerConnected","nice"]] call BAB_fnc_leveladdstat;
  _data   =   [_uid]  call BAB_fnc_levelgetstat;



  missionNamespace setVariable ["StatLVL", _data];
  _owner publicVariableclient "StatLVL";

};
