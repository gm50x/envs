create schema feature;
set timezone to 'America/Sao_Paulo';

create table feature.toggle (
    name varchar(255) primary key,
    active boolean default false
);

insert into 
    feature.toggle (
        name, active
    )
values 
    ('ObterDadosCartaoUseCase', true);