TYPE=VIEW
query=select `addressbook`.`bill`.`tel` AS `tel`,sum(`addressbook`.`bill`.`fee`) AS `SUM(fee)` from `addressbook`.`bill` group by `addressbook`.`bill`.`tel` having sum(`addressbook`.`bill`.`fee`) > 1000
md5=7d65abeff3b8d0eba367277827a16190
updatable=0
algorithm=0
definer_user=root
definer_host=localhost
suid=2
with_check_option=0
timestamp=0001685691548718115
create-version=2
source=SELECT\n    tel  ,\n    SUM(fee)\nFROM\n    bill\nGROUP BY\n    tel\nHAVING\n    SUM(fee) > 1000
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_unicode_ci
view_body_utf8=select `addressbook`.`bill`.`tel` AS `tel`,sum(`addressbook`.`bill`.`fee`) AS `SUM(fee)` from `addressbook`.`bill` group by `addressbook`.`bill`.`tel` having sum(`addressbook`.`bill`.`fee`) > 1000
mariadb-version=100428
