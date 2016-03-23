private ["_center","_group","_logic","_side","_type","_type2","_type3","_type4","_activation","_activation2","_activation3","_activationRadius","_aliveamount","_totalamount","_start","_frequency","_delay","_density","_hordesize"];

_data = _this select 0;
_center = _data select 0;
_pos = _data select 1;
_side = _this select 1;
_type = _this select 2;
_type2 = _this select 3;
_type3 = _this select 4;
_type4 = _this select 5;
_activation = _this select 6;
_activation2 = _this select 7;
_activation3 = _this select 8;
_activationRadius = _this select 9;
_aliveamount = _this select 10;
_totalamount = _this select 11;
_start = _this select 12;
_frequency = _this select 13;
_delay = _this select 14;
_density = _this select 15;
_hordesize = _this select 16;


_group = createGroup _center;
//_logic = _group createUnit ["LOGIC",_pos , [], 0, ""];
//_logic = _group createUnit [,_pos,[],0.60000002,"NONE"];
//_unit = _grp createUnit [_unitType,_pos,[],_skill,"NONE" ];
_logic = "RyanZM_ModuleSpawn" createUnit [_pos, _group, "

this setVariable ['Side', _side];
this setVariable ['Type', _type];
this setVariable ['Type2', _type2];
this setVariable ['Type3', _type3];
this setVariable ['Type4', _type4];
this setVariable ['Activation', _activation];
this setVariable ['Activation2', _activation2];
this setVariable ['Activation3', _activation3];
this setVariable ['ActivationRadius', _activationRadius];
this setVariable ['AliveAmount', _aliveamount];
this setVariable ['TotalAmount', _totalamount];
this setVariable ['Start', _start];
this setVariable ['Frequency', _frequency];
this setVariable ['Delay', _delay];
this setVariable ['Density', _density];
this setVariable ['HordeSize', _hordesize];

", 0.60000002];




_item1 = _group createUnit ["Ryanzombieslogicdelete",_pos,[],0.60000002,"NONE"];
_item2 = _group createUnit ["Ryanzombieslimit",_pos,[],0.60000002,"NONE"];
//_logic = _logicM select 0;
