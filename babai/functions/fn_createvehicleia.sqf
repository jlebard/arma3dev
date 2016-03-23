private ["_type","_pos","_vehicle"];
_type = _this select 0;
_pos = _this select 1;
_vehicle = "";
switch (_type) do {
    //cases (insertable by snippet)
    case "vehicle": {
      _vehicle = "B_G_Offroad_01_armed_EPOCH" createVehicle _pos;
    };
    case "fly" : {
      _vehicle = createVehicle ["O_Heli_Light_02_v2_F" , _pos, [], 0, "FLY"];
      _vehicle removeMagazineTurret ["12Rnd_missiles", [0]];
    };
    case "ship": {
      _vehicle = "B_G_Offroad_01_armed_EPOCH" createVehicle _pos;
    };
};

_vehicle addEventHandler ["fuel",{ (_this select 0) setFuel 1 ;}];
_vehicle;
