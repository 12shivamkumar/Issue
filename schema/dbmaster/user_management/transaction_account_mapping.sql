CREATE TABLE `transaction_account_mapping` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `org_id` bigint(20) NOT NULL,
  `transaction_id` bigint(20) NOT NULL,
  `transaction_type` varchar(100) NOT NULL,
  `account_type` varchar(50) NOT NULL,
  `account_id` bigint(20) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`,`org_id`) ,
  KEY `auto_update_time` (`auto_update_time`),
  KEY `org_id_transaction_id_type_account_id` (`org_id`,`transaction_id`,`transaction_type`,`account_id`),
  KEY `org_id_account_id_type` (`org_id`,`account_id`,`transaction_type`)
);