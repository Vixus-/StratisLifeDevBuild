if (side player == west) then {
if ((player getVariable "mymoney") < 1500) then
{
hint format["You need 1500 $ to buy this! You only got %1 $!",(player getVariable "mymoney")];
}
else {
if (player in list trgswatbase) then {
copitemspawn_1 addMagazineCargo ["30Rnd_65x39_caseless_mag",5];
player setVariable["mymoney",(player getVariable "mymoney") - 1500];
hint format["You bought a Rifle ammo for 1500 $! You got %1 $ left!",(player getVariable "mymoney")];
};

if (player in list Cop_base) then {
copitemspawn addMagazineCargo ["30Rnd_65x39_caseless_mag",5];
player setVariable["mymoney",(player getVariable "mymoney") - 1500];
hint format["You bought a Rifle ammo for 1500 $! You got %1 $ left!",(player getVariable "mymoney")];
};
};
}
else {
hint "You need to be a cop to buy this weapon";
};
