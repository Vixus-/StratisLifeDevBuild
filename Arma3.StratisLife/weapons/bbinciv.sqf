if ((player getVariable "mymoney") < 1000) then
{
hint format["You need 1000 $ to buy this! You only got %1 $!",(player getVariable "mymoney")];
} else {
civitemspawn addWeaponCargo ["Binocular",1];
player setVariable["mymoney",(player getVariable "mymoney") - 1000];
hint format["You bought a Binocular for 1000 $! You got %1 $ left!",(player getVariable "mymoney")];
};
