class BABLEVELCONFIG {
  class db {
    prefixdb = "BABLEVELING";
  };

  // "Ryanzombiesfaction" => zeds, "GIGN_units" => my ia, "OPF_F" => epochplayer , IND_F => Epoch IA military

  class config {
      iafaction = "GIGN_units";
      zedsfaction = "Ryanzombiesfaction" ;
      epochplayerfaction = "OPF_F";
      epochiafaction = "IND_F";
      epochzedsunits = ["Epoch_Cloak_F","GreatWhite_F","Epoch_Sapper_F","Epoch_SapperB_F"];

  };

};

class BABLEVELUNITSPARAMS {
  class GIGN_units {
    points = 300;
  };
  class Ryanzombiesfaction {
    points = 100;
  };
  class OPF_F {
    points = 5000;
  }
  class IND_F {
    points = 250;

  };
  class Epoch_Cloak_F {
    points = 1000;
  };
  class GreatWhite_F {
    points = 2000;
  };
  class Epoch_Sapper_F {
    points = 500;
  };
  class Epoch_SapperB_F {
    points = 500;
  };


};
