
USE desafio;


CREATE TABLE veiculo_vaga (
  idVeiculo_vaga INT AUTO_INCREMENT PRIMARY KEY,
  fkVeiculo INT NOT NULL,
  fkVaga INT NOT NULL,
  data_hora_entrada DATETIME NOT NULL,
  data_hora_saida DATETIME,
  FOREIGN KEY (fkVeiculo) REFERENCES veiculo(idVeiculo),
  FOREIGN KEY (fkVaga) REFERENCES vaga(idVaga)
);

ALTER TABLE veiculo
MODIFY placa VARCHAR(8);

ALTER TABLE cliente
ADD COLUMN email VARCHAR(150);


