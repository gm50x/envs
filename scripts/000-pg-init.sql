set timezone to 'America/Sao_Paulo';

create schema dasil;

create table dasil.fruit (
  id serial primary key,
  name varchar(100),
  likes integer default 0,
  active boolean default true
);

insert into dasil.fruit (name)
values('Apple');
insert into dasil.fruit (name)
values('Pineapple');
insert into dasil.fruit (name)
values('Mango');

create table dasil.animal (
  id serial primary key,
  name varchar(100),
  likes integer default 0,
  active boolean default true
);

insert into dasil.animal (name)
values('Bird');
insert into dasil.animal (name)
values('Dog');
insert into dasil.animal (name)
values('Cat');
