USE AdventureWorksDW2019
SELECT *


```sql
FROM [dbo].[DimCustomer]
--WHERE EnglishEducation = 'High School'
--AND EnglishOccupation = 'Manual'

WHERE EnglishEducation in ('Bachelors', 'High School')
-- EM OUTRA COLUNA
AND SpanishOccupation IN ('Administrativo','Profesional')
ORDER BY EnglishEducation 

```
```
![Imagem do resultado da Query](imagens/Captura%20de%20tela%202026-06-22%20230622.png)
```
# 🎯 Filtrando Clientes por Escolaridade e Ocupação com SQL

Este código SQL foi desenvolvido utilizando o banco de dados `AdventureWorksDW2019` e tem como objetivo realizar a consulta de clientes com base em critérios específicos de escolaridade e ocupação.

- Primeiramente, o comando `USE AdventureWorksDW2019` define qual banco de dados será utilizado durante a execução da consulta.
- Em seguida, o comando `SELECT *` retorna todas as colunas da tabela `DimCustomer`, que contém informações relacionadas aos clientes.
- A cláusula `WHERE` é utilizada para aplicar filtros nos dados. Neste exemplo, foram selecionados apenas os clientes que possuem nível de escolaridade (`EnglishEducation`) igual a *Bachelors* (Graduação) ou *High School* (Ensino Médio), utilizando o operador `IN`.
- Além disso, foi aplicado um segundo filtro na coluna `SpanishOccupation`, retornando apenas os clientes cujas ocupações sejam *Administrativo* ou *Profesional*.
- Por fim, a cláusula `ORDER BY EnglishEducation` organiza os resultados em ordem alfabética de acordo com o nível de escolaridade dos clientes.

---

## 💻 Código SQL

```sql
USE AdventureWorksDW2019;

SELECT *
FROM [dbo].[DimCustomer]
WHERE EnglishEducation IN ('Bachelors', 'High School')
  AND SpanishOccupation IN ('Administrativo', 'Profesional')
ORDER BY EnglishEducation;

```

---

## 📚 Conceitos Utilizados

A tabela abaixo resume os principais comandos e cláusulas aplicados neste script:

| Comando / Cláusula | Função Principal |
| --- | --- |
| `USE` | Seleciona o banco de dados que será utilizado. |
| `SELECT *` | Retorna todas as colunas da tabela selecionada. |
| `FROM` | Define a tabela de origem dos dados (`[dbo].[DimCustomer]`). |
| `WHERE` | Filtra os registros com base em condições específicas. |
| `IN` | Permite comparar uma coluna com múltiplos valores simultaneamente. |
| `AND` | Combina duas ou mais condições de filtragem (ambas devem ser verdadeiras). |
| `ORDER BY` | Ordena os resultados da consulta com base em uma coluna. |
| `--` (Comentários) | Utilizados para documentar ou desativar trechos do código. |

```
