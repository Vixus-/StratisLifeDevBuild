if (side player == west) then {
if ((player getVariable "mymoney") < 1000) then
{
hint format["You need 1000 $ to buy this! You only got %1 $!",(player getVariable "mymoney")];
}
else {
if (player in list trgswatbase) then {
copitemspawn_1 addWeaponCargo ["hgun_P07_F",1];
copitemspawn_1 addMagazineCargo ["16Rnd_9x21_Mag",1];
player setVariable["mymoney",(player getVariable "mymoney") - 1000];
hint format["You bought a Pistol for 1000 $! You got %1 $ left!",(player getVariable "mymoney")];
};
};

if (player in list Cop_base) then {
copitemspawn addWeaponCargo ["hgun_P07_F",1];
copitemspawn addMagazineCargo ["16Rnd_9x21_Mag",1];
player setVariable["mymoney",(player getVariable "mymoney") - 1000];
hint format["You bought a Pistol for 1000 $! You got %1 $ left!",(player getVariable "mymoney")];
}
}
else {
hint "You need to be a cop to buy this weapon";
};