-- start  Schema : `fact_export`
CREATE TABLE `fact_export` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL,
  `fact_name` varchar(100) NOT NULL,
  `template_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
PRIMARY KEY (`id`)  USING BTREE
);