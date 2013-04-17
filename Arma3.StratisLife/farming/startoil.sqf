if (side player == civilian) then {
if ((player getVariable "usedspace") > 59) then {
hint "Inventory full, go process the oil at the oil process"
}
else
{
player removeAction oil;
hint format["Gathering Oil..."];
player setVariable["usedspace",(player getVariable "usedspace") + 10];
sleep 10;
player setVariable["itemunpoil",(player getVariable "itemunpoil") + oilrate];
hint format["You got %1 oil!",oilrate];
waituntil {!isnull player};
oil = player addAction ["Gather oil","farming\startoil.sqf",[],7,true,true,"","player in list trgOilfield"];
};
};