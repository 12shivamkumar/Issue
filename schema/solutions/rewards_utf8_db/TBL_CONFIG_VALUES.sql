CREATE TABLE `TBL_CONFIG_VALUES` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `CONFIG_KEY_ID` bigint(20) DEFAULT NULL,
  `BRAND_ID` bigint(20) DEFAULT NULL,
  `ORG_ID` bigint(20) DEFAULT NULL,
  `VALUE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `brand_config_key_id` (`BRAND_ID`,`CONFIG_KEY_ID`),
  KEY `orgId_config_key_id` (`ORG_ID`,`CONFIG_KEY_ID`)
);