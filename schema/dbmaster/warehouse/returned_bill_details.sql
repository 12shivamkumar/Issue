CREATE TABLE `returned_bill_details` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `org_id` int(11) NOT NULL,
  `original_bill_id` bigint(20) NOT NULL COMMENT 'Parent bill id on which return is performed',
  `return_bill_id` int(11) NOT NULL,
  `event_log_id` bigint(20) NOT NULL,
  `created_on`  datetime NOT NULL default CURRENT_TIMESTAMP,
  `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
   PRIMARY KEY (`id`,`org_id`),
   UNIQUE KEY `transaction_return` (`org_id`,`original_bill_id`,`return_bill_id`),
   UNIQUE KEY `org_event_idx` (`org_id`,`event_log_id`),
   KEY `org_time_idx` (`org_id`,`auto_update_time`)
) ;

