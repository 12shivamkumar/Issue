

CREATE TABLE `active_modules` (
  `org_id` bigint(20) NOT NULL,
  `module_id` int(11) NOT NULL,
  `active` tinyint(4) NOT NULL,
  `created` datetime NOT NULL,
  `last_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`org_id`,`module_id`)
) 

