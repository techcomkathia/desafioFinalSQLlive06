
# Desafio SQL — Sistema de Estacionamento 🚗🏍️

## Estrutura do Desafio

O desafio está dividido em **3 blocos**, contemplando os comandos DDL, DML e DQL. Cada bloco tem questões práticas e uma pontuação específica. Os alunos devem apresentar o desenvolvimento no GitHub e compartilhar a tela para verificação do uso de IA.


Para organizar seu repositório siga o seguintes passos:
### 1. 🧾 Crie um novo repositório no seu GitHub
- Crie um novo repositório 
- Dê um nome ao repositório de 'Desafio SQL'.
- **Não** adicione README, `.gitignore` ou licença (para evitar conflitos).
- Crie o repositório e **copie a URL SSH ou HTTPS** do seu repositório novo.
### 2. ⬇️ Clone o repositório original
Abra o terminal e execute:

```bash
git clone https://github.com/techcomkathia/desafioFinalSQLlive06.git
cd repositorio-exemplo
```
### 3. Configure o repositório clonado para o seu repositório da atividade recém criado.
Verifique o remoto atual:

```bash
git remote -v
```
Remova o origin antigo
```bash
git remote remove origin
```

Adicione seu repositório (copiado do GitHub anteriormente):

```bash
git remote add origin https://github.com/seu-usuario/seu-repositorio.git
```

Verifique se foi adicionado corretamente:

```bash
git remote -v
```


### 4. Estruturando o banco.

Crie um arquivo com a extensão sql para inicar o desafio considere o SQL das tabelas :

```sql

CREATE TABLE cliente (
  idCliente INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(100) NOT NULL
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

```

---

# 📊 Total de Pontos: 100

- Bloco 1 (DDL): 26 pts  
- Bloco 2 (DML): 26 pts  
- Bloco 3 (DQL): 48 pts  

---

> Os alunos devem versionar os arquivos no GitHub e apresentar os scripts na ordem dos blocos, com correção ao vivo.
Conforme os blocos forem finalizados, as questões dos blocos seguintes serão incluídas. 


## ✅ Cronograma com Gabaritos Intercalados

| Horário         | Atividade                                 |
|-----------------|--------------------------------------------|
| **19h10 – 19h25** | Bloco 1 — DDL (20 min)                    |
| **19h25 – 19h30** | Correção + Gabarito DDL (5 min)           |
| **19h30 – 19h55** | Bloco 2 — DML (25 min)                    |
| **19h55 – 20h00** | Correção + Gabarito DML (10 min)          |
| **20h00 – 20h15** | **Intervalo (15 min)**                    |
| **20h15 – 21h25** | Bloco 3 — DQL (55 min)                    |
| **21h25 – 21h40** | Correção + Gabarito DQL (15 min)          |
| **21h40 – 21h45** | Encerramento, dúvidas finais e avisos     |

---






![Imagem do projeto](diagrama.jpg)


# 🧱 Bloco 1 — DDL (24 pontos)

**Questão 2 (10 pts)** — Crie a tabela `veiculo_vaga` para registrar as entradas e saídas dos veículos nas vagas. Essa tabela deve conter as colunas `idRegistro` (PK), `fkVeiculo`, `fkVaga`, `data_hora_entrada` e `data_hora_saida`.

**Questão 3 (7 pts)** — Altere a tabela `veiculo` para modificar a coluna `placa` de `INT` para `VARCHAR(8)`, pois as placas brasileiras seguem o padrão Mercosul que tem 8 caracteres (exemplo: ABC1D23).


**Questão 4 (7 pts)** —  Adicione a coluna `email` do tipo `VARCHAR(150)` na tabela `cliente`

--
Faça as inclusões dos dados nas respectivas tabelas com o arquivo inserts.sql
--

# 🧾 Bloco 2 — DML (26 pontos)

**Questão 1 (12 pts)** — texto em breve

**Questão 3 (6 pts)** — texto em breve

**Questão 4 (8 pts)** — texto em breve


# 🔍 Bloco 3 — DQL (50 pontos)

**Questão 1 (8 pts)** — texto em breve

**Questão 2 (10 pts)** — texto em breve

**Questão 3 (10 pts)** — texto em breve

**Questão 4 (12 pts)** — texto em breve

**Questão 5 (10 pts)** — texto em breve



---


