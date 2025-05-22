-- Realize uma consulta para apresentar a quantidade de registros presentes na tabela funcionarios
SELECT COUNT(*) AS "QUANTIDADE DE REGISTROS" FROM funcionarios;

-- Realize uma consulta para localizar apenas os funcionarios do sexo Feminino:
SELECT * FROM funcionarios WHERE sexo = "feminino";

-- Realize uma consulta para apresentar a quantidade de funcionarios do sexo Feminino registrados na tabela:
SELECT COUNT(*) AS "QUANTIDADE DE FÊMEAS" FROM funcionarios WHERE sexo = "feminino";

-- Realize uma consulta para localizar apenas os funcionarios do sexo Masculino
SELECT * FROM funcionarios WHERE sexo = "masculino";

-- Realize uma consulta para apresentar a quantidade de funcionarios do sexo Masculino registrados na tabela:
SELECT COUNT(*) AS "QUANTIDADE DE MACHOS" FROM funcionarios WHERE sexo = "masculino";

-- Realize uma consulta para apresentar a quantidade de funcionarios do sexo Masculino e Feminino registrados na tabela ao mesmo tempo
SELECT COUNT(*) AS "QUANTIDADE", sexo FROM funcionarios GROUP BY sexo;

-- Realize uma consulta para listar as funcionárias do sexo Feminino que trabalhem no departamento de filmes ou no departamento lar. 
SELECT * FROM funcionarios WHERE sexo = "feminino" AND (departamento = "filmes" or departamento = "lar") ORDER BY departamento;

-- Realize uma consulta para apresentar a quantidade de funcionários que cada departamento possuí:
SELECT COUNT(*) AS "quantidade", departamento FROM funcionarios GROUP BY departamento;

-- Realize uma pesquisa para apresentar os funcionarios do sexo Feminino ou com o cargo VP Sales
SELECT * FROM funcionarios WHERE sexo = "feminino" and (cargo = "VP Sales");
