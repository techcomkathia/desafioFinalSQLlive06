-- Questão 1 — Quantos veículos estão cadastrados
SELECT COUNT(*) AS total_veiculos FROM veiculo; --58


-- Questão 2 — Quantos veículos usaram cada tipo de vaga
SELECT v.tipo, COUNT(DISTINCT vv.fkVeiculo) AS total_veiculos
FROM veiculo v
INNER JOIN veiculo_vaga vv ON v.idVeiculo = vv.fkVeiculo
INNER JOIN vaga va ON va.idVaga = vv.fkVaga
GROUP BY va.tipo; -- Use GROUP BY para agrupar por tipo de vaga
--normal 20
--gestante 6
--deficiente 28
--idoso 26


-- Questão 3 — Nomes e emails dos clientes que possuem motos em ordem alfabética
SELECT c.nomeCliente, c.email
FROM cliente c
INNER JOIN cliente_veiculo cv ON c.idCliente = cv.fkCliente
INNER JOIN veiculo v ON v.idVeiculo = cv.fkVeiculo
WHERE v.tipo = 'moto'
ORDER BY c.nomeCliente;


-- Questão 4 — Calcular valor total faturado (moto R$8, carro R$15)
SELECT 
  (SELECT COUNT(*) * 8
   FROM veiculo_vaga vv 
   INNER JOIN veiculo v ON v.idVeiculo = vv.fkVeiculo 
   WHERE v.tipo = 'moto')
   +
  (SELECT COUNT(*) * 15 
   FROM veiculo_vaga vv 
   INNER JOIN veiculo v ON v.idVeiculo = vv.fkVeiculo 
   WHERE v.tipo = 'carro')
AS total_faturado;



--  Questão 5 — Quantos carros e motos estacionaram na vaga 8
SELECT v.tipo, COUNT(DISTINCT vv.fkVeiculo) AS total
FROM veiculo_vaga vv
INNER JOIN veiculo v ON v.idVeiculo = vv.fkVeiculo
WHERE vv.fkVaga = 8
GROUP BY v.tipo;


