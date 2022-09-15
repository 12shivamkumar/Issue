CREATE TABLE `tags` (
  `id` bigint(20) NOT NULL,
  `template_event_map_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `json_path` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_template_event_map_id` (`template_event_map_id`)
);