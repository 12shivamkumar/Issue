

CREATE TABLE domain_properties_gateway_map (
  id int(11) NOT NULL AUTO_INCREMENT,
  domain_prop_id int(11) NOT NULL DEFAULT '-1' COMMENT 'in case of SMS gateway this will be -1',
  gateway_id int(11) NOT NULL,
  org_id int(11) NOT NULL,
  label varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  sub_domain varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  added_by int(11) NOT NULL DEFAULT '0',
  added_on datetime NOT NULL,
  use_system_defaults tinyint(1) NOT NULL DEFAULT '0' COMMENT 'use capillary system default dispatched configs',
  is_active tinyint(1) NOT NULL DEFAULT '1',
  is_validated tinyint(1) NOT NULL DEFAULT '0',
  xengage_enabled tinyint(1) NOT NULL DEFAULT '0',
  last_validated_on datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  use_for_inactive tinyint(1) NOT NULL DEFAULT '0',
  priority int(3) NOT NULL,
  properties mediumtext COLLATE utf8mb4_unicode_ci,
  updated_by int(11) NOT NULL DEFAULT '-1',
  auto_update_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (id),
  KEY gateway_domain_identifier (gateway_id),
  KEY organization_identifier (org_id,domain_prop_id)
) 

