-- 数据库初始脚本


-- 创建数据库
CREATE DATABASE seckill;

-- 使用数据库
use seckill;

-- 创建秒杀库存表
CREATE TABLE seckill(
seckill_id bigint not null aotu_increment comment '商品库存id',
name varchar (120) not null comment '商品名称',
number int not null comment '库存数量',
start_time timestamp not null comment '秒杀开始时间',
end_time timestamp not null comment '秒杀结束时间',
create_time timestamp not null default current_timestamp comment '创建时间',
PRIMARY KEY (seckill_id),
key idx_start_time(start_time),
key idx_end_time(end_time),
key idx_create_time(create_time)
)ENGINE=InnoDB AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8 COMMIT='秒杀库存表';

-- 初始化数据
insert into seckill(name, number, start_time, end_time)
values ('1000元秒杀OnePlus 7 Pro', 300, '2019-07-08 00:00:00', '2019-07-09 00:00:00'),
('1500元秒杀IPad Pro', 100, '2019-07-08 00:00:00', '2019-07-09 00:00:00'),
('1200元秒杀IPhone XR', 200, '2019-07-08 00:00:00', '2019-07-09 00:00:00'),
('800元秒杀小米9', 400, '2019-07-08 00:00:00', '2019-07-09 00:00:00');

-- 秒杀成功明细表

-- 用户登录认证相关的信息
CREATE table success_killed(
seckill_id bigint not null comment '秒杀商品id',
user_phone bigint not null comment '用户手机号码',
state tinyint not null default -1 comment '状态：-1无效，0成功，1付款',
create_time timestamp not null comment '创建时间',
PRIMARY KEY(seckill_id, user_phone),
key idx_create_time(create_time)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 comment='秒杀成功明细表';