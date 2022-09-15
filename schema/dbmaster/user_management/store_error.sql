

CREATE TABLE `store_error` (
  `org_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `error_id` int(11) NOT NULL,
  `last_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY `org_id` (`org_id`,`store_id`),
  KEY `error_id` (`error_id`)
) ;

