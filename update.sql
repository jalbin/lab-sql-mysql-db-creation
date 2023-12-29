/*-------------------*/
/* Bonus Challenge : */
/*-------------------*/

/* update the existing data in your database with the new email addresses: */

/* Name                Email                */
/* Pablo Picasso       ppicasso@gmail.com   */
/* Abraham Lincoln     lincoln@us.gov       */
/* Napoléon Bonaparte  hello@napoleon.me    */


/*-----------------------------------------------------------------------*/
/* Disabling safe mode to circumvent error message while updating tables */
/*-----------------------------------------------------------------------*/

SET SQL_SAFE_UPDATES = 0;


/*---------------------------*/
/* Updating table: customers */
/*---------------------------*/

use lab_mysql;


UPDATE customers
SET cust_email = 'ppicasso@gmail.com'
WHERE cust_name = 'Pablo Picasso';

UPDATE customers
SET cust_email = 'lincoln@us.gov'
WHERE cust_name = 'Abraham Lincoln';

UPDATE customers
SET cust_email = 'hello@napoleon.me'
WHERE cust_name = 'Napoléon Bonaparte';
