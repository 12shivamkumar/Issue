
CREATE TABLE `gateway_conn_configs` (
  `host_name` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `config` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_host_telecom_regulated` tinyint(1)  DEFAULT '0',
  PRIMARY KEY (`host_name`)
) 

