SGBD - Sistema de Gerenciamento de Banco de Dados
Ex: Supabase, pgAdmin, phpMyAdmin

CRUD - Create, Read, Update, Delete / Criar, Ler, Atualizar, Deletar
Ex: "CREATE TABLE", "SELECT * FROM", "ALTER", "UPDATE", "DROP", "DELETE"

Exemplo de criação de tabela
```sql
CREATE TABLE IF NOT EXISTS personagens (
  nome varchar(50),
  universo text
);
```

Exemplo de inserção de dados
```sql
INSERT INTO personagens (nome, universo) VALUES ('Jett', 'Valoras'), ('Goku', 'DBZ'),('Watson', 'Brawl Stars');
```
Adicionando coluna
```sql
ALTER TABLE personagens ADD raca TEXT;
```
Deletando Coluna
```sql
ALTER TABLE personagens DROP raca;
```
Renomeando coluna
```sql
ALTER TABLE personagens RENAME COLUMN raca TO aparencia;
```
Alterando tipo de dados de coluna
```sql
ALTER TABLE personagens ALTER COLUMN universo TYPE varchar(200);
```
Alterando constraint de coluna
```sql
ALTER TABLE personagens ALTER COLUMN nome SET NOT NULL;
```
Exibindo dados com filtro
```sql
SELECT * FROM personagens WHERE universo = 'DBZ';
```
