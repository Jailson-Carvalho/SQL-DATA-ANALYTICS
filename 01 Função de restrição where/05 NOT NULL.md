```sql
SELECT 

	FIRSTNAME		AS 'PRIMEIRO NOME'
	,MIDDLENAME		AS 'NOME DO MEIO'
	,LASTNAME		AS 'ÚLTIMO NOME'
	,ADDRESSLINE1	AS ENDERECO
	,ADDRESSLINE2	AS ENDERECO2

FROM DimCustomer

WHERE ADDRESSLINE2 IS NOT NULL
AND MIDDLENAME IS NOT NULL

```
![Imagem do resultado da Query](imagens/not%20null.png)
---

## 🛠️ Análise Passo a Passo do Código

A estrutura desta consulta aborda dois conceitos cruciais em SQL: a renomeação de colunas e a filtragem de dados ausentes.

### 1. Renomeando Colunas com `AS` (Aliases)

A palavra-chave `AS` permite criar um "apelido" temporário para uma coluna apenas durante a exibição do resultado daquela consulta.

* **Com aspas simples:** Colunas como `FIRSTNAME AS 'PRIMEIRO NOME'` usam aspas porque o novo nome contém espaços em branco.
* **Sem aspas:** Colunas como `ADDRESSLINE1 AS ENDERECO` dispensam aspas por serem palavras únicas.

Isso é fundamental para traduzir termos técnicos do banco de dados (geralmente em inglês) para os usuários de negócios ou ferramentas de BI (Power BI, Tableau).

### 2. O Filtro de Valores Ausentes (`IS NOT NULL`)

No SQL, `NULL` não significa zero, uma string vazia ou espaços em branco; significa que o valor é **desconhecido** ou **nunca foi preenchido**. Por essa razão, você não pode usar operadores comuns como `=` ou `!=` para compará-lo.

Para buscar apenas linhas que possuem dados preenchidos, utilizamos a sintaxe especial `IS NOT NULL`:

* `WHERE ADDRESSLINE2 IS NOT NULL`: Garante que o cliente mora em um local que exige complemento (como um número de apartamento, bloco ou sala comercial).
* `AND MIDDLENAME IS NOT NULL`: Garante que o cliente possui um nome do meio registrado no sistema.

O operador `AND` unifica as duas condições, exigindo que o cliente cumpra **ambos** os requisitos para aparecer no resultado final.

---

## 📝 Resumo dos Conceitos Técnicos

| Comando / Sintaxe | Tipo | Função na Query |
| --- | --- | --- |
| `AS` | Palavra-chave | Define um *alias* (apelido) para a coluna na projeção final. |
| `'PRIMEIRO NOME'` | String Literal | Novo nome da coluna (exige aspas devido ao espaço em branco). |
| `DimCustomer` | Tabela Dimensão | A tabela que armazena o cadastro e atributos dos clientes. |
| `IS NOT NULL` | Operador de Comparação | Filtra e preserva apenas os registros que possuem dados preenchidos na célula. |
| `AND` | Operador Lógico | Conecta os filtros exigindo que ambos os critérios sejam verdadeiros. |

---

## 💡 Dica de Boa Prática (Garantia de Qualidade)

> [!TIP]
> Em bancos de dados de produção, muitos sistemas preenchem campos de texto vazios com strings vazias (`''`) em vez de `NULL` devido a erros de aplicação. Se a sua query `IS NOT NULL` ainda estiver trazendo linhas que parecem em branco no resultado, experimente adicionar um filtro adicional de comprimento de texto para garantir que a célula realmente contém caracteres:
> `WHERE ADDRESSLINE2 IS NOT NULL AND LEN(ADDRESSLINE2) > 0`

---

```


```
## ✍️ Autor

**Jailson Carvalho**  
*Profissional de Dados & Desenvolvedor SQL*

Conecte-se comigo ou tire suas dúvidas:

* **LinkedIn:** [Acessar Perfil](https://www.linkedin.com/in/jailson-carvalho-b50a223a7/)
* **WhatsApp:** [Enviar Mensagem](https://wa.me/5551996235278)
```
