-- This file is automatically generated by LogicalPlanToSQLSuite.
select b.key, count(*)
from src b
group by b.key
having exists (select a.key
               from src a
               where a.key = b.key and a.value > 'val_9')
--------------------------------------------------------------------------------
SELECT `gen_attr_1` AS `key`, `gen_attr_2` AS `count(1)` FROM (SELECT `gen_attr_1`, count(1) AS `gen_attr_2` FROM (SELECT `key` AS `gen_attr_1`, `value` AS `gen_attr_3` FROM `default`.`src`) AS gen_subquery_0 GROUP BY `gen_attr_1` HAVING EXISTS(SELECT `gen_attr_4` AS `1` FROM (SELECT 1 AS `gen_attr_4` FROM (SELECT `gen_attr_0` FROM (SELECT `key` AS `gen_attr_0`, `value` AS `gen_attr_5` FROM `default`.`src`) AS gen_subquery_2 WHERE (`gen_attr_5` > "val_9")) AS gen_subquery_1 WHERE (`gen_attr_0` = `gen_attr_1`)) AS gen_subquery_3)) AS b
