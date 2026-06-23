```sql
SELECT *

FROM DIMCUSTOMER

WHERE FIRSTNAME NOT IN ('Jon', 'Lauren', 'Julio')
AND EnglishEducation NOT IN ('Partial College', 'Partial High School')

ORDER BY EnglishEducation

```

![Imagem do resultado da Query](imagens/where%20not%20in.png)

# 🔍 Filtrando Dados com a Cláusula NOT IN no SQL

Ao realizar análises de dados em grandes ecossistemas de bancos de dados, como o **AdventureWorks**, muitas vezes a maior necessidade não é encontrar o que queremos, mas sim **eliminar o que não nos interessa**. 

Este artigo explora o funcionamento prático de uma consulta SQL estruturada para limpar e refinar a visualização de clientes na tabela `DIMCUSTOMER` através da exclusão múltipla de registros.

---

## 💻 A Consulta SQL

O script abaixo foi desenhado para listar informações de clientes, removendo nomes e níveis de escolaridade específicos que não fazem parte do público-alvo da análise atual.

```sql
SELECT *
FROM DIMCUSTOMER
WHERE FIRSTNAME NOT IN ('Jon', 'Lauren', 'Julio')
  AND EnglishEducation NOT IN ('Partial College', 'Partial High School')
ORDER BY EnglishEducation;

```

---

## 🛠️ Análise Passo a Passo do Código

A estrutura do script pode ser dividida em quatro partes fundamentais:

### 1. Seleção de Dados (`SELECT *` e `FROM`)

* `SELECT *`: O asterisco (`*`) indica que o banco de dados deve retornar **todas as colunas** disponíveis na tabela consultada.
* `FROM DIMCUSTOMER`: Aponta a tabela de origem. A `DIMCUSTOMER` (Tabela Dimensão de Clientes) armazena atributos demográficos, nomes, e-mails e preferências de consumo.

### 2. O Filtro de Nomes (`FIRSTNAME NOT IN`)

A cláusula `NOT IN` funciona como uma lista de exclusão.

```sql
WHERE FIRSTNAME NOT IN ('Jon', 'Lauren', 'Julio')

```

Nesta linha, o motor do banco de dados avalia o primeiro nome do cliente. Se o nome for **Jon**, **Lauren** ou **Julio**, o registro inteiro é descartado do resultado final.

### 3. O Filtro de Escolaridade (`AND EnglishEducation NOT IN`)

O operador lógico `AND` obriga que as duas condições sejam verdadeiras simultaneamente.

```sql
AND EnglishEducation NOT IN ('Partial College', 'Partial High School')

```

Aqui, filtramos o nível de educação (`EnglishEducation`). O script exclui clientes que possuem "Ensino Superior Incompleto" ou "Ensino Médio Incompleto", garantindo que apenas clientes com ciclos educacionais concluídos (ou outras categorias) permaneçam na análise.

### 4. Organização (`ORDER BY`)

* `ORDER BY EnglishEducation`: Garante a ordenação dos dados. Por padrão, o SQL organiza de forma **alfabética/ascendente (A-Z)**. Assim, fica muito mais fácil visualizar os grupos de clientes divididos por sua formação acadêmica.

---

## 📝 Resumo dos Conceitos Técnicos

A tabela abaixo serve como um guia rápido para os comandos utilizados:

| Comando / Operador | Tipo | Função na Query |
| --- | --- | --- |
| `SELECT *` | Projeção | Retorna todas as colunas da tabela. |
| `FROM` | Origem | Especifica a tabela-alvo (`DIMCUSTOMER`). |
| `WHERE` | Filtragem | Inicia as condições restritivas de linhas. |
| `NOT IN` | Operador de Conjunto | Exclui registros que correspondam a qualquer item da lista informada. |
| `AND` | Operador Lógico | Conecta múltiplos filtros exigindo o cumprimento de todos. |
| `ORDER BY` | Ordenação | Classifica as linhas retornadas (padrão Ascendente). |

---

## 💡 Boa Prática de Desempenho (Performance Tip)

> [!TIP]
> Embora o `NOT IN` seja muito fácil de ler e escrever, ao lidar com tabelas que contêm **milhões de linhas**, ele pode se tornar lento. Além disso, se a sua lista dentro do `NOT IN` contiver um valor `NULL` (nulo), a consulta inteira pode retornar vazia! Em cenários complexos com subconsultas, avalie utilizar `NOT EXISTS` ou `LEFT JOIN ... WHERE ... IS NULL` para garantir maior performance e segurança contra valores nulos.
```

```
## ✍️ Autor

**Jailson Carvalho**  
*Profissional de Dados & Desenvolvedor SQL*

Conecte-se comigo ou tire suas dúvidas:

* **LinkedIn:** [Acessar Perfil](https://www.linkedin.com/in/jailson-carvalho-b50a223a7/)
* **WhatsApp:** [Enviar Mensagem](https://wa.me/5551996235278)
```
