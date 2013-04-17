if (side player == west) then {
if ((player getVariable "mymoney") < 100) then
{
hint format["You need 100 $ to buy this! You only got %1 $!",mymoney];
} else {
copitemgear addWeaponCargo ["FirstAidKit",1];
player setVariable["mymoney",(player getVariable "mymoney") - 100];
hint format["You bought a Medpack for 100 $! You got %1 $ left!",(player getVariable "mymoney")];
};
} else {
hint "You need to be a cop to buy this item";
};