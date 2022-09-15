

CREATE TABLE `actions` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('column','concept') COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_action_id` int(20) DEFAULT '-1',
  PRIMARY KEY (`id`)
) ;

