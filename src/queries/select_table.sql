SELECT * FROM LIVROS;

SELECT
ID
NOME AS "Título"
FROM LIVROS;

# -- FILTRO 1: Tabela com os romances que custam menos de R$ 48,00
SELECT * FROM LIVROS
WHERE CATEGORIA = 'Romance' AND PREÇO < 48.00;

# -- FILTRO 2: Tabela onde são poesias que não contemplam Luís e Bagriel
SELECT * FROM LIVROS
WHERE CATEGORIA = 'Poesia' AND NOT (AUTOR = 'Luís Vaz de Camões' OR AUTOR = 'Gabriel Pedrosa')

# -- FILTRO 3: Tabela com os distintos livros vendidos
SELECT DISTINCT 
ID_LIVRO
FROM VENDAS 

# -- FILTRO 4:
SELECT 
VENDAS.ID_VENDEDOR, 
VENDEDORES.NOME,
SUM(VENDAS.QTD_VENDIDA)
FROM VENDAS,VENDEDORES
WHERE VENDAS.ID_VENDEDOR = VENDEDORES.ID
GROUP BY VENDAS.ID_VENDEDOR;
