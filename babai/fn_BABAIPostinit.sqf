BLACKLISTEDAREAFORZEDS = [
  [ [32022.9,4244.5,0.0013175]  , 3500],
  [ [29986,17443.3,0.00143814]  , 150]
  ];

  diag_log "Start Patrol";

[] execVM "\BABAI\init\init_patrol.sqf";
diag_log "Start Zeds";
[] execVM "\BABAI\init\init_zeds.sqf";
