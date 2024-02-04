create database if not exists First;

create table If not exists GFG (
user_id int, 
userName varchar(255), 
email varchar(255), 
age int, 
city varchar(255)
);

insert into GFG values
(1, 'User1', 'user1@example.com', 25, 'City1'), 
(2, 'User2', 'user2@example.com', 30, 'City2'), 
(3, 'User3', 'user3@example.com', 22, 'City3'), 
(4, 'user4', 'user4@example.com', 28, 'City4'), 
(5, 'User5', 'user5@example.com', 35, 'City5');

select * from GFG;
