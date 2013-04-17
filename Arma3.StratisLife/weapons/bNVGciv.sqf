if ((player getVariable "mymoney") < 400) then
{
hint format["You need 4000 $ to buy this! You only got %1 $!",(player getVariable "mymoney")];
} else {
civitemspawn addItemcargo ["NVGoggles",1];
player setVariable["mymoney",(player getVariable "mymoney") - 4000];
hint format["You bought the NVG's for 4000 $! You got %1 $ left!",(player getVariable "mymoney")];
};