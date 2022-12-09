--liquibase formatted sql
--changeset product:1

--rollback DROP TABLE phone;
create table phone (
    id int primary key auto_increment not null,
    name varchar(50) not null,
    address1 varchar(50),
    address2 varchar(50),
    city varchar(30)
)
