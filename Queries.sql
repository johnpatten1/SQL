--List the following details of each employee: employee number, last name, first name, gender, and salary.--

select e.emp_no, e.last_name, e.first_name, e.gender
FROM public.employees AS e
JOIN salaries As s
ON e.emp_no = s.emp_no;

--List employees who were hired in 1986.--

select e.first_name, e.last_name, e.hire_date
FROM employees AS e
WHERE e.hire_date BETWEEN '01-01-1986' and '12-31-1986';

--List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name, and start and end employment dates.--

select man.dept_no, d.dept_name, man.emp_no, e.last_name, e.first_name, man.from_date, man.to_date
FROM dept_manager AS man
JOIN departments AS d
ON man.dept_no = d.dept_no
JOIN employees AS e
ON man.emp_no = e.emp_no;

--List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name, and start and end employment dates.--

SELECT man.dept_no, d.dept_name, man.emp_no, e.last_name, e.first_name, man.from_date, man.to_date
FROM dept_manager AS man
JOIN departments AS d
ON man.dept_no = d.dept_no
JOIN employees AS e
ON man.emp_no = e.emp_no;

--List all employees whose first name is "Hercules" and last names begin with "B."--

SELECT e.first_name, e.last_name
FROM employees AS e
WHERE e.first_name like 'Hercules' AND e.last_name like 'B%';

--List all employees in the Sales department, including their employee number, last name, first name, and department name.--

SELECT de.emp_no, e.last_name, e.first_name, d.dept_name
FROM dept_emp AS de
JOIN employees AS e
ON de.emp_no = e.emp_no
JOIN departments AS d
ON de.dept_no = d.dept_no
WHERE d.dept_name like 'Sales';

--List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.--

SELECT de.emp_no, e.last_name, e.first_name, d.dept_name
FROM dept_emp AS de
JOIN employees AS e
ON de.emp_no = e.emp_no
JOIN departments AS d
ON de.dept_no = d.dept_no
WHERE d.dept_name like 'Sales' OR d.dept_name like 'Development';

--In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.--

SELECT e.last_name AS Last, count(*) AS Occurrences
FROM employees AS e
GROUP BY Last
ORDER BY Occurrences DESC