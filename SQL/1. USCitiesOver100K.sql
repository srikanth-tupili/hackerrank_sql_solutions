-- Question:

/* uery all columns for all American cities in the CITY table with populations larger than 100000. The CountryCode for America is USA.

The CITY table is described as follows:

-----------------------------------------------------------------------
| Field        | Type         | Description                          |
|--------------|-------------|--------------------------------------|
| customer_id  | NUMBER       | Unique identifier for the customer    |
| first_name  | VARCHAR2(50) | First name of the customer            |
| last_name   | VARCHAR2(50) | Last name of the customer             |
| email        | VARCHAR2(100)| Email address of the customer         |
-----------------------------------------------------------------------
*/

-- Code:
SELECT *
FROM CITY
WHERE COUNTRYCODE = 'USA'
AND POPULATION > 100000;
