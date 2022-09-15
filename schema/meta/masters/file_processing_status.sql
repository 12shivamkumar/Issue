

CREATE TABLE `file_processing_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL,
  `acc_id` int(11) NOT NULL,
  `key_id` int(11) NOT NULL,
  `value_id` int(11) NOT NULL,
  `file_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `added_on` datetime NOT NULL,
  `last_updated` datetime NOT NULL,
  `status` enum('NONE','PROCESSING','FINISHED','ERROR') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'NONE',
  PRIMARY KEY (`id`),
  INDEX org_id_idx (org_id,acc_id,value_id,key_id,file_name)
) 

