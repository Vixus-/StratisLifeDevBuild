if (side player == civilian) then {
if ((player getVariable "mymoney") <= 5000) then {
hint format["You need 2000 $ to buy this! You only have %1 $!",(player getVariable "mymoney"];
} else {
civbackpackspawn addBackpackCargo ["B_Bergen_Base",1];
player setVariable["mymoney",(player getVariable "mymoney") - 5000];
hint format["You bought this backpack for 5000 $! You have %1 $ left!",(player getVariable "mymoney"];
};
} else {
hint "You need to be a civilian to use this shop";
};