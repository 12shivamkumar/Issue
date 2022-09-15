

CREATE TABLE `org_top_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `priority` int(10) NOT NULL,
  `added_by` int(11) NOT NULL,
  `added_on` datetime NOT NULL,
  `is_valid` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`,`org_id`),
  KEY `org_id` (`org_id`,`item_id`)
) ;

