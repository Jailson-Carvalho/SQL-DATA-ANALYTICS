```sql
SELECT 

	SalesOrderNumber
	,OrderQuantity
	,UnitPrice
	,SalesAmount

FROM [dbo].[FactResellerSales]

WHERE OrderQuantity >= 10 

ORDER BY 2 DESC

```
![Imagem do resultado da Query](imagens/maior%20e%20menor.png)
---

## 🛠️ Análise Passo a Passo do Código

A consulta é composta por quatro etapas principais da sintaxe SQL:

### 1. Seleção de Colunas Estratégicas (`SELECT`)

Em vez de utilizar o asterisco (`*`), a consulta projeta colunas específicas para otimizar a performance e focar no objetivo:

* `SalesOrderNumber`: O número de identificação do pedido de venda.
* `OrderQuantity`: A quantidade de produtos solicitados naquela linha do pedido.
* `UnitPrice`: O preço unitário de cada produto.
* `SalesAmount`: O valor total da venda (`OrderQuantity` × `UnitPrice`).

### 2. Origem dos Dados (`FROM`)

* `FROM [dbo].[FactResellerSales]`: Os dados são extraídos de uma **Tabela de Fatos** (`Fact`). No modelo dimensional, as tabelas de fatos armazenam as métricas quantitativas e transacionais do negócio, sendo ideal para relatórios de vendas.

### 3. O Operador Maior ou Igual (`WHERE >=`)

A cláusula `WHERE` limita as linhas que retornam do banco:

```sql
WHERE OrderQuantity >= 10

```

O operador `>=` (Maior ou Igual) garante que o resultado trará **apenas** as linhas onde o revendedor comprou 10 ou mais unidades de um mesmo produto, isolando o atacado do varejo tradicional.

### 4. Ordenação por Índice de Coluna (`ORDER BY 2 DESC`)

```sql
ORDER BY 2 DESC

```

* **O número `2**`: Em SQL, você pode ordenar os dados referenciando a posição da coluna declarada no `SELECT`. Neste caso, o `2` representa a segunda coluna listada, que é `OrderQuantity`.
* **O termo `DESC**`: Significa *Descending* (Decrescente). Isso força o banco de dados a exibir primeiro as maiores quantidades vendidas, descendo até o limite mínimo que definimos (10).

---

## 📝 Resumo dos Conceitos Técnicos

| Elemento | Tipo | Função na Query |
| --- | --- | --- |
| `SalesOrderNumber...` | Colunas | Define os campos específicos que aparecerão no relatório. |
| `FactResellerSales` | Tabela de Fatos | Tabela que registra as transações financeiras com revendedores. |
| `>=` | Operador de Comparação | Filtra registros estabelecendo um limite mínimo (Maior ou igual a). |
| `2` (no ORDER BY) | Índice Posicional | Atalho para referenciar a coluna `OrderQuantity` sem precisar reescrevê-la. |
| `DESC` | Modificador de Ordem | Organiza os resultados do maior valor para o menor. |

---

## 💡 Dica de Boa Prática

> [!WARNING]
> Usar números posicionais no `ORDER BY` (como `ORDER BY 2`) funciona perfeitamente e poupa digitação. No entanto, se no futuro você ou sua equipe alterarem a ordem das colunas no `SELECT` (por exemplo, mudando `OrderQuantity` para a primeira posição), a ordenação passará a ser feita por outra coluna sem você perceber. Para códigos em produção, prefira sempre escrever o nome real da coluna: `ORDER BY OrderQuantity DESC`.

---

## ✍️ Autor

**Jailson Carvalho** *Profissional de Dados & Desenvolvedor SQL*

Conecte-se comigo ou tire suas dúvidas:

* **LinkedIn:** [Acessar Perfil](https://www.linkedin.com/in/jailson-carvalho-b50a223a7/)
* **WhatsApp:** [Enviar Mensagem](https://www.google.com/search?q=https://wa.me/5551996235278)

```
