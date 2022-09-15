

CREATE TABLE `org_configs` (
  `id` int(50) NOT NULL,
  `org_id` int(30) NOT NULL,
  `is_ffc_enabled` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ;
