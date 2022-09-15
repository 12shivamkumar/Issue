

CREATE TABLE `campaign_audit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `updated_on` datetime NOT NULL,
  `tracked_class` varchar(100) NOT NULL,
  `tracked_item` varchar(64) DEFAULT NULL,
  `details` mediumtext NOT NULL,
  PRIMARY KEY (`id`)
) ;

