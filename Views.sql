CREATE VIEW funcionarios 
AS SELECT 
	f.matricula AS Matricula, 
	f.nome AS Nome, 
	f.sobrenome AS Sobrenome, 
	f.nascimento AS Nacimento, 
	f.salario AS Salario, 
	c.titulo AS Cargo
FROM funcionario f 
JOIN cargo c
	ON f.cargo_id = c.id;
    
RENAME TABLE funcionarios TO funcionarios_funcao;

CREATE VIEW funcionarios_funcao_descricao 
AS SELECT 
	f.matricula AS Matricula, 
	f.nome AS Nome, 
	f.sobrenome AS Sobrenome, 
	f.nascimento AS Nacimento, 
	f.salario AS Salario, 
	c.titulo AS Cargo,
    c.descricao AS Descricao
FROM funcionario f 
JOIN cargo c
	ON f.cargo_id = c.id;
    
CREATE VIEW funcionarios_funcao_estagiario
AS SELECT
	f.matricula AS Matricula, 
	f.nome AS Nome, 
	f.sobrenome AS Sobrenome, 
	f.nascimento AS Nacimento, 
	f.salario AS Salario, 
	c.titulo AS Cargo,
    c.descricao AS Descricao
FROM funcionario F
JOIN cargo c
	ON f.cargo_id = c.id WHERE c.titulo = "Estagiario";