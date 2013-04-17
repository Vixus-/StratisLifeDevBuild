if (isServer) then 
{
	victim = 0;
	shotby = 0;
	dmg = 0;
	shooter = 0;
	"shotby" addPublicVariableEventHandler {execVM "stunEH.sqf"};
	execVM "bankinit.sqf";
};
if !(isServer) then 
{
	waitUntil { alive player };
};
dp1reward = 5000;
dp2reward = 6000;
whalerate = 1;
heroinrate = 1;
applerate = 2;
fishrate = 2;
oilrate = 1;
applesellprice = 325;
fishsellprice = 750;
heroinsellprice = 1250;
whalesellprice = 10000;
oilsellprice = 12000;
oilprocessprice = 250;
heroinprocessprice = 250;
thirstLevel = 100;
starttrue = 0;
bankcanberobbed = 1;

//execVM "keybinds.sqf";

player setVariable["mylicenses", "_wip"];
player setVariable["myinventory", "_wip"];
player setVariable["mywanted", "_wip"];

player setVariable["isrestrained",0];

player setVariable["mymoney",0];
player setVariable["bankmoney", 15000000];
player setVariable["thirstLevel", 100];
player setVariable["iswanted",0];
player setVariable["mypaycheck", 2500];
player setVariable["totalspace", 60];
player setVariable["usedspace",0];
player setVariable["itemwhale",0];
player setVariable["itemunpheroin",0];
player setVariable["itemproheroin",0];
player setVariable["itemapple",0];
player setVariable["itemfish",0];
player setVariable["itemunpoil",0];
player setVariable["itemprooil",0];

player setVariable["driverlicense",0];
player setVariable["gunlicense",0];
player setVariable["airlicense",0];
player setVariable["boatlicense",0];
player setVariable["terrorlicense",0];
player setVariable["oilprocesslicense",0];
player setVariable["heroinprocesslicense",0];

sirenloop = 0;
stunned = 0;
stunshooter = 0;
dmg = 0;
stunsound = 0;
transfern = 0;
transfera = 0;
transferi = 0;
stunnedhint = 0;
shooterhint = 0;
"dmg" addPublicVariableEventHandler {currenthp = getDammage player; player setdamage (currenthp - dmg);};
"transfera" addPublicVariableEventHandler {if(name player == transfern)then{player execVM 'transferbank.sqf';hint format[' %1$ has been transfered to your account ',transfera];};};
"shooterhint" addPublicVariableEventHandler {hint format["%1 has been stunned by %2", stunnedhint, shooterhint];};

if(side player == west) then
{
	player setVariable["driverlicense", 1];
	player setVariable["mypaycheck", 5000];
	Player addEventHandler ["Fired","shooter = (_this select 0); weapon = (_this select 1); execVM 'firedEH.sqf'"];
	personalinv = player addaction ["Personal Inventory", "copinventory.sqf", [], 1, false, false, "", ""];
	act1 = player addaction ["Cop Menu [W.I.P]", "somscripts\menu\open.sqf", [], 1, false, false, "", ""];
	execVM "somscripts\som_init.sqf";
	patrolmission = 0;
};
if(side player == civilian) then
{
	"stunned" addPublicVariableEventHandler {if(player == stunned)then{stunned execVM 'stun.sqf'; execVM 'stunsound.sqf';};};
	Player addMPEventHandler ["MPhit","victim = (_this select 0); shotby = (_this select 1); dmg = (_this select 2); execVM 'hitEH.sqf'"];
	personalinv = player addaction ["Personal Inventory", "inventory.sqf", [], 1, false, false, "", ""];
};

tazerFunction = compile preprocessFileLineNumbers "stunsound.sqf";
paydayFunction = preprocessFileLineNumbers "paycheck.sqf"; 
sirenFunction = compile preprocessFileLineNumbers "siren4.sqf";
restrainFunction = compile preprocessFileLineNumbers "restrain\restrain3.sqf";
unrestrainFunction = compile preprocessFileLineNumbers "restrain\unrestrain2.sqf";
jailFunction = compile preprocessFileLineNumbers "jail\jail2.sqf";
friskFunction = compile preprocessFileLineNumbers "frisk\frisk2.sqf";
vehiclepulloutFunction = compile preprocessFileLineNumbers "vehiclelock\eject2.sqf";
vehiclepullout2Function = compile preprocessFileLineNumbers "vehiclelock\eject3.sqf";
robbankFunction = compile preprocessFileLineNumbers "banking\robbank2.sqf";
robbanksirenFunction = compile preprocessFileLineNumbers "banking\robbanksiren.sqf";
impoundFunction = compile preprocessFileLineNumbers "impound\impound2.sqf";
usedspace_Fnc = compile preprocessFileLineNumbers "usedspace.sqf";
//weatherFunction = compile preprocessFileLineNumbers "dynweather2.sqf";
//timeFunction = compile preprocessFileLineNumbers "dyntime2.sqf";

// Initializing Keys
MY_KEYDOWN_FNC = 
{
	switch (_this) do 
	{
		case 35: 
		{
			nul = [] execVM "keyspressed.sqf";
		};
	};
}; 

//Adding Triggers
hero = player addAction ["Farm Heroin","farming\startheroin.sqf",[],7,true,true,"","player in list trgHerofield"];
whale = player addAction ["Get Whale","farming\startwhale.sqf",[],7,true,true,"","vehicle player in list trgWhalefield"];
fish = player addAction ["Catch Fish","farming\startfish.sqf",[],7,true,true,"","vehicle player in list trgFishfield"];
apple1 = player addAction ["Gather Apples","farming\startapple.sqf",[],7,true,true,"","player in list trgApplefield1"];
apple2 = player addAction ["Gather Apples","farming\startapple2.sqf",[],7,true,true,"","player in list trgApplefield2"];
oil = player addAction ["Gather oil","farming\startoil.sqf",[],7,true,true,"","player in list trgOilfield"];
execVM "paycheck.sqf";
execVM "safezone.sqf"
execVM "siren.sqf";
execVM "siren2.sqf";
execVM "safezonecopbase.sqf";
execVM "savezoneswatbase.sqf";
execVM "buildingprot.sqf";
execVM "usedspace.sqf";

//Playerhud & Thirst
execVM "playerhud.sqf";
player addMPEventHandler ["Respawn",{player execVM "onRespawn.sqf"}];
//thirst setdamage 0 so you dont die atm
execVM "thirst.sqf";
sleep 300;
starttrue = 1;


