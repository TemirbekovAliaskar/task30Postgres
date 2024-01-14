create table country(
                        id serial primary key ,
                        country_name varchar,
                        capital_name varchar
);

insert into country(country_name, capital_name)
values ('Russia','Moscow'),
       ('USA','Washington'),
       ('Kyrgyzstan','Bishkek');

alter table country rename to countries;

create table city(
                     id serial primary key ,
                     city_name varchar,
                     country_id int references country(id)
);

alter table city add column currency varchar;

alter table city rename to cities;

insert into city(city_name,currency, country_id)
values ('Osh','Som',3),
       ('New-York','Dollar',2),
       ('Dallas','Dollar',2),
       ('St.Petersburg','RUB',1);

create table sports (
                        id serial primary key ,
                        sport_name varchar,
                        year_of_birth_country_name varchar
);

alter table sports drop column year_of_birth_country_name;
alter table sports add column last_name varchar;

insert into sports(sport_name,last_name)
values ('Freestyle Wrestling' ,'Aisuluu Tynybkova'),
       ('Soccer','Cristiano Ronaldo');

create table phone (
                       id serial primary key ,
                       phone_name varchar,
                       made_in varchar,
                       price int
);

alter table phone add constraint phone_name unique (phone_name);
alter table phone rename to phonies;

insert into phonies (phone_name, made_in, price)
values ('Samsung','Korea',2000),
       ('Sony','Japan',500),
       ('Apple','USA',3500);

create table bags (
                      id serial primary key ,
                      brand_name varchar not null ,
                      price_bag int,
                      material varchar
);

alter table bags
    alter column brand_name drop not null ;

alter table bags
    alter column brand_name set default 'Pustoi';

insert into bags  (price_bag, material)
values (200,'Leather'),
       (342,'Synthetics');

insert into bags  (brand_name,price_bag, material)
values ('CAT',444,'Leather'),
       ('BUTUN',700,'Leather');

create table bottle(
                       id serial primary key ,
                       name_brand varchar,
                       made_in varchar
);

insert into bottle(name_brand, made_in)
values ('Jalal-Abad 27','Kyrgyzstan'),
       ('Borjomi','Georgia');


create table houses(
                       id serial primary key ,
                       hous_name varchar,
                       address varchar,
                       cities_id int references cities(id)
);

insert into houses(hous_name, address, cities_id)
values ('Penthous','Vostok-5',1),
       ('Luxe','Street New-York',2),
       ('Ambassador','Kuzminki',4);



