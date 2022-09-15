

CREATE TABLE `shipping_item_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL,
  `bill_line_item_id` bigint(20) NOT NULL,
  `quantity` double NOT NULL,
  `shipping_id` int(11) NOT NULL,
  `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`,`org_id`),
  KEY `shipping_id` (`org_id`,`shipping_id`) ,
  KEY `auto_time_idx` (`auto_update_time`) 
) ;

