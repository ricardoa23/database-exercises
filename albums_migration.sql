USE codeup_test_db;

drop table if exists albums;

CREATE TABLE albums (
    id int unsigned not null auto_increment,
    artist varchar(100) not null,
    name varchar(100) not null,
    release_date smallint unsigned,
    sales decimal(5, 2),
    genre varchar(30),
    primary key (id)
);
