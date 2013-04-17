if ((player getVariable "usedspace") > 59) then {
hint "Inventory full, go sell the stuff at the market"
}
else
{
player removeAction fish;
hint format["Gathering Fish..."];
player setVariable["usedspace",(player getVariable "usedspace") + 2];
sleep 4;
player setVariable["itemfish",(player getVariable "itemfish") + applerate];
hint format["You got %1 Fish!!",fishrate];
waituntil {!isnull player};
fish = player addAction ["Catch Fish","farming\startfish.sqf",[],7,true,true,"","vehicle player in list trgFishfield"];
};