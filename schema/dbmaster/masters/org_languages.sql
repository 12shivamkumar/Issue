

CREATE TABLE `org_languages` (
  `id` int(11) NOT NULL,
  `org_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  UNIQUE KEY `org_id` (`org_id`,`language_id`)
) ;

