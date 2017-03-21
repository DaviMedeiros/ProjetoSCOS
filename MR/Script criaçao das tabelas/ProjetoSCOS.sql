-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE cliente (
cpcliente int(4),
ceendereco int(4),
txnome varchar(200),
txtel varchar(50),
txcel varchar(50),
txcpf_cnpj varchar(50),
txrg_inscrEst varchar(20),
txuf_rg varchar(3),
tipo int(1),
txemail varchar(150),
txobs varchar(250),
statuscli int(1),
dtcadcliente Date
)

CREATE TABLE os (
cpos int(4),
cecliente_veiculo int(4),
dtabertura Date,
vlrtotalos float(8),
vlrtotalserv float(8),
vlrtotalprod float(8),
kmatual float(8),
statusos int(1),
dtfechos Date,
dtpago Date,
dtcancel Date,
situfinanc int(1),
txmotivcancel varchar(250),
vlrpago float(8)
)

CREATE TABLE mecanico_serviço (
cpmecanico_serviço int(4),
ceos int(4),
cemecanico int(4),
ceservico int(4),
vlrservmec float(8),
dtcadmecserv Date
)

CREATE TABLE serviço (
cpservico int(4),
txdescricao varchar(250),
vlrservico float(8),
dtaltserv Date
)

CREATE TABLE produto (
cpproduto int(4),
txnome varchar(200),
vlrvenda float(8),
dtaltprod Date
)

CREATE TABLE veiculo (
cpveiculo int(4),
txmodelo varchar(40),
txplaca varchar(20),
ano int(4),
txchassis varchar(50),
txmarca varchar(20),
txcor varchar(20),
dtcadveiculo Date
)

CREATE TABLE cliente_veiculo (
cpcliente_veiculo int(4),
cecliente int(4),
ceveiculo int(4),
statusclivei int(4),
dtfechclivei Date,
dtcadclivei Date
)

CREATE TABLE produto_os (
cpproduto_os int(4),
ceproduto int(4),
ceos int(4),
qtdproduto int(4),
vlrunit float(8),
vlrtotalprodos float(8),
dtcadprodos Date
)

CREATE TABLE endereco (
cpndereco int(4),
txendereco varchar(70),
txbairro varchar(40),
txcep varchar(11),
txcidade varchar(50),
txestado varchar(50),
dtaltend Date
)

CREATE TABLE mecanico (
cpmecanico int(4),
txnome varchar(200),
txtel varchar(50),
txcpf varchar(50),
txrg varchar(20),
txctps varchar(50),
percomiss float(8),
txemail varchar(150),
dtnascmecanico Date,
dtcadmecanico Date
)

CREATE TABLE usuario (
cpusuario int(4),
ceendereco int(4),
txnome varchar(200),
txtel varchar(50),
txcel varchar(50),
txsexo varchar(3),
txcpf varchar(14),
txrg varchar(20),
txuf_rg varchar(3),
txctps varchar(50),
txemail varchar(150),
dtnascusuario Date,
tipo int(1),
dtcadusuario Date
)

