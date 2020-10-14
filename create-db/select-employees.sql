SELECT T1.first_name as employee_name,
       T2.first_name as boss_name,
       roles.name    as role_name
FROM employees.employee as T1
         INNER JOIN employees.roles as roles
                    ON T1.role_id = roles.id,
     employees.employee as T2
WHERE T1.boss_id = T2.id
