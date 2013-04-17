if (mymoney < 3000) then
{
hint format["You need 3000 $ to buy this! You only got %1 $!",mymoney];
} else {
copitemgear addWeaponCargo ["optic_Holosight",1];
mymoney = mymoney - 3000;
hint format["You bought a ACO for 3000 $! You got %1 $ left!",mymoney];
};