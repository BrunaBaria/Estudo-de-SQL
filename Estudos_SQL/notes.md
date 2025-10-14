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



