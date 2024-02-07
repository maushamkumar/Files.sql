-- timestamp

create database First;
use Firs;  
create table if not exists GFG (
join_date datetime default current_timestamp, 
user_id int primary key, 
username varchar(255) not null, 
email varchar(255) not null unique, 
age int check (age>=18), 
city varchar(255),
activity boolean default true, 
constraint ck_valid_city check (city in ('city1', 'city2', 'city3', 'city4', 'city5')
));

insert into GFG(user_id, username, email, age,city,  activity) values
(6, 'User1', 'user1@example.com', 25, 'City1', true), 
(7, 'User2', 'user2@example.com', 30, 'City2', False), 
(8, 'User3', 'user3@example.com', 22, 'City3', true), 
(9, 'user4', 'user4@example.com', 28, 'City4', true), 
(10, 'User5', 'user5@example.com', 35, 'City5', true);

truncate table GFG;
