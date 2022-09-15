-- start  Schema : dag_triggers

CREATE TABLE `dag_triggers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class_name` varchar(255) DEFAULT NULL,
  `cron` varchar(64) DEFAULT NULL,
  `is_active` tinyint(4) DEFAULT '1',
  `is_composite` tinyint(4) DEFAULT '0',
  `is_guarded` tinyint(4) DEFAULT '0',
  `attributes` text ,
  `composite_attributes` text DEFAULT NULL,
  `label` varchar(200) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
);

-- end  Schema :  dag_triggers
