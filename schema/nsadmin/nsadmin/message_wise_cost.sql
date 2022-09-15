

CREATE TABLE `message_wise_cost` (
  `nsadmin_id` bigint(20) NOT NULL,
  `receiver` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `call_duration` int(5) NOT NULL,
  `total_cost` float(8,4) NOT NULL,
  `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`nsadmin_id`)
) 

