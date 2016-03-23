_weaponsSpecialList = MyWeaponsSpecialList;
_amnoSpecialList = MyAmnoSpecialList;
_itemSpecialList = MyItemSpecialList;
_weaponList= MyWeaponList;
_amnoList=MyAmnoList;
_itemList=MyItemList;

_EpochSpecialWeapons=MyEpochSpecialWeapons;
_EpochSpecialMagazines=MyEpochSpecialMagazines;
_EpochSpecialGIFT = MyEpochSpecialGIFT;



private ["_where"];
private ["_type"];


_where = _this select 0;
_type = _this select 1;

a = 0;
if(_type == 1)
	then {
		box = 'Box_East_AmmoVeh_F' createVehicle _where;
		while {a = a + 1; a < 6}
			do {
				this_weapon = _weaponList call bis_fnc_selectRandom ;
				this_amno = _amnoList call bis_fnc_selectRandom;
				this_item = _itemList call bis_fnc_selectRandom;
				box addWeaponCargoGlobal[this_weapon,1];
				box addMagazineCargoGlobal[this_amno,10];
				box addItemCargoGlobal [this_item,2];
			};


		box addItemCargoGlobal ["CinderBlocks",50];
		box addItemCargoGlobal ["ItemCorrugated",30];
		box addItemCargoGlobal ["MortarBucket",30];
		box addItemCargoGlobal ["FAK",10];

		special_gift = _EpochSpecialGIFT call bis_fnc_selectRandom;

		_nb = floor random 2;

		_specialWeapon =  _EpochSpecialWeapons select _nb;
		_specialAmno = _EpochSpecialMagazines select _nb;

		box addWeaponCargoGlobal[_specialWeapon,1];
		box addMagazineCargoGlobal[_specialAmno,1];
		box addItemCargoGlobal [special_gift,1];
}
else {
	box = 'Box_East_AmmoVeh_F' createVehicle _where;
	while {a = a + 1; a < 3}


			do {
				this_weapon = _weaponList call bis_fnc_selectRandom ;
				this_amno = _amnoList call bis_fnc_selectRandom;
				this_item = _itemList call bis_fnc_selectRandom;
				box addWeaponCargoGlobal[this_weapon,1];
				box addMagazineCargoGlobal[this_amno,5];
				box addItemCargoGlobal [this_item,1];
			};


		box addItemCargoGlobal ["CinderBlocks",20];
		box addItemCargoGlobal ["ItemCorrugated",10];
		box addItemCargoGlobal ["MortarBucket",10];
		box addItemCargoGlobal ["FAK",5];

		special_gift = _EpochSpecialGIFT call bis_fnc_selectRandom;


		box addItemCargoGlobal [special_gift,1];
}
