

CREATE TABLE `store_perf_metrics` (
  `org_id` bigint(20) NOT NULL,
  `store_id` bigint(20) NOT NULL,
  `bills_per_day_weekday` float NOT NULL,
  `bills_per_day_weekend` float NOT NULL,
  `last_updated` datetime NOT NULL,
  PRIMARY KEY (`org_id`,`store_id`)
) ;

