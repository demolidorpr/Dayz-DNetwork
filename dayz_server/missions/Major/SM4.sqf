//Bandit Supply Heli Crash by lazyink (Full credit for original code to TheSzerdi & TAW_Tonic)

private ["_majortimeout","_cleanmission","_playerPresent","_starttime","_coords","_MainMarker","_chopper","_wait"];
[] execVM "\z\addons\dayz_server\Missions\SMGoMajor.sqf";

WaitUntil {MissionGo == 1};

_coords = [getMarkerPos "center",0,5500,30,0,20,0] call BIS_fnc_findSafePos;

//Mission start
[nil,nil,rTitleText,"A bandit supply helicopter has crash landed! Check your map for the location!", "PLAIN",10] call RE;
[nil,nil,rGlobalRadio,"A bandit supply helicopter has crash landed! Check your map for the location!"] call RE;
MissionGoName = "Bandit Supply Heli Crash";
publicVariable "MissionGoName"; 

Ccoords = _coords;
publicVariable "Ccoords";
[] execVM "debug\addmarkers.sqf";

_chopper = ["UH1H_DZE","Mi17_DZE"] call BIS_fnc_selectRandom;

_hueychop = createVehicle [_chopper,_coords,[], 0, "NONE"];
_hueychop setVariable ["Sarge",1,true];
_hueychop setFuel 0.1;
_hueychop setVehicleAmmo 0.2;

_crate2 = createVehicle ["USLaunchersBox",[(_coords select 0) - 6, _coords select 1,0],[], 0, "CAN_COLLIDE"];
[_crate2] execVM "\z\addons\dayz_server\missions\misc\fillBoxesS.sqf";

_crate3 = createVehicle ["USLaunchersBox",[(_coords select 0) + 6, _coords select 1,0],[], 90, "CAN_COLLIDE"];
[_crate3] execVM "\z\addons\dayz_server\missions\misc\fillBoxesS.sqf";

_crate4 = createVehicle ["RULaunchersBox",[(_coords select 0) - 14, (_coords select 1) -10,0],[], 0, "CAN_COLLIDE"];
[_crate4] execVM "\z\addons\dayz_server\missions\misc\fillBoxesH.sqf";

_aispawn = [_coords,80,6,6,1] execVM "\z\addons\dayz_server\missions\add_unit_server.sqf";//AI Guards
sleep 5;
_aispawn = [_coords,80,6,4,1] execVM "\z\addons\dayz_server\missions\add_unit_server.sqf";//AI Guards
sleep 5;
_aispawn = [_coords,40,4,4,1] execVM "\z\addons\dayz_server\missions\add_unit_server.sqf";//AI Guards

_majortimeout = true;
_cleanmission = false;
_playerPresent = false;
_starttime = floor(time);
while {_majortimeout} do {
	sleep 5;
	_currenttime = floor(time);
	{if((isPlayer _x) AND (_x distance _hueychop <= 350)) then {_playerPresent = true};}forEach playableUnits;
	if (_currenttime - _starttime >= 3600) then {_cleanmission = true;};
	if ((_playerPresent) OR (_cleanmission)) then {_majortimeout = false;};
};

if (_playerPresent) then {
	waitUntil{{isPlayer _x && _x distance _hueychop < 10  } count playableunits > 0}; 

	//Mission accomplished
	[nil,nil,rTitleText,"The helicopter has been taken by survivors!", "PLAIN",6] call RE;
	[nil,nil,rGlobalRadio,"The helicopter has been taken by survivors!"] call RE;
	[_hueychop , typeOf _hueychop] call server_updateObject;
} else {
	_hueychop setDamage 1.0;
	_hueychop setVariable ["Sarge", nil, true];
	deleteVehicle _crate2;
	deleteVehicle _crate3;
	deleteVehicle _crate4;
	[nil,nil,rTitleText,"Bandits have cleared the heli crash!", "PLAIN",6] call RE;
	[nil,nil,rGlobalRadio,"Bandits have cleared the heli crash!"] call RE;
};

[] execVM "debug\remmarkers.sqf";
MissionGo = 0;
Ccoords = 0;
publicVariable "Ccoords";
MissionGoName = "";
publicVariable "MissionGoName"; 


SM1 = 5;
[0] execVM "\z\addons\dayz_server\missions\major\SMfinder.sqf";
