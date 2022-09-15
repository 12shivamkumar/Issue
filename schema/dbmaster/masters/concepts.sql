

CREATE TABLE `concepts` (
  `id` int(11) NOT NULL,
  `level` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_updated_by` int(11) NOT NULL,
  `last_updated_on` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ;

