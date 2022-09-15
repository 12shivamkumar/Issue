

CREATE TABLE `tender_code_attribute` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL DEFAULT '0',
  `program_id` int(11) DEFAULT NULL,
  `tender_code_id` int(11) DEFAULT NULL,
  `org_tender_attribute_id` int(11) DEFAULT NULL,
  `org_tender_value_id` int(11) DEFAULT NULL,
  `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`,`org_id`),
  KEY `org_auto_time_idx` (`org_id`,`auto_update_time`) 
) ;

