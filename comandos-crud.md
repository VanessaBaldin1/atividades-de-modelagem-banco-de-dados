# Comandos para operações CRUD no Banco de Dados

## Resumo

- C -> **C** reate -> **INSERT**: inserir dados/registros na tabela
- R -> **R** ead ->   **SELECT**: consultar/ler dados/registros na tabela
- U -> **U** pdate -> **UPDATE**: atualizar dados/registros na tabela
- D -> **D** elete -> **DELETE**: excluir dados/registros na tabela

---

## INSERT (fabricantes)

```sql
INSERT INTO fabricantes(nome) VALUES('Asus');
INSERT INTO fabricantes(nome) VALUES('Dell');
INSERT INTO fabricantes(nome) VALUES('Apple');

INSERT INTO fabricantes(nome) VALUES('LG'),('Samsung'),('Brastemp');
```
## SELECT (fabricantes)

```sql
SELECT * FROM fabricantes;
```
---

## INSERT (Produtos)

```sql
INSERT INTO produtos(nome, descricao, preco, quantidade, fabricante_id)
VALUES(
  'Ultrabook', 
  'Equipamento de última geração cheio de recursos',
  3999.45,
  7,
  2  --id do fabricante Dell
);
```
```sql
INSERT INTO produtos(nome, descricao, preco, quantidade, fabricante_id)
VALUES(
  'Tablet Android',
  'Tablet com a versão 16 do sitema operacional Android, possui tela de 10 polegadas e armazenamento de 128 GB. Estou sem ideias do que escrever aqui',
  900,
  12,
  5 -- Samsung
);
```

```sql
INSERT INTO produtos(nome, descricao, preco, quantidade, fabricante_id)
VALUES(
  'Geladeira',
  'Refrigerador frost-free com acesso à Internet',
  5000,
  12,
  6 -- Brastemp
), (
  'iphone 18 Pro Max ferradão',
  'Smartphone Apple cheio de frescura e caro para caramba... coisa de rico..',
  9666.66,
  3,
  3 --Apple
), (
    'iPad Mini',
    'Tablet Apple com tela retina display e bla bla bla e mó bunitinha',
    4999.12,
    5,
    3 --- Apple
);

```

### Comandos do exercicio Exercício 03 - 25/02/2025

## INSERT (fabricantes)
```sql
INSERT INTO fabricantes(nome) VALUES('Positivo'),('Microsoft');
```
## Adicione mais dois produtos na tabela produtos conforme indicado:
```sql
INSERT INTO produtos(nome, descricao, preco, quantidade, fabricante_id)
VALUES(
  'Xbox S',
  'Velocidade e desempenho de última geração.',
  1997,
  5,
  8 -- Microsoft
), (
  'Notebook Motion',
  'Intel Dual Core 4GB de RAM, 128GB SSD e Tela 14,1 polegadas.',
  1213.65,
  8,
  7 -- Positivo
);
```

---

## SELECT (Produtos)

```sql
-- Lendo TODAS  as colunas de TODOS  os registros
SELECT * FROM produtos;

-- Lendo somente nome e preco de todos os registros
SELECT nome, preco FROM produtos;
SELECT preco, nome FROM produtos;

-- Mostrar nome, preco e quantidade SOMENTE dos produtos que custam abaixo de  5000

SELECT nome, preco, quantidade FROM produtos
WHERE preco < 5000;


-- Mini-exercício: mostre o nome e descrição somente dos produtos da Apple

SELECT nome, descricao, fabrincante_id FROM produtos
WHERE fabricante_id = 3;
```

