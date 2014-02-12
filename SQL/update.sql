-- ----------------------------
-- Set any buy value of copper to 2 silver
-- ----------------------------
UPDATE `Traders_DATA` SET `buy`= '[4,"ItemSilverBar10oz",1]' WHERE `buy`='[2,"ItemCopperBar10oz",1]';
UPDATE `Traders_DATA` SET `buy`= '[2,"ItemSilverBar10oz",1]' WHERE `buy`='[1,"ItemCopperBar10oz",1]';
UPDATE `Traders_DATA` SET `buy`= '[9,"ItemSilverBar",1]' WHERE `buy`='[9,"ItemCopperBar",1]';
UPDATE `Traders_DATA` SET `buy`= '[8,"ItemSilverBar",1]' WHERE `buy`='[8,"ItemCopperBar",1]';
UPDATE `Traders_DATA` SET `buy`= '[7,"ItemSilverBar",1]' WHERE `buy`='[7,"ItemCopperBar",1]';
UPDATE `Traders_DATA` SET `buy`= '[6,"ItemSilverBar",1]' WHERE `buy`='[6,"ItemCopperBar",1]';
UPDATE `Traders_DATA` SET `buy`= '[5,"ItemSilverBar",1]' WHERE `buy`='[5,"ItemCopperBar",1]';
UPDATE `Traders_DATA` SET `buy`= '[4,"ItemSilverBar",1]' WHERE `buy`='[4,"ItemCopperBar",1]';
UPDATE `Traders_DATA` SET `buy`= '[3,"ItemSilverBar",1]' WHERE `buy`='[3,"ItemCopperBar",1]';
UPDATE `Traders_DATA` SET `buy`= '[2,"ItemSilverBar",1]' WHERE `buy`='[2,"ItemCopperBar",1]';
UPDATE `Traders_DATA` SET `buy`= '[2,"ItemSilverBar",1]' WHERE `buy`='[1,"ItemCopperBar",1]';

-- ----------------------------
-- Set any sell value of copper to 1 silver only run if not updating
-- ----------------------------
UPDATE `Traders_DATA` SET `sell`= '[2,"ItemSilverBar10oz",1]' WHERE `sell`='[2,"ItemCopperBar10oz",1]';
UPDATE `Traders_DATA` SET `sell`= '[1,"ItemSilverBar10oz",1]' WHERE `sell`='[1,"ItemCopperBar10oz",1]';
UPDATE `Traders_DATA` SET `sell`= '[9,"ItemSilverBar",1]' WHERE `sell`='[9,"ItemCopperBar",1]';
UPDATE `Traders_DATA` SET `sell`= '[8,"ItemSilverBar",1]' WHERE `sell`='[8,"ItemCopperBar",1]';
UPDATE `Traders_DATA` SET `sell`= '[7,"ItemSilverBar",1]' WHERE `sell`='[7,"ItemCopperBar",1]';
UPDATE `Traders_DATA` SET `sell`= '[6,"ItemSilverBar",1]' WHERE `sell`='[6,"ItemCopperBar",1]';
UPDATE `Traders_DATA` SET `sell`= '[5,"ItemSilverBar",1]' WHERE `sell`='[5,"ItemCopperBar",1]';
UPDATE `Traders_DATA` SET `sell`= '[4,"ItemSilverBar",1]' WHERE `sell`='[4,"ItemCopperBar",1]';
UPDATE `Traders_DATA` SET `sell`= '[3,"ItemSilverBar",1]' WHERE `sell`='[3,"ItemCopperBar",1]';
UPDATE `Traders_DATA` SET `sell`= '[2,"ItemSilverBar",1]' WHERE `sell`='[2,"ItemCopperBar",1]';
UPDATE `Traders_DATA` SET `sell`= '[1,"ItemSilverBar",1]' WHERE `sell`='[1,"ItemCopperBar",1]';

-- ----------------------------
-- WEAPON UPDATE
-- ----------------------------
UPDATE `Traders_DATA` SET `item`= '["M249_EP1_DZ",3]' WHERE `item`='["M249_DZ",3]';
UPDATE `Character_DATA` SET `Inventory` = REPLACE(`Inventory`, '"M249_DZ"', '"M249_EP1_DZ"') WHERE `Inventory` LIKE '%"M249_DZ"%';
UPDATE `Character_DATA` SET `Backpack` = REPLACE(`Backpack`, '"M249_DZ"', '"M249_EP1_DZ"') WHERE `Backpack` LIKE '%"M249_DZ"%';
UPDATE `Character_DATA` SET `CurrentState` = '["","",42,[]]' WHERE `CurrentState` LIKE '%"M249_DZ"%';
UPDATE `Object_DATA` SET `Inventory` = REPLACE(`Inventory`, '"M249_DZ"', '"M249_EP1_DZ"') WHERE `Inventory` LIKE '%"M249_DZ"%';

