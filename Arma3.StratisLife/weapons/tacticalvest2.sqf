if (side player == civilian) then {
if ((player getVariable "mymoney") < 2000) then {
hint format["You need 2000 $ to buy this! You only have %1 $!",(player getVariable "mymoney")];
} else {
civbackpackspawn addBackpackCargo ["B_AssaultPack_khk",1];
player setVariable["mymoney",(player getVariable "mymoney") - 2000];
hint format["You bought this backpack for 2000 $! You have %1 $ left!",(player getVariable "mymoney")];
};
} else {
hint "You need to be a civilian to use this shop";
};