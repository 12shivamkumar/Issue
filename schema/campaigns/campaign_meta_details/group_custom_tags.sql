

CREATE TABLE `group_custom_tags` (
  `org_id` int(11) NOT NULL,
  `group_version_id` int(10) DEFAULT NULL,
  `group_id` int(1) NOT NULL DEFAULT '0',
  `custom_tag_count` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) 

