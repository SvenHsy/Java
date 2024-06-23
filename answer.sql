-----------------------------------------------
演習問題1 -----------------------------------------------
--employeesとdepartmentsをdepartment_idで内部結合させ，
-- last_nameがKauflingさんのjob_idと同じで，
-- または
-- last_nameがWeissさんのsalaryよりも大きい人の，
-- last_name, job_id, salary, department_id, department_nameを表示させなさい．
SELECT
    E.last_name,
    E.job_id,
    E.salary,
    D.department_id,
    D.department_name
FROM
    employees E
    JOIN departments D ON E.department_id = D.department_id
WHERE
    E.job_id = (
        SELECT
            job_id
        FROM
            employees
        WHERE
            last_name = 'Kaufling'
    )
    OR E.salary > (
        SELECT
            salary
        FROM
            employees
        WHERE
            last_name = 'Weiss'
    );

-----------------------------------------------
演習問題2 -----------------------------------------------
-- employeesとdepartmentsをdepartment_idで内部結合させ，
-- last_nameにkが含まれている人たち全員の給料よりも高い，または
-- 2000-01-01よりも以前に雇われた人たち全員の給料よりも高い人の
-- last_name, job_id, salary, department_id, department_nameを表示させなさい．
SELECT
    E.last_name,
    E.job_id,
    E.salary,
    D.department_id,
    D.department_name
FROM
    employees E
    JOIN departments D ON E.department_id = D.department_id
WHERE
    E.salary > ALL (
        SELECT
            salary
        FROM
            employees
        WHERE
            last_name LIKE '%k%'
    )
    OR E.salary > ALL (
        SELECT
            salary
        FROM
            employees
        WHERE
            hire_date < '2000-01-01'
    );

-----------------------------------------------
演習問題3 -----------------------------------------------
--manager_idと，employee_idを結合条件とした自己結合を使って，
--上司の給料よりも高い人のlast_name, salary，上司のlast_name, salaryをぞれぞれ表示させなさい．
SELECT
    worker.last_name,
    worker.salary,
    manager.last_name,
    manager.salary
FROM
    employees worker
    JOIN employees manager ON (worker.manager_id = manager.employee_id)
WHERE
    worker.salary > manager.salary 
    -----------------------------------------------
    演習問題4 -----------------------------------------------
    -- department_idでグループ化します．
    -- 各部門で最大給与が，「自分の上司よりも高い給与である人たち」
    -- のすべての給料よりも高いような，
    -- department_id, 部門毎の最大給与を表示させてください．
SELECT
    department_id,
    MAX(salary)
FROM
    employees
GROUP BY
    department_id
HAVING
    MAX(salary) > ALL(
        SELECT
            worker.salary
        FROM
            employees worker
            JOIN employees manager ON (worker.manager_id = manager.employee_id)
        WHERE
            worker.salary > manager.salary
    )
     -----------------------------------------------
    演習問題5 -----------------------------------------------
    -- employees, departments, locationsの3テーブルを結合します．
    -- それぞれ，department_id, location_idを結合条件とします．
    -- そして，salaryが「自分の上司よりも高い給与である人たち」
    -- のいずれか一人以上よりも低いような人のemployee_id, salary, city, department_nameを表示させなさい．
SELECT
    e.employee_id,
    e.salary,
    l.city,
    d.department_name
FROM
    employees e
    JOIN departments d ON d.department_id = e.department_id
    JOIN locations l ON d.location_id = l.location_id
WHERE
    e.salary < ANY(
        SELECT
            worker.salary
        FROM
            employees worker
            JOIN employees manager ON (worker.manager_id = manager.employee_id)
        WHERE
            worker.salary > manager.salary
    )