_handlerMissionEntityKilled = addMissionEventHandler ["EntityKilled",{

[_killed,_killer] call BAB_fnc_onkilledaction;

}];
