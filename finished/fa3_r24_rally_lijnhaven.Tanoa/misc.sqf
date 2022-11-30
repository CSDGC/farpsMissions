_hideMkr = [hideObjectmkr,hideObjectmkr_1,hideObjectmkr_2,hideObjectmkr_3];
_hide = [];
{_hide append nearestTerrainObjects [_x,[],(_x getvariable "hideradius")]} forEach _hideMkr; //collect array of terrain objects around gamelogic
{_x hideObjectGlobal true} forEach _hide; //hide said objects
