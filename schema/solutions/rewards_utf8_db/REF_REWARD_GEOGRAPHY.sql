CREATE TABLE `REF_REWARD_GEOGRAPHY` (
 `AREA_ID` bigint(20) NOT NULL,
 `CITY_ID` bigint(20) NOT NULL,
 `COUNTRY_ID` bigint(20) NOT NULL,
 `LATITUDE` double DEFAULT NULL,
 `LONGITUDE` double DEFAULT NULL,
 `REWARD_ID` bigint(20) NOT NULL,
 `LAST_UPDATED_ON` timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
 `CREATED_ON` timestamp DEFAULT CURRENT_TIMESTAMP,
 PRIMARY KEY (`AREA_ID`,`CITY_ID`,`COUNTRY_ID`,`REWARD_ID`),
 KEY `idx_rewardId` (`REWARD_ID`),
 KEY `idx_countryId` (`COUNTRY_ID`),
 KEY `idx_cityId` (`CITY_ID`),
 KEY `idx_areaId` (`AREA_ID`)
)