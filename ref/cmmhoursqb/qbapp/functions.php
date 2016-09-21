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

/**
 * Generate a qbXML response to add a particular customer to QuickBooks
 */
function _quickbooks_customer_add_request($requestID, $user, $action, $ID, $extra, &$err, $last_action_time, $last_actionident_time, $version, $locale)
{
	// Grab the data from our MySQL database
	$arr = mysql_fetch_assoc(mysql_query("SELECT * FROM my_customer_table WHERE id = " . (int) $ID));
	
	$xml = '<?xml version="1.0" encoding="utf-8"?>
		<?qbxml version="2.0"?>
		<QBXML>
			<QBXMLMsgsRq onError="stopOnError">
				<CustomerAddRq requestID="' . $requestID . '">
					<CustomerAdd>
						<Name>' . $arr['name'] . '</Name>
						<CompanyName>' . $arr['name'] . '</CompanyName>
						<FirstName>' . $arr['fname'] . '</FirstName>
						<LastName>' . $arr['lname'] . '</LastName>
					</CustomerAdd>
				</CustomerAddRq>
			</QBXMLMsgsRq>
		</QBXML>';
	
	return $xml;
}

/**
 * Receive a response from QuickBooks 
 */
function _quickbooks_customer_add_response($requestID, $user, $action, $ID, $extra, &$err, $last_action_time, $last_actionident_time, $xml, $idents)
{	
	mysql_query("
		UPDATE 
			my_customer_table 
		SET 
			quickbooks_listid = '" . mysql_real_escape_string($idents['ListID']) . "', 
			quickbooks_editsequence = '" . mysql_real_escape_string($idents['EditSequence']) . "'
		WHERE 
			id = " . (int) $ID);
}

/**
 * Catch and handle an error from QuickBooks
 */
function _quickbooks_error_catchall($requestID, $user, $action, $ID, $extra, &$err, $xml, $errnum, $errmsg)
{
	mysql_query("
		UPDATE 
			my_customer_table 
		SET 
			quickbooks_errnum = '" . mysql_real_escape_string($errnum) . "', 
			quickbooks_errmsg = '" . mysql_real_escape_string($errmsg) . "'
		WHERE 
			id = " . (int) $ID);
}

function _quickbooks_timetracking_add_request($requestID, $user, $action, $ID, $extra, &$err, $last_action_time, $last_actionident_time, $version, $locale)
{
    $data = array(
        'TxnDate' => date('Y-m-d'),
        'Entity_FullName' => 'My Vendor Name',
        'Customer_FullName' => 'My Customer Name',
        'ItemService_FullName' => 'My Item Name',
        'Duration' => 'PT2H0M0S',
        'PayrollItemWage_FullName' => 'Payroll Item Name',
        'Notes' => '',
        'BillableStatus' => 'Billable',
    );

    $xml = '<?xml version="1.0" encoding="utf-8"?>
		<?qbxml version="' . $version . '"?>
		<QBXML>
		  <QBXMLMsgsRq onError="stopOnError">
		    <TimeTrackingAddRq requestID="' . $requestID . '">
		      <TimeTrackingAdd>
		        <TxnDate>' . $data['TxnDate'] . '</TxnDate>
		 
		        <EntityRef>
		          <FullName>' . $data['Entity_FullName'] . '</FullName>
		        </EntityRef>
		 
		        <CustomerRef>
		          <FullName>' . $data['Customer_FullName'] . '</FullName>
		        </CustomerRef>
		 
		        <ItemServiceRef>
		          <FullName>' . $data['ItemService_FullName'] . '</FullName>
		        </ItemServiceRef>
		 
		        <Duration>' . $data['Duration'] . '</Duration>
		 
		        <PayrollItemWageRef>
		          <FullName>' . $data['PayrollItemWage_FullName'] . '</FullName>
		        </PayrollItemWageRef>
		 
		        <Notes>' . $data['Notes'] . '</Notes>
		 
		        <!-- BillableStatus may have one of the following values: Billable, NotBillable, HasBeenBilled -->
		        <BillableStatus>' . $data['BillableStatus'] . '</BillableStatus>
		 
		      </TimeTrackingAdd>
		    </TimeTrackingAddRq>
		  </QBXMLMsgsRq>
		</QBXML>';

    return $xml;
}

function _quickbooks_timetracking_add_response($requestID, $user, $action, $ID, $extra, &$err, $last_action_time, $last_actionident_time, $xml, $idents)
{

}