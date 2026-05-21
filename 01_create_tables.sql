CREATE DATABASE Ad_Astra;
Use Ad_Astra;

CREATE TABLE Usuario (
    id_usuario int Auto_Increment,
    nm_usuario varchar(100) NOT NULL,
    cpf_usuario varchar(11) NOT NULL UNIQUE,
    rg_usuario varchar(9) NOT NULL UNIQUE,
    dt_nascimento date NOT NULL,
    dt_criacao DATETIME DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (id_usuario)
);

CREATE TABLE Corretor (
    id_usuario int,
    creci varchar(6) NOT NULL UNIQUE,
    PRIMARY KEY (id_usuario),
    FOREIGN KEY (id_usuario) REFERENCES Usuario (id_usuario) ON DELETE CASCADE
);

CREATE TABLE Locatario (
    id_usuario int,
    score_credito int default 500,
    PRIMARY KEY (id_usuario),
    FOREIGN KEY (id_usuario) REFERENCES Usuario (id_usuario) ON DELETE CASCADE
);

CREATE TABLE Telefone_Usuario(
  id_telefone int AUTO_INCREMENT,
  id_usuario int NOT NULL,
  num_telefone varchar(11) NOT NULL,
  PRIMARY KEY (id_telefone),
  FOREIGN KEY (id_usuario) REFERENCES Usuario (id_usuario) ON DELETE CASCADE
);

CREATE TABLE Imovel (
  id_imovel int AUTO_INCREMENT,
  id_proprietario int NOT NULL,
  logradouro_imovel varchar(150) NOT NULL,
  num_imovel varchar(10)NOT NULL,
  bairro_imovel varchar(50) NOT NULL,
  cdd_imovel varchar(50) NOT NULL,
  status_imovel varchar(20) DEFAULT 'Disponivel',
  PRIMARY KEY (id_imovel),
  FOREIGN KEY (id_proprietario) REFERENCES Usuario (id_usuario)
);

CREATE TABLE Agendamento (
  id_agendamento int AUTO_INCREMENT,
  id_imovel int NOT NULL,
  id_locatario int NOT NULL,
  id_corretor int NOT NULL,
  dt_solicitacao DATETIME DEFAULT CURRENT_TIMESTAMP,
  dt_visita DATETIME NOT NULL,
  aprovacao varchar(20) DEFAULT 'Pendente',
  PRIMARY KEY (id_agendamento),
  FOREIGN KEY (id_imovel) REFERENCES Imovel (id_imovel) ON DELETE CASCADE,
  FOREIGN KEY (id_locatario) REFERENCES Locatario (id_usuario),
  FOREIGN KEY (id_corretor) REFERENCES Corretor (id_usuario)
);

CREATE TABLE Pagamento (
  id_pagamento int AUTO_INCREMENT,
  id_agendamento int NOT NULL,
  vl_pagamento decimal (10,2),
  dt_pagamento DATETIME,
  pg_aprovado boolean DEFAULT FALSE,
  PRIMARY KEY (id_pagamento),
  FOREIGN KEY (id_agendamento) REFERENCES Agendamento (id_agendamento) ON DELETE CASCADE
);

