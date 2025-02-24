### Exercício 02

### Criar banco de dados

```sql
CREATE DATABASE catalogo_de_filmes CHARACTER SET utf8mb4;
```
### Criar tabela de genero

```sql
CREATE TABLE generos(
  id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(45) NOT NULL
);
```