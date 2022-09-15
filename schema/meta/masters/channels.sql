

CREATE TABLE `channels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `added_by` int(4) NOT NULL,
  `added_on` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniqueName` (`name`)
) 

