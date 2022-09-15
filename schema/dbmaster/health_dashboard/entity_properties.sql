

CREATE TABLE `entity_properties` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `entity_id` int(20) NOT NULL,
  `property_id` int(20) NOT NULL,
  `track` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ;

