

CREATE TABLE `contact_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domain_prop_id` int(11) NOT NULL DEFAULT '-1' COMMENT 'reference of domain property, to be kept -1 id reference is not present',
  `org_id` int(11) NOT NULL,
  `org_entity_id` int(11) DEFAULT NULL,
  `org_entity_type` varchar(50) DEFAULT NULL,
  `message_class` enum('SMS','EMAIL','WECHAT','VOICECALL','LINE','WHATSAPP','RCS') NOT NULL,
  `type` varchar(50) NOT NULL,
  `label` varchar(50) NOT NULL,
  `value` varchar(255) NOT NULL DEFAULT '' COMMENT 'max mail id size is 254 chars',
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `is_valid` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'validation test status',
  `is_default` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'if true this value is used as the default value amongst multiple configured keys',
  `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `org_domain_identifier` (`org_id`,`domain_prop_id`),
  KEY `org_class_identifier` (`org_id`,`message_class`)
) 

