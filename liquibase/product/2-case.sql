--liquibase formatted sql
--changeset product:2

--rollback DROP TABLE case;
create table case (
    id int primary key auto_increment not null,
    name varchar(50) not null,
    address1 varchar(50),
    address2 varchar(50),
    city varchar(30)
)
