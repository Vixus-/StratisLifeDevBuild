if (side player == civilian) then {
if ((player getVariable "usedspace") > 59) then {
hint "Inventory full, go process the heroin at the heroin process"
}
else
{
player removeAction hero;
hint format["Gathering Heroin..."];
player setVariable["usedspace",(player getVariable "usedspace") + 1];
sleep 10;
player setVariable["itemunpheroin",(player getVariable "itemunpheroin") + heroinrate];
hint format["You got %1 Heroin!",heroinrate];
waituntil {!isnull player};
hero = player addAction ["Farm Heroin","farming\startheroin.sqf",[],7,true,true,"","player in list trgHerofield"];
};
};