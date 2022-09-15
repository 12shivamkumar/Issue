CREATE TABLE `scopes` (
  `scope_id` int(11) NOT NULL,
  `name` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scope` enum('CAP','VERTICAL','ORG') COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`scope_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10000000;

-- Dump completed on 2020-06-05 12:04:46
