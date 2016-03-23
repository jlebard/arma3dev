//Set bdd redis

PREFIX_LEVELING = "BabLeveling";

LEVEL_AllUser=[];

//diag_log "BAB SET PUBLIC STAT #1";


//[str serverTime,["server_start","nice",str serverTime]] call BAB_fnc_leveladdstat;
onPlayerConnected
{

  //_player = [_uid] call BAB_fnc_getmyplayer;
  _data =  ["show",[_uid,true]] call BAB_fnc_redisfunction;

  missionNamespace setVariable ["StatLVL",_data];
  _owner publicVariableclient "StatLVL";


};
