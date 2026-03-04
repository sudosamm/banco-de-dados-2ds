INSERT INTO clientes (nome, email, cpf, idade) VALUES
('Mateus', 'jmateus@yahoo.net','12345678985', '67'),
('Louis', 'batmandecropped@orkut.msn', '65168541234','69'),
('Manel', 'oloko1234@hotmail.br', '40028922', '-1');

INSERT INTO categorias (nome) VALUES
('Laticínios'), ('Frios'), ('Bebidas'), ('Rações'),
('Ultraprocessados'), ('Frutas'), ('Verduras'), ('Legumes'),
('Instantâneos');

INSERT INTO comidas (nome, preco, estoque, categoria_id) VALUES
('Leite Integral 1L', '7.49', '200', '1'),
('Sobrecoxa 1kg', '8.29', '400', '2'),
('Nissin Galinha Caipira Turma da Mônica', '2.49', '50', '9'),
('Suco de Uva sem álcool 1L', '6.99', '10', '3'),
('Lipy Sabor Pizza', '0.99', '1', '5'),
('Whiskas 10g', '5.79', '63', '4'),
('Tomate Cereja', '0.39', '1000', '6');
