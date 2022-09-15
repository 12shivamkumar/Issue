CREATE TABLE `db_configs` (
 `id` int(11) NOT NULL AUTO_INCREMENT,
 `org_id` int(11) NOT NULL,
 `shard_name` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL,
 `dbase` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
 PRIMARY KEY (`id`,`org_id`),
 UNIQUE KEY `org_id` (`org_id`)
) ;
