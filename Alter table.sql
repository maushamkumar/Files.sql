-- Alter table sql

create database if not exists First;
use First;

drop table if exists users;
create table users(
user_id int primary key, 
username varchar(255) not null, 
email varchar(255) not null, 
age int, 
city varchar(255) 
);

select * from users;

insert into users (user_id, username, email, age, city) values
(1, 'user1', 'user1@example.com', 25, 'City1'),
    (2, 'user2', 'user2@example.com', 30, 'City2'),
    (3, 'user3', 'user3@example.com', 22, 'City3'),
    (4, 'user4', 'user4@example.com', 28, 'City4'),
    (5, 'user5', 'user5@example.com', 35, 'City5');
    
select * from users;


alter table users
add column phone_number varchar(15);

alter table users 
drop column phone_number;

alter table users
add column kuch_bhi int ;

alter table users
drop column kuch_bhi;

alter table users
change column user_age Age int;

alter table users
alter column Age set default 18;

alter table users
modify column email varchar(500) not null unique;

alter table users
change column Age age int not null;
