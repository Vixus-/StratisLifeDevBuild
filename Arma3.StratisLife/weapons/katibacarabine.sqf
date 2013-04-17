if (side player == civilian) then {
if ((player getVariable "mymoney") < 20000) then {
hint format["You need 20000 $ to buy this! You only have %1 $!",(player getVariable "mymoney")];
} else {
if ((player getVariable "terrorlicense") < 1) then {
hint "You need a Terrorlicense to buy this!";
} else {
terrorbox addWeaponCargo ["arifle_Khaybar_F",1];
player setVariable ['mymoney',(player getVariable "mymoney") - 20000];
hint format["You bought the weapon for 20000 $! You have %1 $ left!",(player getVariable "mymoney")];
};
};
} else {
hint "You need to be a civilian to use this shop";
};

//  	arifle_Khaybar_F