class CfgPatches {
	class BABSPAWNVEHICLE {
		units[] = {};
		weapons[] = {};
		BABSPAWNVEHICLE_version = 0.1;
		requiredVersion = 1.56;
		requiredAddons[] = {"a3_epoch_server"};
	};
};

class CfgFunctions {
	class BABSPAWNVEHICLE {
		class main {
			file = "BABSPAWNVEHICLE";
			class BABPreinit {
				//preInit = 1;
				preInit = 1;
			};
			class BABPostinit {
				//preInit = 1;
				postInit = 1;
			};
		};

		class BAB_scripts
		{
			file = "BABSPAWNVEHICLE\functions";
			class spawnplanes {};
			class spawnloot {};
			class spawnmarkers {};





		};
	};
};
