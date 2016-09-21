<?php
/**
 * Example Web Connector application
 * 
 * This is a very simple application that allows someone to enter a customer 
 * name into a web form, and then adds the customer to QuickBooks.
 * 
 * @author Keith Palmer <keith@consolibyte.com>
 * 
 * @package QuickBooks
 * @subpackage Documentation
 */

/*******************************************************************************
 * Copyright (c) 2016. Mike Amato, All Rights Reserved.
 ******************************************************************************/

error_reporting(E_ALL | E_STRICT);
ini_set('log_errors', 1);
ini_set('error_log','php_errors.log');

// Support URL
if (!empty($_GET['support']))
{
    header('Location: https://cmm.mikeamato.org/');
    exit;
}

// Require the framework
require_once dirname(__DIR__) . '/vendor/autoload.php';

// Your .QWC file username/password
$qbwc_user = 'quickbooks';
$qbwc_pass = 'password';

// * MAKE SURE YOU CHANGE THE DATABASE CONNECTION STRING BELOW TO A VALID MYSQL USERNAME/PASSWORD/HOSTNAME *
$dsn = 'mysql://root:easy2use@localhost/qbapp';

if (!QuickBooks_Utilities::initialized($dsn))
{
	// Initialize creates the neccessary database schema for queueing up requests and logging
	QuickBooks_Utilities::initialize($dsn);
	
	// This creates a username and password which is used by the Web Connector to authenticate
	QuickBooks_Utilities::createUser($dsn, $qbwc_user, $qbwc_pass);
	
	// Create our test table
	mysql_query("CREATE TABLE my_customer_table (
	  id int(10) unsigned NOT NULL AUTO_INCREMENT,
	  name varchar(64) NOT NULL,
	  fname varchar(64) NOT NULL,
	  lname varchar(64) NOT NULL,
	  quickbooks_listid varchar(255) DEFAULT NULL,
	  quickbooks_editsequence varchar(255) DEFAULT NULL,
	  quickbooks_errnum varchar(255) DEFAULT NULL,
	  quickbooks_errmsg varchar(255) DEFAULT NULL,
	  PRIMARY KEY (id)
	) ENGINE=MyISAM");
}
