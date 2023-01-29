---
title: "SQL_cheatsheet"
date: 2022-11-21T18:16:43-08:00
draft: true
---

# Introduction
SQL is one of the most frequently used programming language among data analysists and data engineers. SQL is responsible for data ingestions, to retreive data from relational databases. Although there maybe isn't much to it for machine learning engineers, I believe this will be a powerful bridge skill connecting data engineers and MLEs or just MLEs who are responsible to build a ML cycle including data ingestion. That's why I started to take SQL course in LinkedIn and summerize some of important points here.

Course name: Hands-On Introduction: SQL

# What is SQL
Structured Query Language (SQL) is a standardized programming language that is used to manage relational databases and perform various operations on the data in them.

# Some of general rules
- Case insensitive
- Best Practice (Keywords : upper case, other : lower case)
# Select Statement
Basically select statement is used to fetch data from databases. However, there are options in select statement more than featching, as like you can filter them with some rules or sorting them.
## Fetch data

### Syntax
```sql
SELECT {* / [DISTINCT] column / expression [alias]} FROM {table};
```

Asterisk : retreiving all (records / rows) from the tables.  
DISTINCT : retreiving distinct records from the tables.  
alias : give column or expression another name, instead of default name. If you want to use multiple words for the name, you have to put it in quotes like below.
```sql
SELECT salary*12 'Anual Salary' from data;
```

### Arithmetic operators
- Mathmatical expressions uses
- *, /, +, - (Order of precedence)
- Parantheses override rules of precedence

### Character operators
- ||, ', "

## Filter data
You can specify columns to select specific columns. However, if you want to filter some of records with conditions, you need another phrase in the select statement with WHERE clause.

### Types of conditions
#### comparison conditions
|   | arithmetic     | string      |
|---|----------------|-------------|
|   | =              | LIKE        |
|   | <> (not equal) | IN          |
|   | <, >           | BETWEEN AND |
|   | <=, >=         | IS NULL     |

```sql
# Examples

SELECT empno, name,hiredate 
FROM emp_tab 
WHERE name LIKE '_D%'; 

SELECT * FROM emp_tab 
WHERE deptno IN (30,40);

SELECT * FROM emp_tab 
WHERE salary BETWEEN 2000 AND 6000;
-- Including 2000 and 6000

SELECT empno FROM emp_tab 
WHERE manager IS NULL;
```

#### logical conditions
they used for connecting multiple comparison conditions
- AND, OR, NOT

### Order of precedence in WHERE
1. Arithmetic operators
2. Concatenation (makes strings together)
3. arithmetic comparison
4. IS NULL
5. LIKE
6. IN
7. BETWEEN AND
8. NOT
9. AND
10. OR

### Sorting data
You can sort data with ORDER BY clause in select statement.
Default order is ascending order.
```sql
SELECT * FROM emp_tab 
WHERE deptno=30 ORDER BY salary;

SELECT * FROM emp_tab 
ORDER BY deptno,salary DESC;
-- sort first deptno in ascending and then sort salary in descending order. 
```


## Using Multiple Tables
###  Joins 
help with using data from multiple tables
- Inner, right, left, outter
- SQLite support only left join

### Subqueries
Also known as inner SELECT or nested SELECT
A SELECT statement written in the clause of another SELECT statement
Subqueries must be enclosed in parenthesis

Single row subqueries use arithmetic operators
- =, <>
- <, <=, >, >=
We can have multiple single row subqueries
Inner and outer queries can fetch data from differnt tables

- IN, ANY, ALL
- group functions



