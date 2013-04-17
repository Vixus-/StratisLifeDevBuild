if (side player == civilian) then {
if ((player getVariable "mymoney") < 5000) then {
hint format["You need 5000 $ to buy this! You only got %1 $!",(player getVariable "mymoney")];
} else {
terrorbox addItemCargo ["V_TacVest_khk",1];
player setVariable ['mymoney',(player getVariable "mymoney") - 5000];
hint format["You bought the Terror Clothing for  $! You got %1 $ left!",(player getVariable "mymoney")];
};
} else {
hint "You need to be a civilian to use this shop";
};