if ((player getVariable "mymoney") < 1500) then
{
hint format["You need 1500 $ to buy this! You only got %1 $!",(player getVariable "mymoney")];
} else {
civitemspawn addItemcargo ["itemgps",1];
player setVariable["mymoney",(player getVariable "mymoney") - 1500];
hint format["You bought a GPS for 1500 $! You got %1 $ left!",(player getVariable "mymoney")];
};