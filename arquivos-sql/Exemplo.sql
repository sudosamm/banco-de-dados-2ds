/*SQL - Structured Query Language - Linguagem de Consultas Estruturada*/

/* Para criar uma tabela utilizamos 
CREATE TABLE nome_da_tabela (
  id INT PRIMARY KEY,
  nome VARCHAR(50) NOT NULL, 
  idade INT CHECK(idade > 13),
  endereco TEXT,
  data_criacao TIMESTAMP DEFAULT NOW(),
  preco NUMERIC(10,2)
);

Estrutura de colunas:
NOME_COLUNA     TIPO_DE_DADO      CONSTRAINTS/REGRAS      FUNÇÕES
nome            VARCHAR(50)       NOT NULL                DEFAULT 'Aluno'


Tipos de Dados:
INT = Números INTeiros
NUMERIC(x,y) = Valores NUMERICos reais com até x casas, e y casas de unidade após a vírgula. 
VARCHAR(x) = Caracteres gerais porém limitados até x.
TEXT = Caracteres gerais para casos onde não é possível especificar um limite.
TIMESTAMP = Data e hora.
UUID = Unique User Identifier - Identificador único para usuários, utilizado em chaves primárias e estrangeiras
SERIAL = Valor inteiro com autopreenchimento
BOOLEAN = Verdadeiro ou falso

Constraints / Regras:
NOT NULL = Impede que o dado inserido seja nulo
UNIQUE = Impede a inserção de valores repetidos naquela coluna
PRIMARY KEY = Permite a criação de uma chave primária

Funções:
CHECK() = Checagem de valores antes da inserção
DEFAULT = Define um valor como padrão caso ele não seja preenchido
ON DELETE = Define o que ocorre com aquela entidade quando sua chave estrangeira é deletada

*/

CREATE TABLE camisas (
  id serial primary key,
  formato_gola varchar(50),
  cor varchar(50),
  tecido varchar(50),
  modelo varchar(50),
  tamanho varchar(5),
  marca varchar(50),
  possui_estampa boolean,
  valor numeric(10,2)
);
