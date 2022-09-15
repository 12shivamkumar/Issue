

CREATE TABLE cron_tasks (
  id int(11) NOT NULL AUTO_INCREMENT,
  org_id int(11) NOT NULL,
  reference_id int(11) NOT NULL,
  component varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  description varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  cron_pattern varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  created_time datetime NOT NULL,
  picked_time datetime NOT NULL,
  scheduled_time datetime NOT NULL,
  time_zone varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  status enum('OPENED','CLOSED','EXECUTING','REMINDING','REMINDED','ERROR') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'OPENED',
  error_count int(11) NOT NULL,
  pre_remind_time int(11) DEFAULT NULL,
  params mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (id,org_id),
  KEY status (status,scheduled_time)
) 

