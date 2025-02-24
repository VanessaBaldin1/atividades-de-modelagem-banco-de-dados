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
### Criar tabela filmes

```sql
CREATE TABLE filmes(
  id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  titulo VARCHAR(200) NOT NULL,
  lancamento DATE NOT NULL,
  genero_id INT NOT NULL --SERÁ CHAVE ESTRANGEIRA
);
```

```sql
CREATE TABLE filmes2(
  id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  titulo VARCHAR(200) NOT NULL,
  lancamento DATE NOT NULL,
  genero_id INT NOT NULL --SERÁ CHAVE ESTRANGEIRA
);
```

```sql
CREATE TABLE detalhes(
  id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  duracao INT NOT NULL,
  sinopse TEXT(1000) NOT NULL,
  bilheteria DECIMAL(16,2),
  orcamento DECIMAL(16,2),
  filmes_id INT NOT NULL --SERÁ CHAVE ESTRANGEIRA
);
```