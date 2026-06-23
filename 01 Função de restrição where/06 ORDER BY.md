
---

## 💻 A Consulta SQL

O script abaixo foi desenvolvido para listar todos os funcionários do banco de dados, organizando-os primeiro pelo primeiro nome de forma ascendente e, em caso de empate, pelo sobrenome de forma decrescente.

```sql
SELECT *
FROM [dbo].[DimEmployee]
ORDER BY FIRSTNAME, LASTNAME DESC;

```
![Imagem do resultado da Query](imagens/order%20by.png)

---

## 🛠️ Análise Passo a Passo do Código

A estrutura desta consulta foca puramente na organização e na regra de negócios aplicada à exibição dos dados:

### 1. Seleção Geral (`SELECT *` e `FROM`)

* `SELECT *`: Instrui o banco de dados a trazer todas as colunas disponíveis na tabela. No caso da `DimEmployee`, veremos registros contendo identificadores, cargos, datas de contratação, status de férias, entre outros.
* `FROM [dbo].[DimEmployee]`: Define a tabela dimensional de funcionários como a origem da nossa busca.

### 2. A Cláusula `ORDER BY` com Múltiplas Colunas

O grande destaque desta query está na forma como o `ORDER BY` foi configurado. Quando separamos colunas por vírgula, o SQL estabelece uma **hierarquia de ordenação** da esquerda para a direita:

* **Primeiro Nível (`FIRSTNAME`):** O banco de dados organiza toda a tabela com base no primeiro nome em ordem alfabética padrão (**A a Z**). Como não escrevemos explicitamente a palavra `ASC` (Ascendente), o SQL a assume automaticamente.
* **Segundo Nível (`, LASTNAME DESC`):** O modificador `DESC` (Decrescente - **Z a A**) aplica-se **apenas** à coluna `LASTNAME`. O banco de dados só recorrerá a esta coluna se houver um "empate" no primeiro nível.

### 🔍 Exemplo Prático de Como o Banco Processa o Resultado:

Imagine que o banco possua três funcionários com o primeiro nome "John". O resultado será agrupado e exibido nesta ordem:

1. **John** **S**mith  (O sobrenome com 'S' vem primeiro porque é decrescente)
2. **John** **M**iller
3. **John** **A**nderson

Se um quarto funcionário se chamar "Albert", ele aparecerá antes de todos os "Johns", pois a letra 'A' tem prioridade no primeiro nível (`FIRSTNAME`), independentemente de qual seja o seu sobrenome.

---

## 📝 Resumo dos Conceitos Técnicos

| Comando / Modificador | Tipo | Função na Query |
| --- | --- | --- |
| `ORDER BY` | Cláusula | Determina a ordem em que as linhas retornadas serão exibidas. |
| `FIRSTNAME` (sem modificador) | Coluna Célula | Ordenação primária e implícita em modo Ascendente (`ASC`). |
| `,` (Vírgula) | Separador | Define a quebra de nível e prioridade entre as colunas de ordenação. |
| `LASTNAME DESC` | Coluna + Modificador | Ordenação secundária aplicada de forma Decrescente (Z-A) apenas em caso de empate. |

---

## 💡 Boa Prática de Performance (Performance Tip)

> [!IMPORTANT]
> A cláusula `ORDER BY` é uma das operações mais pesadas para um banco de dados relacional. Para ordenar os dados, o SQL Server precisa carregar os registros na memória e processá-los. Se a tabela `DimEmployee` tivesse milhões de registros, essa consulta poderia ficar lenta. Em cenários reais de produção, certifique-se de que as colunas utilizadas no `ORDER BY` possuam um **Índice (Index)** criado no banco para acelerar a classificação.

---

## ✍️ Autor

**Jailson Carvalho** *Profissional de Dados & Desenvolvedor SQL*

Conecte-se comigo ou tire suas dúvidas:

* **LinkedIn:** [Acessar Perfil](https://www.linkedin.com/in/jailson-carvalho-b50a223a7/)
* **WhatsApp:** [Enviar Mensagem](https://www.google.com/search?q=https://wa.me/5551996235278)

```
