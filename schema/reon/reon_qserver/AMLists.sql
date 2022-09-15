-- start  Schema : AMLists

CREATE TABLE `AMLists` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orgId` int(11) NOT NULL,
  `listId` int(11) NOT NULL,
  `versionId` int(11) NOT NULL,
  `tableName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `createdOn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `isActive` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
);

-- end  Schema : AMLists
