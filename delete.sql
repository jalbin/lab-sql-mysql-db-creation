/*-------------------*/
/* Bonus Challenge : */
/*-------------------*/

/* you have discovered a duplicated car entry with the VIN DAM41UDN3CHU2WVF6, */ 
/* and you want to remove the entry from the database.         */

USE lab_mysql;

/*--------------------------------------------*/
/* Deleting a duplicate from table: customers */
/*--------------------------------------------*/

DELETE FROM cars WHERE vin = 'DAM41UDN3CHU2WVF6' and model = 'V60';
