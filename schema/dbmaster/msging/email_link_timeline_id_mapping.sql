

CREATE TABLE `email_link_timeline_id_mapping` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ref_id` int(11) DEFAULT NULL COMMENT 'referring email_links_redirection_stats',
  `timeline_id` int(11) DEFAULT NULL,
  `milestone_id` int(11) DEFAULT NULL,
  `rule_case` tinyint(1) DEFAULT NULL COMMENT '0 for false , 1 for true',
  PRIMARY KEY (`id`),
  KEY `ref_id` (`ref_id`)
) ;

