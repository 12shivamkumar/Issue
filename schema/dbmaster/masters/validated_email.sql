

CREATE TABLE `validated_email` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_valid` tinyint(1) DEFAULT '0',
  `last_updated_on` datetime NOT NULL,
  `entered_by` int(11) NOT NULL,
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `email` (`email`)
) ;

