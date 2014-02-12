
UPDATE `Character_DATA` SET `Inventory` = REPLACE(`Inventory`, '"M249_DZ"', '"M249_EP1_DZ"') WHERE `Inventory` LIKE '%"M249_DZ"%';
UPDATE `Character_DATA` SET `Backpack` = REPLACE(`Backpack`, '"M249_DZ"', '"M249_EP1_DZ"') WHERE `Backpack` LIKE '%"M249_DZ"%';
UPDATE `Character_DATA` SET `CurrentState` = '["","",42,[]]' WHERE `CurrentState` LIKE '%"M249_DZ"%';
UPDATE `Object_DATA` SET `Inventory` = REPLACE(`Inventory`, '"M249_DZ"', '"M249_EP1_DZ"') WHERE `Inventory` LIKE '%"M249_DZ"%';
