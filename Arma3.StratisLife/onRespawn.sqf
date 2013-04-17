_playerasinrespawn = _this select 0;
if (player == _playerasinrespawn) then {
	player removeAction 0;
	player removeAction 1;
	player removeAction 2;
	player removeAction 3;
	player removeAction 4;
	player removeAction 5;
	player removeAction 6;
	player removeAction 7;
	player removeAction 8;
	player removeAction 9;
	player removeAction 10;
	player removeAction 11;
	player removeAction hero;
	player removeAction whale;
	player removeAction fish;
	player removeAction apple1;
	player removeAction apple2;
	player removeAction personalinv;
	disableUserInput false;
	hint "Respawning...";
	player action ["hideBody",player];
	Player setVariable ["mymoney",0];
	isrestrained = 0;
	victim2 = 0;
	thirstLevel = 100;
	player setVariable["usedspace",0];
	player setVariable["totalspace",60];
	player setVariable["itemwhale",0];
	player setVariable["itemunpheroin",0];
	player setVariable["itemproheroin",0];
	player setVariable["itemapple",0];
	player setVariable["itemfish",0];
	player setVariable["itemunpoil",0];
	player setVariable["itemprooil",0];
	player setVariable["mymoney",0];
	waitUntil { alive player };
	hero = player addAction ["Farm Heroin","farming\startheroin.sqf",[],7,true,true,"","player in list trgHerofield"];
	whale = player addAction ["Get Whale","farming\startwhale.sqf",[],7,true,true,"","player in list trgWhalefield"];
	fish = player addAction ["Catch Fish","farming\startfish.sqf",[],7,true,true,"","player in list trgFishfield"];
	apple1 = player addAction ["Gather Apples","farming\startapple.sqf",[],7,true,true,"","player in list trgApplefield1"];
	apple2 = player addAction ["Gather Apples","farming\startapple2.sqf",[],7,true,true,"","player in list trgApplefield2"];
	oil = player addAction ["Gather oil","farming\startoil.sqf",[],7,true,true,"","player in list trgOilfield"];
	if(side player == civilian)then{
	personalinv = player addaction ["Personal Inventory", "inventory.sqf", [], 1, false, false, "", ""];
	};
	/*if(side player == west)then{
	personalinv = player addaction ["Personal Inventory", "copinventory.sqf", [], 1, false, false, "", ""];
	null = [] execvm "somstart.sqf";
	act1 = player addaction ["Cop Menu [W.I.P]", "somscripts\menu\open.sqf", [], 1, false, false, "", ""];
	};*/
};
		
if (side player == west) then {
_playerasinrespawn removeAction unrestrain;
_playerasinrespawn removeAction jail;
_playerasinrespawn removeAction frisk;
};

