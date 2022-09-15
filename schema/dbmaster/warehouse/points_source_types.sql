

CREATE TABLE `points_source_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'auto generated point source type id',
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(eg: Bill / LineItem / Birthday / Promotion etc)',
  PRIMARY KEY (`id`),
  UNIQUE KEY `type` (`type`)
) ;

