create table cashback.extrato (
    id bigserial primary key,
    cpf varchar(11) not null,
    agencia smallint not null,
    conta int not null,
    id_transacao varchar(36) unique not null,
    tipo_transacao varchar(30),
    descricao_transacao varchar(100) not null,
    valor_transacao numeric(12,2) not null,
    valor_cashback numeric(12,6) not null,
    percentual_retorno numeric(5,2) not null,
    status varchar(50) not null,
    data_pagamento date,
    data_inclusao timestamp default current_timestamp,
    data_alteracao timestamp
);
       
insert into cashback.extrato (cpf, agencia, conta, id_transacao, tipo_transacao, descricao_transacao, valor_transacao, valor_cashback, percentual_retorno, status)
values ('25525525526', 89, 19266548, 'df1dceb1-94dd-42d8-ad8f-c9cd06e77e4b', 'Crédito', 'Amazon' , 193.87, 0.39, 0.20, 'Aguardando Pagamento');
insert into cashback.extrato (cpf, agencia, conta, id_transacao, tipo_transacao, descricao_transacao, valor_transacao, valor_cashback, percentual_retorno, status)
values ('25525525526', 89, 19266548, 'dee74a0e-79bb-4b48-83bc-543a32746dd8', 'Débito', 'Padaria Giovanna', 35.44, 0.04, 0.10, 'Aguardando Pagamento');
insert into cashback.extrato (cpf, agencia, conta, id_transacao, tipo_transacao, descricao_transacao, valor_transacao, valor_cashback, percentual_retorno, status)
values ('25525525526', 89, 19266548, '13650378-cc63-462b-abd6-9b5f939e5a95', 'Crédito', 'Fastshop', 119.99, 0.24, 0.20, 'Aguardando Pagamento');
insert into cashback.extrato (cpf, agencia, conta, id_transacao, tipo_transacao, descricao_transacao, valor_transacao, valor_cashback, percentual_retorno, status)
values ('25525525526', 89, 19266548, 'a753fe01-53ac-42f3-9132-2e8d3bb0be6d', 'Débito', 'Padaria Giovanna', 14.19, 0.01, 0.10, 'Aguardando Pagamento');
insert into cashback.extrato (cpf, agencia, conta, id_transacao, tipo_transacao, descricao_transacao, valor_transacao, valor_cashback, percentual_retorno, status)
values ('14414414415', 89, 19266577, '8f989552-3b21-4f38-b6ab-8d668517ada6', 'Crédito', 'PSN', 99.00, 0.20, 0.20, 'Aguardando Pagamento');
insert into cashback.extrato (cpf, agencia, conta, id_transacao, tipo_transacao, descricao_transacao, valor_transacao, valor_cashback, percentual_retorno, status)
values ('14414414415', 89, 19266577, '218182db-fef4-4515-964c-f2e7794b91d8', 'Débito', 'Droga Raia', 12.28, 0.01, 0.10, 'Aguardando Pagamento');
insert into cashback.extrato (cpf, agencia, conta, id_transacao, tipo_transacao, descricao_transacao, valor_transacao, valor_cashback, percentual_retorno, status)
values ('25525525526', 89, 19266548, '136694ba-b632-4e31-86e7-340ff4df3e90', 'Crédito', 'Submarino', 137.10, 0.27, 0.20, 'Aguardando Pagamento');