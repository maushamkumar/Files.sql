-- Advance constraints sql
create database First;
use First;

create table if not exists GFG (
user_id int primary key, 
username varchar(255) not null , 
age int check (age >= 18), 
email varchar(255) not null unique, 
city varchar(255), 
Activity  boolean default true
);

insert into GFG(user_id, username, email, age,city,  activity) values
(1, 'User1', 'user1@example.com', 25, 'City1', true), 
(2, 'User2', 'user2@example.com', 30, 'City2', False), 
(3, 'User3', 'user3@example.com', 22, 'City3', true), 
(4, 'user4', 'user4@example.com', 28, 'City4', true), 
(5, 'User5', 'user5@example.com', 35, 'City5', true);

select * from GFG;
