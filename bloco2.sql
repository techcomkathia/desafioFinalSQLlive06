
-- Questão 1 — Inserir novo cliente e veículo + relação
INSERT INTO cliente (nomeCliente, email) VALUES ('Eduarda Ferreira', 'eduardaFerreira@empresa');
-- Buscar o id do cliente inserido (exemplo):
SELECT idCliente FROM cliente WHERE nomeCliente = 'Eduarda Ferreira' AND email = 'eduardaFerreira@empresa';
-- Suponha que idCliente retornado seja 22
INSERT INTO veiculo (tipo, placa) VALUES ('moto', 'EFX9D55');
-- Buscar o id do veículo inserido:
SELECT idVeiculo FROM veiculo WHERE placa = 'EFX9D55';
-- Suponha que idVeiculo retornado seja 33
INSERT INTO cliente_veiculo (fkCliente, fkVeiculo) VALUES (22, 33);







-- Questão 2 — Cadastrar entrada do veículo
-- Buscar idVeiculo pela placa
SELECT idVeiculo FROM veiculo WHERE placa = 'EFX9D55';
-- Suponha idVeiculo = 33
INSERT INTO veiculo_vaga (fkVeiculo, fkVaga, data_hora_entrada) 
VALUES (33, 5, '2025-05-19 18:00:00');




-- Questão 3 — Atualizar saída do veículo
-- Buscar idVeiculo pela placa
SELECT idVeiculo FROM veiculo WHERE placa = 'EFX9D55';
-- Suponha idVeiculo = 33
UPDATE veiculo_vaga
SET data_hora_saida = '2025-05-19 20:20:00'
WHERE fkVeiculo = 59 AND data_hora_saida IS NULL;




-- Questão 4 — Atualizar email para três clientes
select idCliente
from cliente
WHERE nomeCliente = 'Bruna Freitas'
   or nomeCliente = 'Igor Aragão'
   OR nomeCliente = 'Pietra Lima';


UPDATE cliente
SET email = 'empresa@empresa.com'
WHERE idCliente = 6
   OR idCliente = 13
   OR idCliente = 20;

