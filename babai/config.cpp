class CfgPatches {
	class BABAI {
		units[] = {};
		weapons[] = {};
		BABAI_version = 0.0.1;
		requiredVersion = 1.54;
		requiredAddons[] = {"a3_epoch_server"};
	};
};

class CfgFunctions {
	class BABAI {
		class main {
			file = "BABAI";
		class BABAIPostinit {
				//preInit = 1;
				postInit = 1;
			};
		};

		class BABAI_scripts
		{

			file = "BABAI\functions";
      class generateunit{} ;
			class setpatrol {};
			class createvehicleia {};
			class generatevehiclepatrol {};
			class checkdistancebl{};
			class createunitlogic {};
			class generaterandomlogicpos{};		

		};
	};
};
