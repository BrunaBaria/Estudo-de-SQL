# Objetos do SQL

## View
Uma VIEW (exibição) é uma tabela virtual baseada nos resultados de uma consulta SELECT
```
CREATE VIEW Deliveries
AS
SELECT o.OrderNo, o.OrderDate,
       c.FirstName, c.LastName, c.Address, c.City
FROM Order AS o JOIN Customer AS c
ON o.Customer = c.ID;

// Vai criar uma view de deliveries com o nº de ordem, a data,o primeiro nome, o endereço, a cidade extraidas da tabela Order junto com as informações de ID do cliente da tabela de Custumer
```
## Procedures
Um procedimento armazenado define instruções SQL que podem ser executadas sob comando. Tipo um script com instruções pré-definidas prontos para serem invocados

```
CREATE PROCEDURE RenameProduct
	@ProductID INT,
	@NewName VARCHAR(20)
AS
UPDATE Product
SET Name = @NewName
WHERE ID = @ProductID;

// Cria uma Procudure que renomeia um produto
// Vai pegar o ID do produto que for passado, e vai "setar" um novo nome para o produto

EXEC RenameProduct 201, 'Spanner';
// Chamando a procedure e passando os parâmetros exigidos: o ID e o novo nome do produto
```
## Index
Um índice ajuda a pesquisar dados em uma tabela. Imagine um índice em uma tabela como um índice no final de um livro. Um índice de livro contém um conjunto classificado de referências, com as páginas nas quais cada referência ocorre. Quando você deseja encontrar uma referência a um item no livro, procura por ela no índice. Você pode usar os números de página no índice para ir diretamente para as páginas corretas no livro. Sem um índice, talvez seja necessário ler todo o livro para localizar as referências que você está procurando.
Quando você cria um índice em um banco de dados, especifica uma coluna da tabela e o índice contém uma cópia desses dados em uma ordem classificada, com ponteiros para as linhas correspondentes na tabela. Quando o usuário executa uma consulta que especifica essa coluna na cláusula WHERE , o sistema de gerenciamento de banco de dados pode usar esse índice para buscar os dados mais rapidamente do que se tivesse que examinar toda a linha da tabela por linha.
```
CREATE INDEX idx_ProductName
ON Product(Name);
```
