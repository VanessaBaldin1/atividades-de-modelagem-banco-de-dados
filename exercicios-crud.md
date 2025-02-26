### Banco de Dados - enunciados dos exercícios
***Exercício 04 - 26/02/2025***
Usando o banco de dados do seu exercício (Catálogo de Filmes), experimente livremente os comandos CRUD para realizar operações nas tabelas: Gêneros, Filmes e Detalhes.

## Sugestões
Insira 4 gêneros: Terror, Suspense, Fantasia e Ação
Insira 3 filmes, contendo: Título, Data de Lançamento (YYYY-MM-DD) e o Gênero de acordo com a chave estrangeira
Insira pelo menos 3 detalhes (ou seja, um para cada filme) contendo: duração, sinopse, bilheteria (opcional), orçamento (opcional) e o Filme ao qual o detalhe pertence de acordo com a chave estrangeira.

*** Inserir gêneros 
Insira 4: 

```sql
INSERT INTO generos(nome) VALUES('Terror'),('Suspense'),('Fantasia'),('Ação');
```
Insira 3
```sql
INSERT INTO filmes(titulo, lancamento, genero_id )
VALUES (
    'JasonX',
    '2012-04-13',
    1
);

INSERT INTO filmes(titulo, lancamento, genero_id )
VALUES (
    'Ilha do Medo',
    '2010-02-19',
    2
);

INSERT INTO filmes(titulo, lancamento, genero_id )
VALUES (
    'A Ilha da Fantasia',
    '2020-02-1914',
    3
);

```
```sql
INSERT INTO detalhes(duracao, sinopse, bilheteria, filmes_id)
VALUES (
  92,
  'Jason X leva o infame assassino Jason Voorhees para o espaço, onde ele se torna uma ameaça ainda mais mortal, caçando um grupo de sobreviventes em uma nave futurista.',
  169000.00,
  1
),(
  192,
  'ILha que da Medo na Praia',
  35000.23,
  2
),(
  245,
  'Filme da Heloisa no Carnaval',
  45000.50
  3
);

```
```sql
SELECT duracao, sinopse FROM detalhes;
```

