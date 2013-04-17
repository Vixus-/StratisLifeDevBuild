if (side player == civilian) then {
if ((player getVariable "mymoney") < 1000) then {
hint format["You need 1000 $ to buy this! You have %1 $!",(player getVariable "mymoney")];
} else {
if ((player getVariable "terrorlicense") < 1) then {
hint "You need a Terrorlicense to buy this!";
} else {
terrorbox addMagazineCargo ["30Rnd_65x39_case_mag",5];
player setVariable ['mymoney',(player getVariable "mymoney") - 1000];
hint format["You bought the Ammo for 1000 $! You have %1 $ left!",(player getVariable "mymoney")];
};
};
} else {
hint "You need to be a civilian to use this shop";
};