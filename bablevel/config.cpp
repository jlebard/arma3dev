class CfgPatches {
	class BABLEVEL {
		units[] = {};
		weapons[] = {};
		BAB_version = 0.1.0;
		requiredVersion = 1.56;
		requiredAddons[] = {"a3_epoch_server"};
	};
};
class CfgRemoteExec
{
       // List of script functions allowed to be sent from client via remoteExec
       class Functions
       {
               // State of remoteExec: 0-turned off, 1-turned on, taking whitelist into account, 2-turned on, however, ignoring whitelists (default because of backward compatibility)
               mode = 1;
               // Ability to send jip messages: 0-disabled, 1-enabled (default)
               jip = 1;

							 class BABLEVEL_fnc_onfiredaction {
								 allowedTargets = 0;
							 };
							 class BABLEVEL_fnc_getplayerstat {
								 allowedTargets = 0;
							 };

        };
};

class CfgFunctions {
	class BABLEVEL {
		class main {
			file = "BABLEVEL";
			class BABLEVELPreinit {
				//preInit = 1;
				preInit = 1;
			};
			class BABLEVELPostinit {
				//preInit = 1;
				postInit = 1;
			};
		};

		class BABLEVEL_functions
		{
			file = "BABLEVEL\functions";
			class getplayerstat {};
			class nextlevelvalue {};
			class onkillaction {};
			class onfiredaction {};
			class ondieaction {};
			class scorepreparearray {};
		/*	class spawnplanes {};
			class spawnloot {};
			class spawnmarkers {};
			class spawnm3editor {};
			class redisfunction {};
			class getmyplayer {};
			class levelgetstat {};
			class leveladdstat {};
			class onkilledaction {};
			class preparescore {};
*/



		};
	};
};
#include "config.hpp"
