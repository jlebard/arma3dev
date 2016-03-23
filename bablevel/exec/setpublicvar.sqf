

_config = "BABLEVELCONFIG" call EPOCH_returnConfig;

_typedb = _config select 0;
_itemdb = configName _typedb;

DBPREFIXBABLEVEL = getText (_config >> _itemdb >> "prefixdb");

diag_log format ["DBPREFIXBABLEVEL = %1",DBPREFIXBABLEVEL];

_typeconfig = _config select 1;
_itemconfig = configName _typeconfig;

_zedsFaction = getText (_config >> _itemdb >> "zedsfaction");
_iaFaction = getText (_config >> _itemdb >> "iafaction");
_epochplayerFaction =  getText (_config >> _itemdb >> "epochplayerfaction");
_epochiaFaction =  getText (_config >> _itemdb >> "epochiafaction");
_epochzedslist = getArray  (_config >> _itemdb >> "epochzeds");
CONFIGBABLEVELUNITS = [_zedsFaction,_iaFaction,_epochplayerFaction,_epochiaFaction,_epochzedslist];




diag_log format ["CONFIGBABLEVELUNITS = %1",CONFIGBABLEVELUNITS];
