if (side player == civilian) then 
{
	if ((player getVariable "usedspace") >= 60) then 
	{
		hint "Inventory full, go sell the stuff at the market"
	}
	else
	{
		player removeAction apple1;
		hint format["Gathering Apples..."];
		player setVariable["usedspace",(player getVariable "usedspace") + 2];
		sleep 3;
		player setVariable["itemapple",(player getVariable "itemapple") + applerate];
		hint format["You got %1 Apple!",applerate];
		waituntil {!isnull player};
		apple1 = player addAction ["Gather Apples","farming\startapple.sqf",[],7,true,true,"","player in list trgApplefield1"];
	};
};