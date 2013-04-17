if ((player getVariable "mymoney") < 1500) then
{
hint format["You need 1500 $ to buy this! You only got %1 $!",(player getVariable "mymoney")];
} else {
civitemspawn addWeaponCargo ["FirstAidKit",1];
player setVariable["mymoney",(player getVariable "mymoney") - 1500];
hint format["You bought a Medikit for 2000 $! You got %1 $ left!",(player getVariable "mymoney")];
};