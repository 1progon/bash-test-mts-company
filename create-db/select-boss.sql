SELECT employee.first_name                          as boss_name,
       depart.name                                  as depart_name,
       roles.name                                   as position,
       COUNT(IF(employee.id = T2.boss_id, 1, null)) as sub_employees
FROM employees.employee
         INNER JOIN employees.department as depart
                    ON employee.department_id = depart.id

         INNER JOIN employees.roles as roles
                    ON employee.role_id = roles.id,
     employees.employee as T2

WHERE employee.boss = 1

GROUP BY boss_name, depart_name, position
