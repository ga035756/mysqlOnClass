TYPE=VIEW
query=select (select count(0) from (select `addressbook`.`house`.`hid` AS `hid`,`addressbook`.`house`.`address` AS `address`,`addressbook`.`live`.`hid` AS `l_hid`,`addressbook`.`live`.`uid` AS `l_uid` from (`addressbook`.`house` left join `addressbook`.`live` on(`addressbook`.`house`.`hid` = `addressbook`.`live`.`hid`)) group by `addressbook`.`house`.`hid`) `a` where `a`.`l_hid` is null) / (select count(0) from `addressbook`.`house`) AS `空屋率`
md5=78c371a651074a903c686c67c58924e1
updatable=0
algorithm=0
definer_user=root
definer_host=localhost
suid=2
with_check_option=0
timestamp=0001685691214411299
create-version=2
source=SELECT
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_unicode_ci
view_body_utf8=select (select count(0) from (select `addressbook`.`house`.`hid` AS `hid`,`addressbook`.`house`.`address` AS `address`,`addressbook`.`live`.`hid` AS `l_hid`,`addressbook`.`live`.`uid` AS `l_uid` from (`addressbook`.`house` left join `addressbook`.`live` on(`addressbook`.`house`.`hid` = `addressbook`.`live`.`hid`)) group by `addressbook`.`house`.`hid`) `a` where `a`.`l_hid` is null) / (select count(0) from `addressbook`.`house`) AS `空屋率`
mariadb-version=100428