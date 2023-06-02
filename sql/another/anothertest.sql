--liquibase formatted sql

--changeset anothertest:1
create table anothertest2 (
    id int primary key not null,
    name varchar(50) not null,
    address1 varchar(50),
    address2 varchar(50),
    city varchar(30)
)

--changeset anothertest:2
create table anothertest3 (
    id int primary key not null,
    name varchar(50) not null,
    address1 varchar(50),
    address2 varchar(50),
    city varchar(30)
)

--changeset anothertest:3
drop table anothertest3
