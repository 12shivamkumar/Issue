CREATE TABLE `REF_REWARD_COMMUNICATION` (
 `COMMUNICATION_ID` bigint(20) NOT NULL,
 `IS_ENABLED` bit(1) NOT NULL,
 `REWARD_ID` bigint(20) NOT NULL,
 `LAST_UPDATED_ON` timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
 `CREATED_ON` timestamp DEFAULT CURRENT_TIMESTAMP,
 PRIMARY KEY (`COMMUNICATION_ID`,`REWARD_ID`),
 KEY `idx_rewardId` (`REWARD_ID`),
 KEY `idx_communicationId` (`COMMUNICATION_ID`)
)