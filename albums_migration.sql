USE codeup_test_db;

drop table if exists albums;

CREATE TABLE albums (
    id int unsigned not null auto_increment,
    artist varchar(250) not null,
    name varchar(250) not null,
    release_date smallint unsigned,
    genre varchar(250),
    sales float,
    primary key (id)
);

