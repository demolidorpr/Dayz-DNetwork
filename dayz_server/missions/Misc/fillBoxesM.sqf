_crate = _this select 0;

_crate setVariable ["permaLoot",true];
_crate setVariable ["Sarge",1,true];

clearWeaponCargoGlobal _crate;
clearMagazineCargoGlobal _crate;

_crate addMagazineCargoGlobal ["ItemBandage", 10];
_crate addMagazineCargoGlobal ["ItemMorphine", 10];
_crate addMagazineCargoGlobal ["ItemEpinephrine", 5];
_crate addMagazineCargoGlobal ["ItemPainkiller", 15];
_crate addMagazineCargoGlobal ["ItemWaterbottle", 5];
_crate addMagazineCargoGlobal ["FoodCanBakedBeans", 5];
_crate addMagazineCargoGlobal ["ItemAntibiotic", 5];
_crate addMagazineCargoGlobal ["ItemBloodbag", 10];