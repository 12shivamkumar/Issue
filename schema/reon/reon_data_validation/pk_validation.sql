
-- start  Schema : pk_validation

CREATE TABLE `pk_validation` (
  `db_name` varchar(50) DEFAULT NULL,
  `table_name` varchar(255) DEFAULT NULL,
  `status` text,
  `mismatch` text,
  `pk_col` text NOT NULL,
  `exec_id` int(11) DEFAULT NULL
) ;


-- end  Schema : pk_validation