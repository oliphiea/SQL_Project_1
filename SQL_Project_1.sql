SELECT * FROM class.worker;

# Write an SQL query to fetch unique values of DEPARTMENT from Worker table.
SELECT DISTINCT
    (department)
FROM
    worker;


# Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘h’
# and contains six alphabets.
SELECT 
    *
FROM
    worker
WHERE
    First_Name LIKE '%h';


# Write an SQL query to print details of the workers whose department is Admin 
# and is earning a salary 100k and more.
SELECT 
    *
FROM
    worker
WHERE
    Department = 'Admin' AND Salary > 100000;



# Write an SQL query to print details of the workers whose title is Manager.
SELECT 
    *
FROM
    title
WHERE
    Worker_title = 'Manager';



# Write an SQL query to print details of workers whose names are starting with 'V'.
SELECT 
    *
FROM
    worker
WHERE
    First_Name LIKE 'V%';


# Write an SQL query to print First name & last name of workers who 
# are not working in the HR department.
SELECT 
    first_name, last_name
FROM
    worker
WHERE
    Department != 'HR';



# Write an SQL query to find out all the details of the workers who are having their 
# salary less than 100k. 
# Sort them is descending order according to their First names.
SELECT 
    *
FROM
    worker
WHERE
    Salary < 100000
ORDER BY First_Name DESC;



# Write an SQL query to find the worker who is receiving the highest bonus amount.
SELECT 
    MAX(Bonus_Amount)
FROM
    bonus; 



# Write an SQL query to print details of workers having IDs as 3,4,7,8.
SELECT 
    *
FROM
    worker
HAVING Worker_id IN (3 , 4, 7, 8);



# Write an SQL query to fetch the IDs of workers having a job title as Executive.
SELECT 
    Worker_Ref_id
FROM
    title
WHERE
    Worker_title = 'Executive';