TYPE=VIEW
query=select `a`.`tel` AS `tel`,`a`.`fee_sum` AS `fee_sum` from (select `addressbook`.`bill`.`tel` AS `tel`,sum(`addressbook`.`bill`.`fee`) AS `fee_sum` from `addressbook`.`bill` group by `addressbook`.`bill`.`tel`) `a` where `a`.`fee_sum` > 1000
md5=5a614d0dcec1842ba4ee3375534cca1c
updatable=1
algorithm=0
definer_user=root
definer_host=localhost
suid=2
with_check_option=0
timestamp=0001685691548703151
create-version=2
source=SELECT\n    *\nFROM\n    (\n    SELECT\n        tel,\n        SUM(fee) AS fee_sum\n    FROM\n        bill\n    GROUP BY\n        tel\n) AS a\nWHERE\n    fee_sum > 1000
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_unicode_ci
view_body_utf8=select `a`.`tel` AS `tel`,`a`.`fee_sum` AS `fee_sum` from (select `addressbook`.`bill`.`tel` AS `tel`,sum(`addressbook`.`bill`.`fee`) AS `fee_sum` from `addressbook`.`bill` group by `addressbook`.`bill`.`tel`) `a` where `a`.`fee_sum` > 1000
mariadb-version=100428
