class CfgPatches {
	class UD {
		units[] = {};
		weapons[] = {};
		BAB_version = 0.0.5;
		requiredVersion = 1.38;
		requiredAddons[] = {"a3_epoch_server"};
	};
};

class CfgFunctions {
	class BAB {
		class main {
			file = "BAB";
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
			file = "BAB\functions";
			class spawnplanes {};
			class spawnloot {};
			class spawnmarkers {};
			class spawnm3editor {};
			class redisfunction {};
			class getmyplayer {};
			class levelgetstat {};
			class leveladdstat {};
			class onkilledaction {};
			class preparescore {};




		};
	};
};
