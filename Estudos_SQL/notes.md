## DDL - Linguagem de Definição de Dados
CREATE: Crie um novo objeto no banco de dados, como uma tabela ou uma exibição.
ALTER:	Modifique a estrutura de um objeto. Por exemplo, alterar uma tabela para adicionar uma nova coluna.
DROP:	Remova um objeto do banco de dados.
RENAME:	Renomeie um objeto existente.
```
CREATE TABLE Product
(
    ID INT PRIMARY KEY,
    Name VARCHAR(20) NOT NULL,
    Price DECIMAL NULL
);
  ```

## DCL - Linguagem de Controle de Dados
GRANT: Conceder permissão para executar ações específicas
DENY: Negar permissão para executar ações específicas
REVOKE:Remover uma permissão concedida anteriormente




