## DDL - Linguagem de Definição de Dados
* CREATE: Crie um novo objeto no banco de dados, como uma tabela ou uma exibição.
* ALTER:	Modifique a estrutura de um objeto. Por exemplo, alterar uma tabela para adicionar uma nova coluna.
* DROP:	Remova um objeto do banco de dados.
* RENAME:	Renomeie um objeto existente.
```
CREATE TABLE Product
(
    ID INT PRIMARY KEY,
    Name VARCHAR(20) NOT NULL,
    Price DECIMAL NULL
);

// Criando uma tabela de Produtos, com as colunas ID, Name e Price
// O ID será um inteiro e será a chave primária
// O Name será um varchar de tamanho 20 caracterres e não pode ser nulo
// o Preço é do tipo decimal e pode ser nulo 
  ```

## DCL - Linguagem de Controle de Dados
* GRANT: Conceder permissão para executar ações específicas
* DENY: Negar permissão para executar ações específicas
* REVOKE:Remover uma permissão concedida anteriormente
```
GRANT SELECT, INSERT, UPDATE
ON Product
TO user1;

// O user1 pode ler, inserir e modificar os dados da tabela produto
  ```

DML - Linguagem de Manipulação de dados
* SELECT:Ler linhas de uma tabela
* INSERT:Inserir novas linhas em uma tabela
* UPDATE:Modificar dados em linhas existentes
* DELETE:Excluir linhas existentes
```
SELECT *
FROM Customer
WHERE City = 'Seattle';

// Selecione tudo na tabela de customer  onde a cidade é Seatle
  ```
```
SELECT FirstName, LastName, Address, City
FROM Customer
WHERE City = 'Seattle';

// Selecione o primeiro nome, o último nome, endereço e cidade, na tabela de customer onde a cidade é Seatle
  ```
```
SELECT FirstName, LastName, Address, City
FROM Customer
WHERE City = 'Seattle'
ORDER BY LastName;

// Selecione o primeiro nome, o último nome, endereço e cidade, na tabela de customer onde a cidade é Seatle
// Ordene pelo último nome
  ```
```
SELECT o.OrderNo, o.OrderDate, c.Address, c.City
FROM Order AS o
JOIN Customer AS c
ON o.Customer = c.ID

// Selecione o nº da ordem, a data, o endereço e a cidade da tabela Order,
// Junte com o cliente, da tabela Customer, pelo ID do cliente
  ```
```
UPDATE Customer
SET Address = '123 High St.'
WHERE ID = 1;

// Atualize a tabela Customer, insira na coluna Address '123 High St.', onde o ID é 1
// Não Faça UPDATE sem WHERE.
//Se você omitir a cláusula WHERE , uma instrução UPDATE modificará todas as linhas da tabela.
  ```
```
DELETE FROM Product
WHERE ID = 162;

// Na tabela Product, delete o ID 162;
// Não Faça DELETE sem WHERE.
// Se você omitir a cláusula WHERE , uma instrução DELETE removerá todas as linhas da tabela.
  ```
```
INSERT INTO Product(ID, Name, Price)
VALUES (99, 'Drill', 4.99);

// Insira na tabela de Product, os valores descritos;
  ```
