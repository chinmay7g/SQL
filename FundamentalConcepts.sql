SELECT * FROM Country;

SELECT 'Hello, World' AS 'Result';

SELECT * FROM Country ORDER BY Name;

SELECT Name, LifeExpectancy AS 'Duration' FROM Country ORDER BY Name;

SELECT Name, Continent, Region FROM Country WHERE Continent = 'Europe' ORDER BY Region;

SELECT Name, Continent FROM Country WHERE Name = 'United Kingdom' LIMIT 10;

SELECT COUNT (*) FROM Country WHERE Population > 1000000;

SELECT * FROM Customer;
INSERT INTO Customer (name, address, city, state, zip)
VALUES ('Chinmay', '922 W 23rd STREET', 'Los Angeles', 'California', '90007');

SELECT * FROM customer;
UPDATE customer SET address = 'F2/701 Shivsagar', city = 'Pune', zip = '411051' WHERE id=4;

SELECT * FROM customer WHERE id=5;
DELETE FROM customer WHERE id=5;
SELECT * FROM customer;

CREATE TABLE test1 (
Column1 INTEGER,
Column2 TEXT
);

INSERT INTO test1 VALUES (1, 'a');
INSERT INTO test1 VALUES (2,'b');
INSERT INTO test1 VALUES (3, 'c');

SELECT * FROM test;

CREATE TABLE jug ( column1 INTEGER, column2 TEXT );
INSERT INTO jug VALUES ( 1 , 'A');
INSERT INTO jug VALUES (2, 'B');
INSERT INTO jug VALUES (3, 'C');

SELECT * FROM jug;

/*Deleting tables in SQL*/

DROP TABLE IF EXISTS jug;

/* inserting into tables */

CREATE TABLE x ( col1 INTEGER, col2 TEXT, col3 TEXT );
insert into x values ( 1, 'a', 'b');
insert into x values (2, 'c', 'd');
select * from x;
insert into x (col2, col3) values ('e', 'f');
select * from x;

insert into x (col1, col2, col3) select id, name, district from city;
select * from x;

/* deleting rows */

delete from x where col1=1;
delete from x where col2='e';

insert into x default values;
insert into x (col2, col3) values ('Pune', 'India');

select * from x;

select * from x where col1 is null;
delete from x where col1 is null;

select * from x where col1 is null;

select * from city;
insert into city values (1, 'India', null, '', 104050020);

select * from test1;
drop table if exists test1;

create table tester (
 a integer not null, 
 b text not null,
 c text not null
);

insert into tester values ( 7, 'Chinmay' , 'Gherde');
insert into tester values ( 70, '', null);
select * from tester;

drop table if exists tester;


/* Create table and add values and all the works */

create table gaane (
 Title text,
 Artist text default 'Kishore Kumar',
 Hits integer
);

insert into gaane (Title, Hits) values ( 'Pal Pal Dil Ke Paas', 100);
select * from gaane;
delete from gaane where Artist is null;
select * from gaane;

drop table if exists test;
drop table if exists x;

/* filtering table */

select * from Country;
select Name, Continent, Population from Country
where population < 1000000 order by population desc;

/* filtering table using AND operator */

select * from Country;
select Name, Continent from Country 
where Population > 100000 and LifeExpectancy > 50.0 and Continent = 'Asia' order by Population DESC;

/* Using the LIKE operator */
select Name, Continent from Country 
where Name like '%island' order by name;

select * from CountryLanguage;
select Language from CountryLanguage 
where Percentage > 96.0;

/* IN operator */

select name, continent, population from country 
where continent in ('Asia', 'Europe') order by name;

/* Now mixing up the IN operator and the LIKE operator */
select name, continent, population from country 
where continent in ('Asia', 'Europe') and name like '_a%' order by name;

/* Mixing up with NOT operator */
select name, continent, population from country 
where continent in ('Asia', 'Europe') and name not like '_a%' order by name;

/* Removing Duplicates */
select distinct Continent from Country; 



/* Conditional Expressions */

drop table if exists booltest;
create table booltest (a int, b int);
insert into booltest values (1,0);
select * from booltest;

/* Using the conditional */
select 
    case when a then 'true' else 'false' end as boolA,
    case when b then 'true' else 'false' end as boolB
    from booltest;
    
/* similar */
insert into booltest values (0,1);
select 
    case a when 1 then 'true' else 'false' end as boolA,
    case b when 1 then 'true' else 'false' end as boolB
    from booltest;
    
/* Dropping this table to retain original database */
drop table if exists booltest;

