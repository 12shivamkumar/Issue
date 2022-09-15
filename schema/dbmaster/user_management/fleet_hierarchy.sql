CREATE TABLE fleet_hierarchy (
  id int(11) NOT NULL AUTO_INCREMENT,
  org_id int(11) NOT NULL,
  code varchar(50) NOT NULL,
  name varchar(50),
  description varchar(255) ,
  is_active int(1) NOT NULL DEFAULT '1',
  is_default int(1) NOT NULL DEFAULT '0',
  created_on datetime NOT NULL,
  created_by int(11) NOT NULL,
  updated_by int(11),
  is_hierarchy_strict int(1) NOT NULL DEFAULT '1',
  group_creation_enabled int(1) NOT NULL DEFAULT '0',
  is_skip_role_allowed int(1) NOT NULL DEFAULT '0',
  auto_update_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`,`org_id`),
  KEY `code` (`code`)
 );