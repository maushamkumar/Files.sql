create database if not exists First;
use First;

truncate table GFG;

create table if not exists users(
uid int primary key auto_increment unique, 
userName varchar(255) not null, 
email varchar(255) not null
);

create table if not exists orders(
old int primary key auto_increment unique, 
uid int not null, 
order_date datetime not null default current_timestamp, 
constraint order_fk foreign key(uid) references users (uid)
);

insert into users (userName, email) values
('john Doe', 'john.doe@example.com'), 
('Jane Smith', 'jane.smith@example.com'), 
('Bob johnson', 'bob.johnson@example.com');

insert into orders(uid) values
(1), 
(2);

drop table users;
drop table orders;

select * from users;
select * from GFG.orders;