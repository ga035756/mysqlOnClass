TYPE=VIEW
query=select `aa`.`max_fee` AS `max_fee`,`bb`.`tel` AS `tel`,`bb`.`sum_fee` AS `sum_fee` from (select max(`a`.`sum_fee`) AS `max_fee` from (select sum(`addressbook`.`bill`.`fee`) AS `sum_fee` from `addressbook`.`bill` group by `addressbook`.`bill`.`tel`) `a`) `aa` join (select `addressbook`.`bill`.`tel` AS `tel`,sum(`addressbook`.`bill`.`fee`) AS `sum_fee` from `addressbook`.`bill` group by `addressbook`.`bill`.`tel`) `bb` where `aa`.`max_fee` = `bb`.`sum_fee`
md5=f6bf7a9d770ffd02303ef62fe8d64593
updatable=1
algorithm=0
definer_user=root
definer_host=localhost
suid=2
with_check_option=0
timestamp=0001685691572218556
create-version=2
source=SELECT\n    *\nFROM\n    (\n    SELECT\n        MAX(sum_fee) AS max_fee\n    FROM\n        (\n        SELECT\n            sum(fee) AS sum_fee\n        FROM\n            bill\n        GROUP BY\n            tel\n    ) AS a\n) AS aa,\n(\n    SELECT\n        tel,\n        SUM(fee) AS sum_fee\n    FROM\n        bill\n    GROUP BY\n        tel\n) AS bb\nWHERE\n    aa.max_fee = bb.sum_fee
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_unicode_ci
view_body_utf8=select `aa`.`max_fee` AS `max_fee`,`bb`.`tel` AS `tel`,`bb`.`sum_fee` AS `sum_fee` from (select max(`a`.`sum_fee`) AS `max_fee` from (select sum(`addressbook`.`bill`.`fee`) AS `sum_fee` from `addressbook`.`bill` group by `addressbook`.`bill`.`tel`) `a`) `aa` join (select `addressbook`.`bill`.`tel` AS `tel`,sum(`addressbook`.`bill`.`fee`) AS `sum_fee` from `addressbook`.`bill` group by `addressbook`.`bill`.`tel`) `bb` where `aa`.`max_fee` = `bb`.`sum_fee`
mariadb-version=100428
