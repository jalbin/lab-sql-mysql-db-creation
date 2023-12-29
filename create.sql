/*----------------------------------------------*/
/* Challenge 2 - Create the Database and Tables */
/*----------------------------------------------*/

/* In this challenge, you will create the database and tables based on the database design you created in Challenge 1 */
/*--------------------------------------------------------------------------------------------------------------------*/



/*---------------------------------------*/
/* Create a MySQL database for this lab: */
/*---------------------------------------*/

CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;


/*----------------------------------------------------------------------------------*/
/* Write SQL queries to create the tables and columns based on your database design */
/*----------------------------------------------------------------------------------*/


/* Deleting tables prior creating , in case if they already exist */
/*----------------------------------------------------------------*/

DROP TABLE IF EXISTS invoices;
DROP TABLE IF EXISTS cars;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS salespersons;



/*-------------*/
/* table: cars */
/*-------------*/

CREATE TABLE cars (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    vin VARCHAR(17) NOT NULL,
    manufacturer VARCHAR(50) NOT NULL,
    model VARCHAR(50) NOT NULL,
    year SMALLINT UNSIGNED NOT NULL,
    color VARCHAR(50) NOT NULL
);


/*------------------*/
/* table: customers */
/*------------------*/

CREATE TABLE customers (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    cust_id INT UNSIGNED NOT NULL,
    cust_name VARCHAR(50) NOT NULL,
    cust_phone VARCHAR(20),
    cust_email VARCHAR(50),
    cust_address  VARCHAR(100) NOT NULL,
    cust_city  VARCHAR(168) NOT NULL,
    cust_state  VARCHAR(100),
    cust_country  VARCHAR(56) NOT NULL,
    cust_zipcode MEDIUMINT UNSIGNED NOT NULL,
    CONSTRAINT unique_cust_id UNIQUE (cust_id)
) ;


/*---------------------*/
/* table: salespersons */
/*---------------------*/

CREATE TABLE salespersons (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    staff_id VARCHAR(5) NOT NULL,
    name VARCHAR(50) NOT NULL,
    store VARCHAR(50) NOT NULL,
	CONSTRAINT unique_staff_id UNIQUE (staff_id)
);




/*-----------------*/
/* table: invoices */
/*-----------------*/


CREATE TABLE invoices (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    invoice_number VARCHAR(9) NOT NULL,
    date DATE NOT NULL,
    car INT UNSIGNED NOT NULL,
    customer INT UNSIGNED NOT NULL,
    salesperson INT UNSIGNED NOT NULL,
    CONSTRAINT fk_car FOREIGN KEY (car) REFERENCES cars(id),
    CONSTRAINT fk_customer FOREIGN KEY (customer) REFERENCES customers(id),
    CONSTRAINT fk_salesperson FOREIGN KEY (salesperson) REFERENCES salespersons(id),
    CONSTRAINT unique_invoice_number UNIQUE (invoice_number)
);

