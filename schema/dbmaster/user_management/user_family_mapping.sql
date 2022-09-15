

CREATE TABLE `user_family_mapping` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL,
  `family_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `added_by` int(11) NOT NULL,
  `added_on` datetime NOT NULL,
  `is_member` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'IF you want to kick someone out from family',
  PRIMARY KEY (`id`,`org_id`)
) ;

