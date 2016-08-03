Edurating - Education rating management software
====================================
Based on EDUSEC software www.rudrasoftech.com

DOCUMENTATION AND SUPPORT
-------------------------
* www.cloud-lab.ru


SYSTEM REQUIREMENTS
-------------------
* A web server that can execute PHP
* A password-protected MySQL database server connection, 
  and a database on which the user of the  connection has 
  full permissions rights (i.e. SELECT, DROP, CREATE and UPDATE)
* PHP 5.4.0 or later
* PHP must be run as the same system user that owns the directory 
  where EduSec will be installed.


QUICK INSTALL
-------------
For the impatient, here is a basic outline of the
installation process, which need to collect a little 
information before we can get your application 
up and running :
 
1. Move/Upload EduSec to the web directory of your choice.

2. Create a new single MySQL database for EduSec to store all
   its tables.

3. Browse to the Edusec folder and you will be redirected 
   to the EduSec requirement checker is display details of 
   minimum requirements by EduSec.
   If your your server configuration not satisfies please 
   solved problem before installing EduSec else click to install button.

4. Next, you should be taken to the install.php script, 
   which will lead you through creating a `config/db.php` 
   file with create MySQL database and then setting up EduSec, 
   creating an admin user account and institute setup etc.    

5. You are now ready to use EduSec.


MANUAL INSTALLATION
-------------------
For manual installation used only when EduSec won't create the database 
for you, this has to be done manually before you can access it,
which need to go following step to done:

1. Move/Upload EduSec to the web directory of your choice.

2. Create a new single MySQL database for EduSec to store all
   its tables.

3. Import EduSec database into `applicationPath/database`.
   If you wish you install sample data please upload edusec-sample-db.sql
   other wise upload edusec-empty-db.sql.   

4. Go to `applicationPath/config` and rename file `db-sample.php` to 
   `db.php`

5. Edit the file `applicationPath/config/db.php` with real data, for example:
   ```php
   return [
	'class' => 'yii\db\Connection',
	'dsn' => 'mysql:host=localhost;dbname=edusec',
	'username' => 'root',
	'password' => '',
	'charset' => 'utf8',
   ];
   ```

6. Next, you will be redirected to welcome/login page.
   If you upload sample-database wii be redirect login page
   other wise redirect welcome page and then setting up EduSec, 
   creating an admin user account and institute setup etc.      

7. You are now ready to use EduSec.


DEMO/SAMPLE DATABASE USERS DETAILS 
---------------------------------- 

- ADMIN USER
	- **Username** : root **Password** : limlim

Release Notes
-------------

> #### EduRating 0.0.1
>	- Alpha 0.0.1 : 03.08.2016.


