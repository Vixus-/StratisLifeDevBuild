if (side player == west) then {
if ((player getVariable "mymoney") < 20000) then
{
hint format["You need 20000 $ to buy this! You only got %1 $!",(player getVariable "mymoney")];
}
else {
if (player in list trgswatbase) then {
copitemspawn_1 addWeaponCargo ["arifle_MX_F",1];
copitemspawn_1 addMagazineCargo ["30Rnd_65x39_caseless_mag",1];
player setVariable["mymoney",(player getVariable "mymoney") - 20000];
hint format["You bought a Rifle for 20000 $! You got %1 $ left!",(player getVariable "mymoney")];
};

if (player in list Cop_base) then {
copitemspawn addWeaponCargo ["arifle_MX_F",1];
copitemspawn addMagazineCargo ["30Rnd_65x39_caseless_mag",1];
player setVariable["mymoney",(player getVariable "mymoney") - 20000];
hint format["You bought a Rifle for 20000 $! You got %1 $ left!",(player getVariable "mymoney")];
};
};
}
else {
hint "You need to be a cop to buy this weapon";
};
