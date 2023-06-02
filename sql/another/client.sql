--liquibase formatted sql

--changeset main:1
create table anothertemp2 (
    id int primary key not null,
    name varchar(50) not null,
    address1 varchar(50),
    address2 varchar(50),
    city varchar(30)
)

--changeset main:2
create table anothertemp3 (
    id int primary key not null,
    name varchar(50) not null,
    address1 varchar(50),
    address2 varchar(50),
    city varchar(30)
)

--changeset main:3
drop table anothertemp3
