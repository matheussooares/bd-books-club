# Banco de Dados Clube do Livro 📚
Clube do Livro, um e-commerce de artigos literários e livros. O projeto tem como objetivo estruturar o banco de dados desta empresa, seguindo as necessidades do négocio.

## Modelo relacional

Observe que as quatro principais tabelas, na figura abaixo, representa o esquemático.

<div align="center">
  <img src="figs/diagrama.png" alt="" width="300" height="200">
  <br>
  <em>Figura 2 - diagrama de tabelas</em>
</div>

A primeira entidade é **livros** e as suas características, que está relacionada com a tabela **estoque**, que contém a quantidade de livros disponíveis na empresa. Temos também o histórico de pedidos abstraido na entidade **vendas**, que está relacionada com os **vendedores** do Clube do Livro.

Segue a descrição de cada entidade e atributos.

- LIVROS
  - **ID**: Identificador único do livro (inteiro).
  - **NOME**: Nome do livro (string, máximo de 100 caracteres).
  - **AUTOR**: Nome do autor do livro (string, máximo de 100 caracteres).
  - **EDITORA**: Nome da editora do livro (string, máximo de 100 caracteres).
  - **CATEGORIA**: Categoria do livro (string, máximo de 100 caracteres).
  - **PREÇO**: Preço do livro (decimal, 5 dígitos no total com 2 dígitos após o ponto).
    - Nota: Todos os campos são obrigatórios.
    - Chave Primária: ID.

- ESTOQUE
  - **ID**: Identificador único do estoque (inteiro).
  - **QUANTIDADE**: Quantidade de livros em estoque (inteiro).
    - Nota: Todos os campos são obrigatórios.
    - Chave Primária: ID.

- VENDAS
  - **ID_PEDIDO**: Identificador único do pedido de venda (inteiro).
  - **ID_VENDEDOR**: Identificador único do vendedor (inteiro).
  - **ID_LIVRO**: Identificador único do livro vendido (inteiro).
  - **QTD_VENDIDA**: Quantidade de livros vendidos (inteiro).
  - **DATA_VENDA**: Data da venda (data).
    - Nota: Todos os campos são obrigatórios.
    - Chave Primária: (ID_VENDEDOR, ID_PEDIDO).

- VENDEDORES
  - **ID**: Identificador único do vendedor (inteiro).
  - **NOME**: Nome do vendedor (string, máximo de 255 caracteres).
    - Nota: Todos os campos são obrigatórios.
    - Chave Primária: ID.



## Tecnologias utilizadas

- **SQL**: Structured Query Language, uma linguagem padrão para trabalhar com bancos de dados relacionais.
- **MySQL**: Para manipulação e organização dos dados.
- **Uniform Server Zero (Unicontroller)**: Conjunto de servidores contendo MySQL, gratuito e controlado pelo UniController, útil para hospedar o desenvolvimento.
- **MySQL Workbench**: Ambiente de desenvolvimento integrado para o MySQL, oferecendo uma interface amigável para escrita de códigos.



## Referências ℹ️
1. [Ana Duarte](https://cursos.alura.com.br/user/anaduart)

2. [Modelagem de banco de dados relacional: entendendo SQL](https://cursos.alura.com.br/course/modelagem-banco-dados-relacional-sql)

3. [MySQL Workbench (gratuito, inglês, software)](https://dev.mysql.com/downloads/workbench/)

4. [Sistemas de Banco de Dados](https://www.google.com.br/books/edition/Sistemas_de_Banco_de_Dados/-Y32zwEACAAJ?hl=pt-BR)