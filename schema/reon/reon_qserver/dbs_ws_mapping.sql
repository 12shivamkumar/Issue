
-- start  Schema : dbs_ws_mapping

CREATE TABLE `dbs_ws_mapping` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dbs_ws_id` int(11) NOT NULL,
  `rule` varchar(255) NOT NULL,
  `weightage` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  updated_at TIMESTAMP NOT NULL DEFAULT NOW() ON UPDATE NOW(),
  created_at TIMESTAMP NOT NULL,
  PRIMARY KEY (`id`)
);

-- end  Schema :  dbs_ws_mapping
