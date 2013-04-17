createDialog "CivLicenseMenu";
if ((player getVariable "driverlicense") >= 1) then {
hassdriverlicense = "Yes";
} else {
hassdriverlicense = "No";
};

if ((player getVariable "gunlicense") >= 1) then {
hassgunlicense = "Yes";
} else {
hassgunlicense = "No";
};

if ((player getVariable "airlicense") >= 1) then {
hassairlicense = "Yes";
} else {
hassairlicense = "No";
};

if ((player getVariable "boatlicense") >= 1) then {
hassboatlicense = "Yes";
} else {
hassboatlicense = "No";
};

if ((player getVariable "oilprocesslicense") >= 1) then {
hassoilprocesslicense = "Yes";
} else {
hassoilprocesslicense = "No";
};

ctrlSetText[11157,format["%1",hassdriverlicense]];
ctrlSetText[11158,format["%1",hassgunlicense]];
ctrlSetText[11159,format["%1",hassairlicense]];
ctrlSetText[11160,format["%1",hassboatlicense]];
ctrlSetText[11162,format["%1",hassoilprocesslicense]];