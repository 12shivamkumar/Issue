CREATE TABLE `org_dimension_provider_mapping` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'This table is to define from which provider a particular dimension (org specific system defined) will be fetched',
  `org_id` int(11) NOT NULL,
  `dim_table_id` int(11) NOT NULL,
  `provider_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `org_dim_provider_idx` (`org_id`,`dim_table_id`,`provider_id`)
) ENGINE=InnoDB;

-- Dump completed on 2020-06-05 12:04:46
