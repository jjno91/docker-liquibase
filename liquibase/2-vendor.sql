--liquibase formatted sql
--changeset root:2

--rollback DROP TABLE vendor;
create table vendor (
    id int primary key auto_increment not null,
    name varchar(50) not null,
    address1 varchar(50),
    address2 varchar(50),
    city varchar(30)
)
