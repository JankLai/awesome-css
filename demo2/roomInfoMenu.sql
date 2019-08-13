-- 菜单 SQL
insert into sys_menu (menu_name, parent_id, order_num, url,menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values('会议室', '3', '1', '/meeting/roomInfo', 'C', '0', 'meeting:roomInfo:view', '#', 'admin', '2018-03-01', 'ry', '2018-03-01', '会议室菜单');

-- 按钮父菜单ID
SELECT @parentId := LAST_INSERT_ID();

-- 按钮 SQL
insert into sys_menu  (menu_name, parent_id, order_num, url,menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values('会议室查询', @parentId, '1',  '#',  'F', '0', 'meeting:roomInfo:list',         '#', 'admin', '2018-03-01', 'ry', '2018-03-01', '');

insert into sys_menu  (menu_name, parent_id, order_num, url,menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values('会议室新增', @parentId, '2',  '#',  'F', '0', 'meeting:roomInfo:add',          '#', 'admin', '2018-03-01', 'ry', '2018-03-01', '');

insert into sys_menu  (menu_name, parent_id, order_num, url,menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values('会议室修改', @parentId, '3',  '#',  'F', '0', 'meeting:roomInfo:edit',         '#', 'admin', '2018-03-01', 'ry', '2018-03-01', '');

insert into sys_menu  (menu_name, parent_id, order_num, url,menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values('会议室删除', @parentId, '4',  '#',  'F', '0', 'meeting:roomInfo:remove',       '#', 'admin', '2018-03-01', 'ry', '2018-03-01', '');
