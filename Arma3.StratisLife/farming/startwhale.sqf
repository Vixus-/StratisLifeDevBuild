if ((player getVariable "usedspace") > 59) then {
hint "Inventory full, go sell the stuff at the black market"
}
else
{
player removeAction whale;
player setVariable["usedspace",(player getVariable "usedspace") + 10];
hint format["Getting Whale..."];
sleep 10;
hint format["Getting Whale..."];
sleep 10;
hint format["Getting Whale..."];
sleep 10;
player setVariable["itemwhale",(player getVariable "itemwhale") + whalerate];
hint format["You got %1 Whale!",whalerate];
waituntil {!isnull player};
whale = player addAction ["Get Whale","farming\startwhale.sqf",[],7,true,true,"","vehicle player in list trgWhalefield"];
};
