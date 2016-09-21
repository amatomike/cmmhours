<?php
/**
 * Example of generating QuickBooks *.QWC files 
 * 
 * @author Keith Palmer <keith@consolibyte.com>
 * 
 * @package QuickBooks
 * @subpackage Documentation
 */

// Error reporting

/*******************************************************************************
 * Copyright (c) 2016. Mike Amato, All Rights Reserved.
 ******************************************************************************/

error_reporting(E_ALL | E_STRICT);
//ini_set('display_errors', 1);

/**
 * Require the utilities class
 */
require_once dirname(__FILE__) . '/vendor/autoload.php';

$name = urldecode($_GET['name']) . $_SERVER['HTTP_HOST'];			// A name for your server (make it whatever you want)
$descrip = urldecode($_GET['desc']) . $_SERVER['HTTP_HOST'];		// A description of your server

//$appurl = 'https://' . $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI'];		// This *must* be httpS:// (path to your QuickBooks SOAP server)
//$appsupport = 'https://' . $_SERVER['HTTP_HOST'] . '/store/quickbooks/server.php?support=1'; 		// This *must* be httpS:// and the domain name must match the domain name above

// This *must* be httpS:// (path to your QuickBooks SOAP server)
$appurl =  urldecode($_GET['url']);
if (false !== strpos($_SERVER['HTTP_HOST'], 'localhost'))
{
	$appurl = str_replace('https://', 'http://', $appurl);
}

$appsupport = $appurl . '?support=1'; 
if (false !== strpos($appurl, '?'))
{
	// This *must* be httpS:// and the domain name must match the domain name above
	$appsupport = $appurl . '&support=1';
}
$username = $_GET['username']?urldecode($_GET['username']):'quickbooks';		// This is the username you stored in the 'quickbooks_user' table by using QuickBooks_Utilities::createUser()

//$fileid = '57F3B9B6-86F1-4FCC-B1FF-966DE1813D20';		// Just make this up, but make sure it keeps that format
//$ownerid = '57F3B9B6-86F1-4FCC-B1FF-166DE1813D20';		// Just make this up, but make sure it keeps that format

$fileid = QuickBooks_WebConnector_QWC::GUID();
$ownerid = QuickBooks_WebConnector_QWC::GUID();

$qbtype = QUICKBOOKS_TYPE_QBFS;	// You can leave this as-is unless you're using QuickBooks POS

$readonly = false; // No, we want to write data to QuickBooks

$run_every_n_seconds = 600; // Run every 600 seconds (10 minutes)

// Generate the XML file
$QWC = new QuickBooks_WebConnector_QWC($name, $descrip, $appurl, $appsupport, $username, $fileid, $ownerid, $qbtype, $readonly, $run_every_n_seconds);
$xml = $QWC->generate();

// Send as a file download
//header('Content-Type: text/plain');
header('Content-type: text/xml');
header('Content-Disposition: attachment; filename='.'"'.$_SERVER['HTTP_HOST'] . '.qwc"');
print($xml);
exit;
