# porsche_upgrade

Updated project architecture with UI responsiveness, Object oriented patterns and MVC framework CodeIgniter to overcome security challenges, user validation etc.
This project has inherited code refactoring, function from existing version of Porsche.

Setup PHP application locally:
- Donwload and Install XAMPP server and put whole application project in /xampp/htdocs folder and update /project/application/config/config.php and database.php to edit details from remote to loal server.
- Open XAMPP control panel and start apache and mysql install.
- To open database, click MySql admin panel to check DB scripts files in Phpadmin db.

Now run application locally:
http://localhost/porsche_final/App/ - Application module
http://localhost/porsche_final/Admin - Admin module (surplusplayadmin/****) else create new user in Admin table

config.php:

$config['base_url'] = 'http://localhost/porsche_final/';

database.php:

$db['default'] = array(
	'dsn'	=> '',
	'hostname' => 'localhost',
	'username' => 'root',
	'password' => '',
	'database' => 'admin_ssp',
	'dbdriver' => 'mysqli',
	'dbprefix' => '',
	'pconnect' => FALSE,
	'db_debug' => FALSE,
	'cache_on' => FALSE,
	'cachedir' => '',
	'char_set' => 'utf8',
	'dbcollat' => 'utf8_general_ci',
	'swap_pre' => '',
	'encrypt' => FALSE,
	'compress' => FALSE,
	'stricton' => FALSE,
	'failover' => array(),
	'save_queries' => TRUE
);