UPDATE `Traders_DATA` SET `buy` = '[4,"ItemBriefcase100oz",1]', `sell` = '[2,"ItemGoldBar10oz",1]' WHERE `item` LIKE  '%pipebomb%';
UPDATE `Traders_DATA` SET `buy` = '[4,"ItemBriefcase100oz",1]', `sell` = '[1,"ItemBriefcase100oz",1]' WHERE `item` LIKE  '%HMMWV_M1151_M2_CZ_DES_EP1%';
UPDATE `Traders_DATA` SET `buy` = '[1,"ItemBriefcase100oz",1]', `sell` = '[5,"ItemGoldBar10oz",1]' WHERE `item` LIKE  '%HMMWV_M998A2_SOV_DES_EP1%';
UPDATE `Traders_DATA` SET `buy` = '[1,"ItemBriefcase100oz",1]', `sell` = '[5,"ItemGoldBar10oz",1]' WHERE `item` LIKE  '%LandRover_Special_CZ_EP1%';
UPDATE `Traders_DATA` SET `buy` = '[6,"ItemGoldBar10oz",1]', `sell` = '[3,"ItemGoldBar10oz",1]' WHERE `item` LIKE  '%LandRover_MG_TK_EP1%';
UPDATE `Traders_DATA` SET `buy` = '[6,"ItemGoldBar10oz",1]', `sell` = '[3,"ItemGoldBar10oz",1]' WHERE `item` LIKE  '%UAZ_MG_TK_EP1%';
UPDATE `Traders_DATA` SET `buy` = '[4,"ItemBriefcase100oz",1]', `sell` = '[1,"ItemBriefcase100oz",1]' WHERE `item` LIKE  '%CH_47F_EP1%';
UPDATE `Traders_DATA` SET `buy` = '[2,"ItemBriefcase100oz",1]', `sell` = '[1,"ItemBriefcase100oz",1]' WHERE `item` LIKE  '%Mi17%';
UPDATE `Traders_DATA` SET `buy` = '[2,"ItemBriefcase100oz",1]', `sell` = '[1,"ItemBriefcase100oz",1]' WHERE `item` LIKE  '%GAZ_Vodnik_DZE%';
UPDATE `Traders_DATA` SET `buy` = '[1,"ItemBriefcase100oz",1]', `sell` = '[5,"ItemGoldBar10oz",1]' WHERE `item` LIKE  '%GAZ_Vodnik_MedEvac%';
UPDATE `Traders_DATA` SET `buy` = '[2,"ItemGoldBar10oz",1]', `sell` = '[1,"ItemGoldBar10oz",1]' WHERE `item` LIKE  '%MTVR_DES_EP1%';
UPDATE `Traders_DATA` SET `buy` = '[1,"ItemSilverBar",1]', `sell` = '[1,"ItemSilverBar",1]' WHERE `item` LIKE  '%Crossbow_DZ%';
UPDATE `Traders_DATA` SET `buy` = '[1,"ItemSilverBar",1]', `sell` = '[1,"ItemSilverBar",1]' WHERE `item` LIKE  '%DZ_Assault_Pack_EP1%';

INSERT IGNORE INTO `Traders_DATA` (`id`, `item`, `qty`, `buy`, `sell`, `order`, `tid`, `afile`) VALUES (NULL,'["BAF_Merlin_DZE",2]', 10, '[2,"ItemBriefcase100oz",1]', '[1,"ItemBriefcase100oz",1]', 0, 519, 'trade_any_vehicle');
INSERT IGNORE INTO `Traders_DATA` (`id`, `item`, `qty`, `buy`, `sell`, `order`, `tid`, `afile`) VALUES (NULL,'["MH60S_DZE",2]', 10, '[4,"ItemBriefcase100oz",1]', '[1,"ItemBriefcase100oz",1]', 0, 512, 'trade_any_vehicle');
INSERT IGNORE INTO `Traders_DATA` (`id`, `item`, `qty`, `buy`, `sell`, `order`, `tid`, `afile`) VALUES (NULL,'["MH60S_DZE",2]', 10, '[2,"ItemBriefcase100oz",1]', '[1,"ItemBriefcase100oz",1]', 0, 493, 'trade_any_vehicle');
