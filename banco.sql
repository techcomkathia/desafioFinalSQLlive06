CREATE DATABASE desafio;

USE desafio;


CREATE TABLE cliente (
  idCliente INT AUTO_INCREMENT PRIMARY KEY,
  nomeCliente VARCHAR(100) NOT NULL
);


CREATE TABLE veiculo (
  idVeiculo INT AUTO_INCREMENT PRIMARY KEY,
  placa INT NOT NULL,
  tipo ENUM('carro', 'moto') NOT NULL
);


CREATE TABLE vaga (
  idVaga INT AUTO_INCREMENT PRIMARY KEY,
  numeroVaga INT NOT NULL,
  tipoVaga ENUM('normal', 'deficiente', 'idoso', 'gestante') NOT NULL
);



CREATE TABLE cliente_veiculo (
  fkCliente INT NOT NULL,
  fkVeiculo INT NOT NULL,
  PRIMARY KEY (fkCliente, fkVeiculo),
  FOREIGN KEY (fkCliente) REFERENCES cliente(idCliente),
  FOREIGN KEY (fkVeiculo) REFERENCES veiculo(idVeiculo)
);
