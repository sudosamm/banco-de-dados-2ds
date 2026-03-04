/*Loja Virtual de Alimentos
Clientes, 
Categorias,
Comidas, 
Pedidos, 
Itens do Pedido,
Avaliações */
CREATE TABLE clientes (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  nome VARCHAR(170) NOT NULL CHECK (char_length(nome) >= 3),
  email VARCHAR(170) NOT NULL UNIQUE,
  telefone VARCHAR(20),
  cpf VARCHAR(20) NOT NULL UNIQUE,
  idade INT NOT NULL,
  criado_em TIMESTAMP DEFAULT NOW()
);

CREATE TABLE categorias (
  id SERIAL PRIMARY KEY,
  nome VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE comidas (
  id SERIAL PRIMARY KEY,
  nome VARCHAR(200) NOT NULL,
  descricao TEXT,
  preco NUMERIC(10, 2) NOT NULL CHECK (preco > 0),
  estoque INT NOT NULL DEFAULT 0,
  categoria_id INT REFERENCES categorias(id) ON DELETE SET NULL,
  criada_em TIMESTAMP DEFAULT NOW()
);

CREATE TABLE pedidos (
  id SERIAL PRIMARY KEY,
  cliente_id uuid REFERENCES clientes(id) ON DELETE CASCADE,
  status VARCHAR(50) DEFAULT 'pendente',
  criado_em TIMESTAMP DEFAULT NOW()
);

CREATE TABLE itens_pedido (
  id SERIAL PRIMARY KEY,
  pedido_id INT REFERENCES pedidos(id) ON DELETE CASCADE,
  comida_id INT REFERENCES comidas(id),
  quantidade INT NOT NULL CHECK (quantidade > 0),
  preco_unitario NUMERIC(10, 2) NOT NULL CHECK (preco_unitario > 0)
);

