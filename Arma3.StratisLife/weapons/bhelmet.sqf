if (mymoney < 1000) then
{
hint format["You need 1000 $ to buy this! You only got %1 $!",mymoney];
} else {
copitemgear addWeaponCargo ["H_HelmetO_ocamo",1];
mymoney = mymoney - 1000;
hint format["You bought a Helmet for 1000 $! You got %1 $ left!",mymoney];
};