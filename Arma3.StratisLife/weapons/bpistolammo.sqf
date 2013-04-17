if (side player == west) then {
if (mymoney < 500) then
{
hint format["You need 500 $ to buy this! You only got %1 $!",(player getVariable "mymoney")];
}
else {
if (player in list trgswatbase) then {
copitemspawn_1 addMagazineCargo ["16Rnd_9x21_Mag",10];
player setVariable["mymoney",(player getVariable "mymoney") - 500];
hint format["You bought Pistol ammo for 500 $! You got %1 $ left!",(player getVariable "mymoney")];
};
};

if (player in list Cop_base) then {
copitemspawn addMagazineCargo ["16Rnd_9x21_Mag",10];
player setVariable["mymoney",(player getVariable "mymoney") - 500];
hint format["You bought a Pistol ammo for 500 $! You got %1 $ left!",(player getVariable "mymoney")];
}
}
else {
hint "You need to be a cop to buy this item";
};

