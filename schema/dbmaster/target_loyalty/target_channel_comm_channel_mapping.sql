

CREATE TABLE `target_channel_comm_channel_mapping` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `target_channel_id` bigint(20) NOT NULL,
  `comm_channel_type_id` bigint(20) NOT NULL,
  `is_valid` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ;

