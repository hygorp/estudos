DELIMITER //
CREATE PROCEDURE update_salary_less_than(amount DOUBLE, from_amount DOUBLE)
BEGIN
	UPDATE funcionario SET salario = salario + amount WHERE salario < from_amount;
    SELECT f.matricula, f.nome, f.salario, c.titulo FROM funcionario f JOIN cargo c WHERE f.cargo_id = c.id;
END //
DELIMITER ;

CALL update_salary_less_than(20, 2000)

DELIMITER //
CREATE PROCEDURE update_all_salary_in(param DOUBLE)
BEGIN
	UPDATE funcionario SET salario = salario + param;
    SELECT f.matricula, f.nome, f.salario, c.titulo FROM funcionario f JOIN cargo c WHERE f.cargo_id = c.id;
END //
DELIMITER ;

CALL update_all_salary_in(20)