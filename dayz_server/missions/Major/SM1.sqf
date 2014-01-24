//Weapons Cache by lazyink (Full credit for original code to TheSzerdi & TAW_Tonic)

private ["_missiontimeout","_cleanmission","_playerPresent","_starttime","_coords","_MainMarker","_wait"];
[] execVM "\z\addons\dayz_server\Missions\SMGoMajor.sqf";
WaitUntil {MissionGo == 1};

_coords = [getMarkerPos "center",0,5500,100,0,20,0] call BIS_fnc_findSafePos;

//Mission start
[nil,nil,rTitleText,"Bandits have discovered a weapons cache! Check your map for the location!", "PLAIN",10] call RE;
[nil,nil,rGlobalRadio,"Bandits have discovered a weapons cache! Check your map for the location!"] call RE;
MissionGoName = "Weapon Cache";

Ccoords = _coords;
publicVariable "Ccoords";
publicVariable "MissionGoName"; 
[] execVM "debug\addmarkers.sqf";

_hummer = createVehicle ["UAZ_Unarmed_UN_EP1",[(_coords select 0) + 10, (_coords select 1) - 20,0],[], 0, "CAN_COLLIDE"];
_hummer1 = createVehicle ["UAZ_Unarmed_UN_EP1",[(_coords select 0) + 20, (_coords select 1) - 10,0],[], 0, "CAN_COLLIDE"];
_hummer2 = createVehicle ["SUV_TK_EP1",[(_coords select 0) + 30, (_coords select 1) + 10,0],[], 0, "CAN_COLLIDE"];

_hummer setVariable ["Sarge",1,true];
_hummer1 setVariable ["Sarge",1,true];
_hummer2 setVariable ["Sarge",1,true];

_crate = createVehicle ["USVehicleBox",_coords,[], 0, "CAN_COLLIDE"];
[_crate] execVM "\z\addons\dayz_server\missions\misc\fillBoxes.sqf";

_aispawn = [_coords,80,6,6,1] execVM "\z\addons\dayz_server\missions\add_unit_server.sqf";//AI Guards
sleep 5;
_aispawn = [_coords,80,6,6,1] execVM "\z\addons\dayz_server\missions\add_unit_server.sqf";//AI Guards
sleep 5;
_aispawn = [_coords,40,4,4,1] execVM "\z\addons\dayz_server\missions\add_unit_server.sqf";//AI Guards
sleep 5;
_aispawn = [_coords,40,4,4,1] execVM "\z\addons\dayz_server\missions\add_unit_server.sqf";//AI Guards
sleep 5;

_missiontimeout = true;
_cleanmission = false;
_playerPresent = false;
_starttime = floor(time);
while {_missiontimeout} do {
	sleep 5;
	_currenttime = floor(time);
	{if((isPlayer _x) AND (_x distance _crate <= 350)) then {_playerPresent = true};}forEach playableUnits;
	if (_currenttime - _starttime >= 3600) then {_cleanmission = true;};
	if ((_playerPresent) OR (_cleanmission)) then {_missiontimeout = false;};
};

if (_playerPresent) then {
	waitUntil{{isPlayer _x && _x distance _crate < 10  } count playableunits > 0}; 

	//Mission accomplished
	[nil,nil,rTitleText,"The weapons cache is under survivor control!", "PLAIN",6] call RE;
	[nil,nil,rGlobalRadio,"The weapons cache is under survivor control!"] call RE;
	[_hummer , typeOf _hummer] call server_updateObject;
	[_hummer2 , typeOf _hummer2] call server_updateObject;
	[_hummer3 , typeOf _hummer3] call server_updateObject;
} else {
	_hummer setDamage 1.0;
	_hummer setVariable ["Sarge", nil, true];
	_hummer2 setDamage 1.0;
	_hummer2 setVariable ["Sarge", nil, true];
	_hummer3 setDamage 1.0;
	_hummer3 setVariable ["Sarge", nil, true];
	deleteVehicle _crate;
	[nil,nil,rTitleText,"Bandits have secured the weapons cache!", "PLAIN",6] call RE;
	[nil,nil,rGlobalRadio,"Bandits have secured the weapons cache!"] call RE;
};

[] execVM "debug\remmarkers.sqf";
MissionGo = 0;
Ccoords = 0;
publicVariable "Ccoords";
MissionGoName = "";
publicVariable "MissionGoName"; 

SM1 = 1;
[0] execVM "\z\addons\dayz_server\missions\major\SMfinder.sqf";
