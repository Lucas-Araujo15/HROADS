CREATE DATABASE SENAI_HROADS_MANHA
GO

USE SENAI_HROADS_MANHA;
GO

CREATE TABLE tipoHabilidade (
	idTipoHab INT PRIMARY KEY IDENTITY (1,1),
	nomeTipoHab VARCHAR(100)
);
GO

CREATE TABLE classe (
	idClasse INT PRIMARY KEY IDENTITY (1,1),
	nomeClasse VARCHAR(100)
);
GO

CREATE TABLE habilidade (
	idHabilidade INT PRIMARY KEY IDENTITY (1,1),
	idTipoHab INT FOREIGN KEY REFERENCES tipoHabilidade (idTipoHab),
	nomeHabilidade VARCHAR(100)
);
GO

CREATE TABLE classeHabilidade (
	idClasseHabilidade INT PRIMARY KEY IDENTITY (1,1),
	idHabilidade INT FOREIGN KEY REFERENCES habilidade (idHabilidade),
	idClasse INT FOREIGN KEY REFERENCES classe (idClasse)
);
GO

CREATE TABLE personagem (
	idPersonagem INT PRIMARY KEY IDENTITY (1,1),
	idClasse INT FOREIGN KEY REFERENCES classe (idClasse),
	nome VARCHAR(100),
	maxVida SMALLINT,
	maxMana SMALLINT,
	dataAtualizacao DATE,
	dataCriacao DATE,
);
GO