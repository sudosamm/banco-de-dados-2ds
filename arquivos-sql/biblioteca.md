Tabelas a criar na biblioteca:
```
Biblioteca tem que ter
Livros, clientes, categorias, agendamento, autores, classificações, editoras, edições, itens agendados

livros tem que ter
categoria, autor, sinopse, h1(titulo), data de publicação, capa dura, classificação indicativa, edição, editora, quantidade

clientes tem que ter
nome, idade, endereco, cpf, email, telefone

categorias tem que ter
nome

autores tem que ter
nome, prefacio

editoras tem que ter
nome

edições tem que ter
nome, ano, data publicação

classificações tem que ter 
faixa etaria, nome

agendamentos tem que ter
nome do cliente, dia do agendamento, data de devolução

itens agendados tem que ter
livro agendado, quantidade
```

Criação da tabela de clientes
```sql
CREATE TABLE clientes (
  id SERIAL PRIMARY KEY,
  nome VARCHAR(50) NOT NULL,
  idade INT NOT NULL,
  endereco VARCHAR(50) NOT NULL,
  cpf VARCHAR(12) UNIQUE NOT NULL,
  email VARCHAR(50) NOT NULL UNIQUE,
  telefone VARCHAR(11) NOT NULL
);
```
