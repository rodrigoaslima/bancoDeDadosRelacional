-- Criar banco de dados bd_sistema_bancario
CREATE TABLE bd_sistema_bancario;


-- Criar 5 tabelas quaisquer
CREATE TABLE tb_usuarios(
    id integer primary key;
    nome varchar;
    cpf varchar;
);

CREATE TABLE tb_cidades(
    id integer primary key;
    nome varchar;
    cep varchar;
);

CREATE TABLE tb_materias(
    id integer primary key,
    nome varchar,
);

CREATE TABLE tb_professores(
    id integer primary key
    nome varchar,
    materia varchar,
);

CREATE TABLE tb_escolas(
    id integer primary key
    nome varchar,
    tipo varchar,
);




-- Criar tabelas conforme MER (Sistema Bancario):
CREATE TABLE cliente(
    NOME_CLIENTE varchar,
    CIDADE_CLIENTE varchar,
    ENDERECO_CLIENTE varchar
);

CREATE TABLE emprestimo(
    NUMERO_EMPRESTIMO integer,
    NOME_AGENCIA varchar,
    VALOR money
);

CREATE TABLE conta(
    NUMERO_CONTA integer,
    NOME_AGENCIA varchar,
    SALDO money
);

CREATE TABLE agencia(
    NOME_AGENCIA varchar,
    CIDADE_AGENCIA varchar,
    DEPOSITOS integer
);


-- Deletar as 5 tabelas criadas aleatoriamente
DROP TABLE tb_usuarios, tb_cidades, tb_materias,tb_professores,tb_escolas;



-- alterar as tabelas conforme o MER atualizado
ALTER TABLE cliente rename to tbl_cliente;
ALTER TABLE emprestimo rename to tbl_emprestimo;
ALTER TABLE conta rename to tbl_conta;
ALTER TABLE agencia rename to tbl_agencia;

ALTER TABLE tbl_cliente
    ADD COLUMN IDADE integer,
    ADD COLUMN CPF varchar(11);

ALTER TABLE tbl_agencia
    DROP COLUMN CIDADE_AGENCIA;

ALTER TABLE tbl_agencia 
    ADD COLUMN ENDERECO_AGENCIA varchar; 



-- Criar um esquema com o seu nome
CREATE SCHEMA rodrigo_augusto_silva_lima;

