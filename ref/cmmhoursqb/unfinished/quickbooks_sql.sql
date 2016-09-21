-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 24, 2016 at 04:45 AM
-- Server version: 5.7.13-0ubuntu0.16.04.2
-- PHP Version: 5.6.24-1+deb.sury.org~xenial+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quickbooks_sql`
--

-- --------------------------------------------------------

--
-- Table structure for table `qb_account`
--

DROP TABLE IF EXISTS `qb_account`;
CREATE TABLE `qb_account` (
  `qbsql_id` int(10) UNSIGNED NOT NULL,
  `qbsql_username_id` int(10) UNSIGNED DEFAULT NULL,
  `qbsql_external_id` int(10) UNSIGNED DEFAULT NULL,
  `ListID` varchar(40) DEFAULT NULL,
  `TimeCreated` datetime DEFAULT NULL,
  `TimeModified` datetime DEFAULT NULL,
  `EditSequence` text,
  `Name` varchar(31) DEFAULT NULL,
  `FullName` varchar(255) DEFAULT NULL,
  `IsActive` tinyint(1) DEFAULT '0',
  `Parent_ListID` varchar(40) DEFAULT NULL,
  `Parent_FullName` varchar(255) DEFAULT NULL,
  `Sublevel` int(10) UNSIGNED DEFAULT '0',
  `AccountType` varchar(40) DEFAULT NULL,
  `SpecialAccountType` varchar(40) DEFAULT NULL,
  `AccountNumber` varchar(7) DEFAULT NULL,
  `BankNumber` varchar(25) DEFAULT NULL,
  `Descrip` text,
  `Balance` decimal(10,2) DEFAULT NULL,
  `TotalBalance` decimal(10,2) DEFAULT NULL,
  `CashFlowClassification` varchar(40) DEFAULT NULL,
  `qbsql_discov_datetime` datetime DEFAULT NULL,
  `qbsql_resync_datetime` datetime DEFAULT NULL,
  `qbsql_modify_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `qbsql_last_hash` varchar(40) DEFAULT NULL,
  `qbsql_last_qbxml` text,
  `qbsql_last_errnum` varchar(32) DEFAULT NULL,
  `qbsql_last_errmsg` varchar(255) DEFAULT NULL,
  `qbsql_enqueue_datetime` datetime DEFAULT NULL,
  `qbsql_dequeue_datetime` datetime DEFAULT NULL,
  `qbsql_audit_amount` decimal(10,0) DEFAULT NULL,
  `qbsql_audit_modified` datetime DEFAULT NULL,
  `qbsql_to_sync` tinyint(1) DEFAULT '0',
  `qbsql_to_delete` tinyint(1) DEFAULT '0',
  `qbsql_to_skip` tinyint(1) DEFAULT '0',
  `qbsql_to_void` tinyint(1) DEFAULT '0',
  `qbsql_flag_deleted` tinyint(1) DEFAULT '0',
  `qbsql_flag_skipped` tinyint(1) DEFAULT '0',
  `qbsql_flag_voided` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qb_account_taxlineinfo`
--

DROP TABLE IF EXISTS `qb_account_taxlineinfo`;
CREATE TABLE `qb_account_taxlineinfo` (
  `qbsql_id` int(10) UNSIGNED NOT NULL,
  `qbsql_username_id` int(10) UNSIGNED DEFAULT NULL,
  `qbsql_external_id` int(10) UNSIGNED DEFAULT NULL,
  `Account_ListID` varchar(40) DEFAULT NULL,
  `Account_FullName` varchar(255) DEFAULT NULL,
  `TaxLineInfo_TaxLineID` int(10) UNSIGNED DEFAULT '0',
  `TaxLineInfo_TaxLineName` text,
  `qbsql_discov_datetime` datetime DEFAULT NULL,
  `qbsql_resync_datetime` datetime DEFAULT NULL,
  `qbsql_modify_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `qbsql_last_hash` varchar(40) DEFAULT NULL,
  `qbsql_last_qbxml` text,
  `qbsql_last_errnum` varchar(32) DEFAULT NULL,
  `qbsql_last_errmsg` varchar(255) DEFAULT NULL,
  `qbsql_enqueue_datetime` datetime DEFAULT NULL,
  `qbsql_dequeue_datetime` datetime DEFAULT NULL,
  `qbsql_audit_amount` decimal(10,0) DEFAULT NULL,
  `qbsql_audit_modified` datetime DEFAULT NULL,
  `qbsql_to_sync` tinyint(1) DEFAULT '0',
  `qbsql_to_delete` tinyint(1) DEFAULT '0',
  `qbsql_to_skip` tinyint(1) DEFAULT '0',
  `qbsql_to_void` tinyint(1) DEFAULT '0',
  `qbsql_flag_deleted` tinyint(1) DEFAULT '0',
  `qbsql_flag_skipped` tinyint(1) DEFAULT '0',
  `qbsql_flag_voided` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qb_bill`
--

DROP TABLE IF EXISTS `qb_bill`;
CREATE TABLE `qb_bill` (
  `qbsql_id` int(10) UNSIGNED NOT NULL,
  `qbsql_username_id` int(10) UNSIGNED DEFAULT NULL,
  `qbsql_external_id` int(10) UNSIGNED DEFAULT NULL,
  `Tax1Total` text,
  `Tax2Total` text,
  `TxnID` varchar(40) DEFAULT NULL,
  `TimeCreated` datetime DEFAULT NULL,
  `TimeModified` datetime DEFAULT NULL,
  `EditSequence` text,
  `TxnNumber` int(10) UNSIGNED DEFAULT '0',
  `Vendor_ListID` varchar(40) DEFAULT NULL,
  `Vendor_FullName` varchar(255) DEFAULT NULL,
  `APAccount_ListID` varchar(40) DEFAULT NULL,
  `APAccount_FullName` varchar(255) DEFAULT NULL,
  `TxnDate` date DEFAULT NULL,
  `DueDate` date DEFAULT NULL,
  `AmountDue` decimal(10,2) DEFAULT NULL,
  `Currency_ListID` varchar(40) DEFAULT NULL,
  `Currency_FullName` varchar(255) DEFAULT NULL,
  `ExchangeRate` text,
  `AmountDueInHomeCurrency` decimal(10,2) DEFAULT NULL,
  `RefNumber` varchar(20) DEFAULT NULL,
  `Terms_ListID` varchar(40) DEFAULT NULL,
  `Terms_FullName` varchar(255) DEFAULT NULL,
  `Memo` text,
  `IsPaid` tinyint(1) DEFAULT '0',
  `OpenAmount` decimal(10,2) DEFAULT NULL,
  `qbsql_discov_datetime` datetime DEFAULT NULL,
  `qbsql_resync_datetime` datetime DEFAULT NULL,
  `qbsql_modify_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `qbsql_last_hash` varchar(40) DEFAULT NULL,
  `qbsql_last_qbxml` text,
  `qbsql_last_errnum` varchar(32) DEFAULT NULL,
  `qbsql_last_errmsg` varchar(255) DEFAULT NULL,
  `qbsql_enqueue_datetime` datetime DEFAULT NULL,
  `qbsql_dequeue_datetime` datetime DEFAULT NULL,
  `qbsql_audit_amount` decimal(10,0) DEFAULT NULL,
  `qbsql_audit_modified` datetime DEFAULT NULL,
  `qbsql_to_sync` tinyint(1) DEFAULT '0',
  `qbsql_to_delete` tinyint(1) DEFAULT '0',
  `qbsql_to_skip` tinyint(1) DEFAULT '0',
  `qbsql_to_void` tinyint(1) DEFAULT '0',
  `qbsql_flag_deleted` tinyint(1) DEFAULT '0',
  `qbsql_flag_skipped` tinyint(1) DEFAULT '0',
  `qbsql_flag_voided` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qb_billingrate`
--

DROP TABLE IF EXISTS `qb_billingrate`;
CREATE TABLE `qb_billingrate` (
  `qbsql_id` int(10) UNSIGNED NOT NULL,
  `qbsql_username_id` int(10) UNSIGNED DEFAULT NULL,
  `qbsql_external_id` int(10) UNSIGNED DEFAULT NULL,
  `ListID` varchar(40) DEFAULT NULL,
  `TimeCreated` datetime DEFAULT NULL,
  `TimeModified` datetime DEFAULT NULL,
  `EditSequence` text,
  `Name` text,
  `BillingRateType` varchar(40) DEFAULT NULL,
  `FixedBillingRate` decimal(13,5) DEFAULT NULL,
  `qbsql_discov_datetime` datetime DEFAULT NULL,
  `qbsql_resync_datetime` datetime DEFAULT NULL,
  `qbsql_modify_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `qbsql_last_hash` varchar(40) DEFAULT NULL,
  `qbsql_last_qbxml` text,
  `qbsql_last_errnum` varchar(32) DEFAULT NULL,
  `qbsql_last_errmsg` varchar(255) DEFAULT NULL,
  `qbsql_enqueue_datetime` datetime DEFAULT NULL,
  `qbsql_dequeue_datetime` datetime DEFAULT NULL,
  `qbsql_audit_amount` decimal(10,0) DEFAULT NULL,
  `qbsql_audit_modified` datetime DEFAULT NULL,
  `qbsql_to_sync` tinyint(1) DEFAULT '0',
  `qbsql_to_delete` tinyint(1) DEFAULT '0',
  `qbsql_to_skip` tinyint(1) DEFAULT '0',
  `qbsql_to_void` tinyint(1) DEFAULT '0',
  `qbsql_flag_deleted` tinyint(1) DEFAULT '0',
  `qbsql_flag_skipped` tinyint(1) DEFAULT '0',
  `qbsql_flag_voided` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qb_billingrate_billingrateperitem`
--

DROP TABLE IF EXISTS `qb_billingrate_billingrateperitem`;
CREATE TABLE `qb_billingrate_billingrateperitem` (
  `qbsql_id` int(10) UNSIGNED NOT NULL,
  `qbsql_username_id` int(10) UNSIGNED DEFAULT NULL,
  `qbsql_external_id` int(10) UNSIGNED DEFAULT NULL,
  `BillingRate_ListID` varchar(40) DEFAULT NULL,
  `BillingRate_FullName` varchar(255) DEFAULT NULL,
  `Item_ListID` varchar(40) DEFAULT NULL,
  `Item_FullName` varchar(255) DEFAULT NULL,
  `CustomRate` decimal(13,5) DEFAULT NULL,
  `CustomRatePercent` decimal(12,5) DEFAULT NULL,
  `qbsql_discov_datetime` datetime DEFAULT NULL,
  `qbsql_resync_datetime` datetime DEFAULT NULL,
  `qbsql_modify_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `qbsql_last_hash` varchar(40) DEFAULT NULL,
  `qbsql_last_qbxml` text,
  `qbsql_last_errnum` varchar(32) DEFAULT NULL,
  `qbsql_last_errmsg` varchar(255) DEFAULT NULL,
  `qbsql_enqueue_datetime` datetime DEFAULT NULL,
  `qbsql_dequeue_datetime` datetime DEFAULT NULL,
  `qbsql_audit_amount` decimal(10,0) DEFAULT NULL,
  `qbsql_audit_modified` datetime DEFAULT NULL,
  `qbsql_to_sync` tinyint(1) DEFAULT '0',
  `qbsql_to_delete` tinyint(1) DEFAULT '0',
  `qbsql_to_skip` tinyint(1) DEFAULT '0',
  `qbsql_to_void` tinyint(1) DEFAULT '0',
  `qbsql_flag_deleted` tinyint(1) DEFAULT '0',
  `qbsql_flag_skipped` tinyint(1) DEFAULT '0',
  `qbsql_flag_voided` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qb_billpaymentcheck`
--

DROP TABLE IF EXISTS `qb_billpaymentcheck`;
CREATE TABLE `qb_billpaymentcheck` (
  `qbsql_id` int(10) UNSIGNED NOT NULL,
  `qbsql_username_id` int(10) UNSIGNED DEFAULT NULL,
  `qbsql_external_id` int(10) UNSIGNED DEFAULT NULL,
  `ExchangeRate` text,
  `AmountInHomeCurrency` text,
  `TxnID` varchar(40) DEFAULT NULL,
  `TimeCreated` datetime DEFAULT NULL,
  `TimeModified` datetime DEFAULT NULL,
  `EditSequence` text,
  `TxnNumber` int(10) UNSIGNED DEFAULT '0',
  `PayeeEntity_ListID` varchar(40) DEFAULT NULL,
  `PayeeEntity_FullName` varchar(255) DEFAULT NULL,
  `APAccount_ListID` varchar(40) DEFAULT NULL,
  `APAccount_FullName` varchar(255) DEFAULT NULL,
  `TxnDate` date DEFAULT NULL,
  `BankAccount_ListID` varchar(40) DEFAULT NULL,
  `BankAccount_FullName` varchar(255) DEFAULT NULL,
  `Amount` decimal(10,2) DEFAULT NULL,
  `RefNumber` varchar(11) DEFAULT NULL,
  `Memo` text,
  `Address_Addr1` text,
  `Address_Addr2` text,
  `Address_Addr3` text,
  `Address_Addr4` text,
  `Address_Note` text,
  `Address_City` text,
  `Address_State` text,
  `Address_PostalCode` text,
  `Address_Country` text,
  `AddressBlock_Addr1` text,
  `AddressBlock_Addr2` text,
  `AddressBlock_Addr3` text,
  `AddressBlock_Addr4` text,
  `AddressBlock_Addr5` text,
  `IsToBePrinted` tinyint(1) DEFAULT NULL,
  `qbsql_discov_datetime` datetime DEFAULT NULL,
  `qbsql_resync_datetime` datetime DEFAULT NULL,
  `qbsql_modify_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `qbsql_last_hash` varchar(40) DEFAULT NULL,
  `qbsql_last_qbxml` text,
  `qbsql_last_errnum` varchar(32) DEFAULT NULL,
  `qbsql_last_errmsg` varchar(255) DEFAULT NULL,
  `qbsql_enqueue_datetime` datetime DEFAULT NULL,
  `qbsql_dequeue_datetime` datetime DEFAULT NULL,
  `qbsql_audit_amount` decimal(10,0) DEFAULT NULL,
  `qbsql_audit_modified` datetime DEFAULT NULL,
  `qbsql_to_sync` tinyint(1) DEFAULT '0',
  `qbsql_to_delete` tinyint(1) DEFAULT '0',
  `qbsql_to_skip` tinyint(1) DEFAULT '0',
  `qbsql_to_void` tinyint(1) DEFAULT '0',
  `qbsql_flag_deleted` tinyint(1) DEFAULT '0',
  `qbsql_flag_skipped` tinyint(1) DEFAULT '0',
  `qbsql_flag_voided` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qb_billpaymentcheck_appliedtotxn`
--

DROP TABLE IF EXISTS `qb_billpaymentcheck_appliedtotxn`;
CREATE TABLE `qb_billpaymentcheck_appliedtotxn` (
  `qbsql_id` int(10) UNSIGNED NOT NULL,
  `qbsql_username_id` int(10) UNSIGNED DEFAULT NULL,
  `qbsql_external_id` int(10) UNSIGNED DEFAULT NULL,
  `FromTxnID` varchar(40) DEFAULT NULL,
  `BillPaymentCheck_TxnID` varchar(40) DEFAULT NULL,
  `ToTxnID` varchar(40) DEFAULT NULL,
  `TxnType` varchar(40) DEFAULT NULL,
  `TxnDate` date DEFAULT NULL,
  `RefNumber` text,
  `BalanceRemaining` decimal(10,2) DEFAULT NULL,
  `Amount` decimal(10,2) DEFAULT NULL,
  `DiscountAmount` decimal(10,2) DEFAULT NULL,
  `DiscountAccount_ListID` varchar(40) DEFAULT NULL,
  `DiscountAccount_FullName` varchar(255) DEFAULT NULL,
  `qbsql_discov_datetime` datetime DEFAULT NULL,
  `qbsql_resync_datetime` datetime DEFAULT NULL,
  `qbsql_modify_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `qbsql_last_hash` varchar(40) DEFAULT NULL,
  `qbsql_last_qbxml` text,
  `qbsql_last_errnum` varchar(32) DEFAULT NULL,
  `qbsql_last_errmsg` varchar(255) DEFAULT NULL,
  `qbsql_enqueue_datetime` datetime DEFAULT NULL,
  `qbsql_dequeue_datetime` datetime DEFAULT NULL,
  `qbsql_audit_amount` decimal(10,0) DEFAULT NULL,
  `qbsql_audit_modified` datetime DEFAULT NULL,
  `qbsql_to_sync` tinyint(1) DEFAULT '0',
  `qbsql_to_delete` tinyint(1) DEFAULT '0',
  `qbsql_to_skip` tinyint(1) DEFAULT '0',
  `qbsql_to_void` tinyint(1) DEFAULT '0',
  `qbsql_flag_deleted` tinyint(1) DEFAULT '0',
  `qbsql_flag_skipped` tinyint(1) DEFAULT '0',
  `qbsql_flag_voided` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qb_billpaymentcreditcard`
--

DROP TABLE IF EXISTS `qb_billpaymentcreditcard`;
CREATE TABLE `qb_billpaymentcreditcard` (
  `qbsql_id` int(10) UNSIGNED NOT NULL,
  `qbsql_username_id` int(10) UNSIGNED DEFAULT NULL,
  `qbsql_external_id` int(10) UNSIGNED DEFAULT NULL,
  `TxnID` varchar(40) DEFAULT NULL,
  `TimeCreated` datetime DEFAULT NULL,
  `TimeModified` datetime DEFAULT NULL,
  `EditSequence` text,
  `TxnNumber` int(10) UNSIGNED DEFAULT '0',
  `PayeeEntity_ListID` varchar(40) DEFAULT NULL,
  `PayeeEntity_FullName` varchar(255) DEFAULT NULL,
  `APAccount_ListID` varchar(40) DEFAULT NULL,
  `APAccount_FullName` varchar(255) DEFAULT NULL,
  `TxnDate` date DEFAULT NULL,
  `CreditCardAccount_ListID` varchar(40) DEFAULT NULL,
  `CreditCardAccount_FullName` varchar(255) DEFAULT NULL,
  `Amount` decimal(10,2) DEFAULT NULL,
  `RefNumber` varchar(11) DEFAULT NULL,
  `Memo` text,
  `qbsql_discov_datetime` datetime DEFAULT NULL,
  `qbsql_resync_datetime` datetime DEFAULT NULL,
  `qbsql_modify_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `qbsql_last_hash` varchar(40) DEFAULT NULL,
  `qbsql_last_qbxml` text,
  `qbsql_last_errnum` varchar(32) DEFAULT NULL,
  `qbsql_last_errmsg` varchar(255) DEFAULT NULL,
  `qbsql_enqueue_datetime` datetime DEFAULT NULL,
  `qbsql_dequeue_datetime` datetime DEFAULT NULL,
  `qbsql_audit_amount` decimal(10,0) DEFAULT NULL,
  `qbsql_audit_modified` datetime DEFAULT NULL,
  `qbsql_to_sync` tinyint(1) DEFAULT '0',
  `qbsql_to_delete` tinyint(1) DEFAULT '0',
  `qbsql_to_skip` tinyint(1) DEFAULT '0',
  `qbsql_to_void` tinyint(1) DEFAULT '0',
  `qbsql_flag_deleted` tinyint(1) DEFAULT '0',
  `qbsql_flag_skipped` tinyint(1) DEFAULT '0',
  `qbsql_flag_voided` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qb_billpaymentcreditcard_appliedtotxn`
--

DROP TABLE IF EXISTS `qb_billpaymentcreditcard_appliedtotxn`;
CREATE TABLE `qb_billpaymentcreditcard_appliedtotxn` (
  `qbsql_id` int(10) UNSIGNED NOT NULL,
  `qbsql_username_id` int(10) UNSIGNED DEFAULT NULL,
  `qbsql_external_id` int(10) UNSIGNED DEFAULT NULL,
  `FromTxnID` varchar(40) DEFAULT NULL,
  `BillPaymentCreditCard_TxnID` varchar(40) DEFAULT NULL,
  `ToTxnID` varchar(40) DEFAULT NULL,
  `TxnType` varchar(40) DEFAULT NULL,
  `TxnDate` date DEFAULT NULL,
  `RefNumber` text,
  `BalanceRemaining` decimal(10,2) DEFAULT NULL,
  `Amount` decimal(10,2) DEFAULT NULL,
  `DiscountAmount` decimal(10,2) DEFAULT NULL,
  `DiscountAccount_ListID` varchar(40) DEFAULT NULL,
  `DiscountAccount_FullName` varchar(255) DEFAULT NULL,
  `qbsql_discov_datetime` datetime DEFAULT NULL,
  `qbsql_resync_datetime` datetime DEFAULT NULL,
  `qbsql_modify_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `qbsql_last_hash` varchar(40) DEFAULT NULL,
  `qbsql_last_qbxml` text,
  `qbsql_last_errnum` varchar(32) DEFAULT NULL,
  `qbsql_last_errmsg` varchar(255) DEFAULT NULL,
  `qbsql_enqueue_datetime` datetime DEFAULT NULL,
  `qbsql_dequeue_datetime` datetime DEFAULT NULL,
  `qbsql_audit_amount` decimal(10,0) DEFAULT NULL,
  `qbsql_audit_modified` datetime DEFAULT NULL,
  `qbsql_to_sync` tinyint(1) DEFAULT '0',
  `qbsql_to_delete` tinyint(1) DEFAULT '0',
  `qbsql_to_skip` tinyint(1) DEFAULT '0',
  `qbsql_to_void` tinyint(1) DEFAULT '0',
  `qbsql_flag_deleted` tinyint(1) DEFAULT '0',
  `qbsql_flag_skipped` tinyint(1) DEFAULT '0',
  `qbsql_flag_voided` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qb_billtopay`
--

DROP TABLE IF EXISTS `qb_billtopay`;
CREATE TABLE `qb_billtopay` (
  `qbsql_id` int(10) UNSIGNED NOT NULL,
  `qbsql_username_id` int(10) UNSIGNED DEFAULT NULL,
  `qbsql_external_id` int(10) UNSIGNED DEFAULT NULL,
  `TxnID` varchar(40) DEFAULT NULL,
  `TxnType` varchar(40) DEFAULT NULL,
  `APAccount_ListID` varchar(40) DEFAULT NULL,
  `APAccount_FullName` varchar(255) DEFAULT NULL,
  `TxnDate` date DEFAULT NULL,
  `RefNumber` text,
  `DueDate` date DEFAULT NULL,
  `AmountDue` decimal(10,2) DEFAULT NULL,
  `qbsql_discov_datetime` datetime DEFAULT NULL,
  `qbsql_resync_datetime` datetime DEFAULT NULL,
  `qbsql_modify_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `qbsql_last_hash` varchar(40) DEFAULT NULL,
  `qbsql_last_qbxml` text,
  `qbsql_last_errnum` varchar(32) DEFAULT NULL,
  `qbsql_last_errmsg` varchar(255) DEFAULT NULL,
  `qbsql_enqueue_datetime` datetime DEFAULT NULL,
  `qbsql_dequeue_datetime` datetime DEFAULT NULL,
  `qbsql_audit_amount` decimal(10,0) DEFAULT NULL,
  `qbsql_audit_modified` datetime DEFAULT NULL,
  `qbsql_to_sync` tinyint(1) DEFAULT '0',
  `qbsql_to_delete` tinyint(1) DEFAULT '0',
  `qbsql_to_skip` tinyint(1) DEFAULT '0',
  `qbsql_to_void` tinyint(1) DEFAULT '0',
  `qbsql_flag_deleted` tinyint(1) DEFAULT '0',
  `qbsql_flag_skipped` tinyint(1) DEFAULT '0',
  `qbsql_flag_voided` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qb_bill_expenseline`
--

DROP TABLE IF EXISTS `qb_bill_expenseline`;
CREATE TABLE `qb_bill_expenseline` (
  `qbsql_id` int(10) UNSIGNED NOT NULL,
  `qbsql_username_id` int(10) UNSIGNED DEFAULT NULL,
  `qbsql_external_id` int(10) UNSIGNED DEFAULT NULL,
  `Bill_TxnID` varchar(40) DEFAULT NULL,
  `SortOrder` int(10) UNSIGNED DEFAULT '0',
  `TxnLineID` varchar(40) DEFAULT NULL,
  `Account_ListID` varchar(40) DEFAULT NULL,
  `Account_FullName` varchar(255) DEFAULT NULL,
  `Amount` decimal(10,2) DEFAULT NULL,
  `Memo` text,
  `Customer_ListID` varchar(40) DEFAULT NULL,
  `Customer_FullName` varchar(255) DEFAULT NULL,
  `Class_ListID` varchar(40) DEFAULT NULL,
  `Class_FullName` varchar(255) DEFAULT NULL,
  `BillableStatus` varchar(40) DEFAULT NULL,
  `qbsql_discov_datetime` datetime DEFAULT NULL,
  `qbsql_resync_datetime` datetime DEFAULT NULL,
  `qbsql_modify_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `qbsql_last_hash` varchar(40) DEFAULT NULL,
  `qbsql_last_qbxml` text,
  `qbsql_last_errnum` varchar(32) DEFAULT NULL,
  `qbsql_last_errmsg` varchar(255) DEFAULT NULL,
  `qbsql_enqueue_datetime` datetime DEFAULT NULL,
  `qbsql_dequeue_datetime` datetime DEFAULT NULL,
  `qbsql_audit_amount` decimal(10,0) DEFAULT NULL,
  `qbsql_audit_modified` datetime DEFAULT NULL,
  `qbsql_to_sync` tinyint(1) DEFAULT '0',
  `qbsql_to_delete` tinyint(1) DEFAULT '0',
  `qbsql_to_skip` tinyint(1) DEFAULT '0',
  `qbsql_to_void` tinyint(1) DEFAULT '0',
  `qbsql_flag_deleted` tinyint(1) DEFAULT '0',
  `qbsql_flag_skipped` tinyint(1) DEFAULT '0',
  `qbsql_flag_voided` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qb_bill_itemgroupline`
--

DROP TABLE IF EXISTS `qb_bill_itemgroupline`;
CREATE TABLE `qb_bill_itemgroupline` (
  `qbsql_id` int(10) UNSIGNED NOT NULL,
  `qbsql_username_id` int(10) UNSIGNED DEFAULT NULL,
  `qbsql_external_id` int(10) UNSIGNED DEFAULT NULL,
  `Bill_TxnID` varchar(40) DEFAULT NULL,
  `TxnLineID` text,
  `SortOrder` int(10) UNSIGNED DEFAULT '0',
  `ItemGroup_ListID` varchar(40) DEFAULT NULL,
  `ItemGroup_FullName` varchar(255) DEFAULT NULL,
  `Descrip` text,
  `Quantity` decimal(12,5) DEFAULT '0.00000',
  `TotalAmount` decimal(10,2) DEFAULT NULL,
  `qbsql_discov_datetime` datetime DEFAULT NULL,
  `qbsql_resync_datetime` datetime DEFAULT NULL,
  `qbsql_modify_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `qbsql_last_hash` varchar(40) DEFAULT NULL,
  `qbsql_last_qbxml` text,
  `qbsql_last_errnum` varchar(32) DEFAULT NULL,
  `qbsql_last_errmsg` varchar(255) DEFAULT NULL,
  `qbsql_enqueue_datetime` datetime DEFAULT NULL,
  `qbsql_dequeue_datetime` datetime DEFAULT NULL,
  `qbsql_audit_amount` decimal(10,0) DEFAULT NULL,
  `qbsql_audit_modified` datetime DEFAULT NULL,
  `qbsql_to_sync` tinyint(1) DEFAULT '0',
  `qbsql_to_delete` tinyint(1) DEFAULT '0',
  `qbsql_to_skip` tinyint(1) DEFAULT '0',
  `qbsql_to_void` tinyint(1) DEFAULT '0',
  `qbsql_flag_deleted` tinyint(1) DEFAULT '0',
  `qbsql_flag_skipped` tinyint(1) DEFAULT '0',
  `qbsql_flag_voided` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qb_bill_itemgroupline_itemline`
--

DROP TABLE IF EXISTS `qb_bill_itemgroupline_itemline`;
CREATE TABLE `qb_bill_itemgroupline_itemline` (
  `qbsql_id` int(10) UNSIGNED NOT NULL,
  `qbsql_username_id` int(10) UNSIGNED DEFAULT NULL,
  `qbsql_external_id` int(10) UNSIGNED DEFAULT NULL,
  `Bill_ItemGroupLine_TxnLineID` text,
  `Bill_TxnID` varchar(40) DEFAULT NULL,
  `SortOrder` int(10) UNSIGNED DEFAULT '0',
  `TxnLineID` varchar(40) DEFAULT NULL,
  `Item_ListID` varchar(40) DEFAULT NULL,
  `Item_FullName` varchar(255) DEFAULT NULL,
  `Descrip` text,
  `Quantity` decimal(12,5) DEFAULT '0.00000',
  `Cost` decimal(13,5) DEFAULT NULL,
  `Amount` decimal(10,2) DEFAULT NULL,
  `Customer_ListID` varchar(40) DEFAULT NULL,
  `Customer_FullName` varchar(255) DEFAULT NULL,
  `Class_ListID` varchar(40) DEFAULT NULL,
  `Class_FullName` varchar(255) DEFAULT NULL,
  `BillableStatus` varchar(40) DEFAULT NULL,
  `qbsql_discov_datetime` datetime DEFAULT NULL,
  `qbsql_resync_datetime` datetime DEFAULT NULL,
  `qbsql_modify_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `qbsql_last_hash` varchar(40) DEFAULT NULL,
  `qbsql_last_qbxml` text,
  `qbsql_last_errnum` varchar(32) DEFAULT NULL,
  `qbsql_last_errmsg` varchar(255) DEFAULT NULL,
  `qbsql_enqueue_datetime` datetime DEFAULT NULL,
  `qbsql_dequeue_datetime` datetime DEFAULT NULL,
  `qbsql_audit_amount` decimal(10,0) DEFAULT NULL,
  `qbsql_audit_modified` datetime DEFAULT NULL,
  `qbsql_to_sync` tinyint(1) DEFAULT '0',
  `qbsql_to_delete` tinyint(1) DEFAULT '0',
  `qbsql_to_skip` tinyint(1) DEFAULT '0',
  `qbsql_to_void` tinyint(1) DEFAULT '0',
  `qbsql_flag_deleted` tinyint(1) DEFAULT '0',
  `qbsql_flag_skipped` tinyint(1) DEFAULT '0',
  `qbsql_flag_voided` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qb_bill_itemline`
--

DROP TABLE IF EXISTS `qb_bill_itemline`;
CREATE TABLE `qb_bill_itemline` (
  `qbsql_id` int(10) UNSIGNED NOT NULL,
  `qbsql_username_id` int(10) UNSIGNED DEFAULT NULL,
  `qbsql_external_id` int(10) UNSIGNED DEFAULT NULL,
  `Bill_TxnID` varchar(40) DEFAULT NULL,
  `SortOrder` int(10) UNSIGNED DEFAULT '0',
  `TxnLineID` varchar(40) DEFAULT NULL,
  `Item_ListID` varchar(40) DEFAULT NULL,
  `Item_FullName` varchar(255) DEFAULT NULL,
  `Descrip` text,
  `Quantity` decimal(12,5) DEFAULT '0.00000',
  `Cost` decimal(13,5) DEFAULT NULL,
  `Amount` decimal(10,2) DEFAULT NULL,
  `Customer_ListID` varchar(40) DEFAULT NULL,
  `Customer_FullName` varchar(255) DEFAULT NULL,
  `Class_ListID` varchar(40) DEFAULT NULL,
  `Class_FullName` varchar(255) DEFAULT NULL,
  `BillableStatus` varchar(40) DEFAULT NULL,
  `qbsql_discov_datetime` datetime DEFAULT NULL,
  `qbsql_resync_datetime` datetime DEFAULT NULL,
  `qbsql_modify_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `qbsql_last_hash` varchar(40) DEFAULT NULL,
  `qbsql_last_qbxml` text,
  `qbsql_last_errnum` varchar(32) DEFAULT NULL,
  `qbsql_last_errmsg` varchar(255) DEFAULT NULL,
  `qbsql_enqueue_datetime` datetime DEFAULT NULL,
  `qbsql_dequeue_datetime` datetime DEFAULT NULL,
  `qbsql_audit_amount` decimal(10,0) DEFAULT NULL,
  `qbsql_audit_modified` datetime DEFAULT NULL,
  `qbsql_to_sync` tinyint(1) DEFAULT '0',
  `qbsql_to_delete` tinyint(1) DEFAULT '0',
  `qbsql_to_skip` tinyint(1) DEFAULT '0',
  `qbsql_to_void` tinyint(1) DEFAULT '0',
  `qbsql_flag_deleted` tinyint(1) DEFAULT '0',
  `qbsql_flag_skipped` tinyint(1) DEFAULT '0',
  `qbsql_flag_voided` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qb_bill_linkedtxn`
--

DROP TABLE IF EXISTS `qb_bill_linkedtxn`;
CREATE TABLE `qb_bill_linkedtxn` (
  `qbsql_id` int(10) UNSIGNED NOT NULL,
  `qbsql_username_id` int(10) UNSIGNED DEFAULT NULL,
  `qbsql_external_id` int(10) UNSIGNED DEFAULT NULL,
  `FromTxnID` varchar(40) DEFAULT NULL,
  `Bill_TxnID` varchar(40) DEFAULT NULL,
  `LinkType` text,
  `ToTxnID` varchar(40) DEFAULT NULL,
  `TxnType` varchar(40) DEFAULT NULL,
  `TxnDate` date DEFAULT NULL,
  `RefNumber` text,
  `Amount` decimal(10,2) DEFAULT NULL,
  `qbsql_discov_datetime` datetime DEFAULT NULL,
  `qbsql_resync_datetime` datetime DEFAULT NULL,
  `qbsql_modify_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `qbsql_last_hash` varchar(40) DEFAULT NULL,
  `qbsql_last_qbxml` text,
  `qbsql_last_errnum` varchar(32) DEFAULT NULL,
  `qbsql_last_errmsg` varchar(255) DEFAULT NULL,
  `qbsql_enqueue_datetime` datetime DEFAULT NULL,
  `qbsql_dequeue_datetime` datetime DEFAULT NULL,
  `qbsql_audit_amount` decimal(10,0) DEFAULT NULL,
  `qbsql_audit_modified` datetime DEFAULT NULL,
  `qbsql_to_sync` tinyint(1) DEFAULT '0',
  `qbsql_to_delete` tinyint(1) DEFAULT '0',
  `qbsql_to_skip` tinyint(1) DEFAULT '0',
  `qbsql_to_void` tinyint(1) DEFAULT '0',
  `qbsql_flag_deleted` tinyint(1) DEFAULT '0',
  `qbsql_flag_skipped` tinyint(1) DEFAULT '0',
  `qbsql_flag_voided` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qb_charge`
--

DROP TABLE IF EXISTS `qb_charge`;
CREATE TABLE `qb_charge` (
  `qbsql_id` int(10) UNSIGNED NOT NULL,
  `qbsql_username_id` int(10) UNSIGNED DEFAULT NULL,
  `qbsql_external_id` int(10) UNSIGNED DEFAULT NULL,
  `IsPaid` text,
  `TxnID` varchar(40) DEFAULT NULL,
  `TimeCreated` datetime DEFAULT NULL,
  `TimeModified` datetime DEFAULT NULL,
  `EditSequence` text,
  `TxnNumber` int(10) UNSIGNED DEFAULT '0',
  `Customer_ListID` varchar(40) DEFAULT NULL,
  `Customer_FullName` varchar(255) DEFAULT NULL,
  `TxnDate` date DEFAULT NULL,
  `RefNumber` text,
  `Item_ListID` varchar(40) DEFAULT NULL,
  `Item_FullName` varchar(255) DEFAULT NULL,
  `Quantity` decimal(12,5) DEFAULT '0.00000',
  `Rate` decimal(13,5) DEFAULT NULL,
  `Amount` decimal(10,2) DEFAULT NULL,
  `BalanceRemaining` decimal(10,2) DEFAULT NULL,
  `Descrip` text,
  `ARAccount_ListID` varchar(40) DEFAULT NULL,
  `ARAccount_FullName` varchar(255) DEFAULT NULL,
  `Class_ListID` varchar(40) DEFAULT NULL,
  `Class_FullName` varchar(255) DEFAULT NULL,
  `BilledDate` date DEFAULT NULL,
  `DueDate` date DEFAULT NULL,
  `qbsql_discov_datetime` datetime DEFAULT NULL,
  `qbsql_resync_datetime` datetime DEFAULT NULL,
  `qbsql_modify_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `qbsql_last_hash` varchar(40) DEFAULT NULL,
  `qbsql_last_qbxml` text,
  `qbsql_last_errnum` varchar(32) DEFAULT NULL,
  `qbsql_last_errmsg` varchar(255) DEFAULT NULL,
  `qbsql_enqueue_datetime` datetime DEFAULT NULL,
  `qbsql_dequeue_datetime` datetime DEFAULT NULL,
  `qbsql_audit_amount` decimal(10,0) DEFAULT NULL,
  `qbsql_audit_modified` datetime DEFAULT NULL,
  `qbsql_to_sync` tinyint(1) DEFAULT '0',
  `qbsql_to_delete` tinyint(1) DEFAULT '0',
  `qbsql_to_skip` tinyint(1) DEFAULT '0',
  `qbsql_to_void` tinyint(1) DEFAULT '0',
  `qbsql_flag_deleted` tinyint(1) DEFAULT '0',
  `qbsql_flag_skipped` tinyint(1) DEFAULT '0',
  `qbsql_flag_voided` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qb_check`
--

DROP TABLE IF EXISTS `qb_check`;
CREATE TABLE `qb_check` (
  `qbsql_id` int(10) UNSIGNED NOT NULL,
  `qbsql_username_id` int(10) UNSIGNED DEFAULT NULL,
  `qbsql_external_id` int(10) UNSIGNED DEFAULT NULL,
  `TxnID` varchar(40) DEFAULT NULL,
  `TimeCreated` datetime DEFAULT NULL,
  `TimeModified` datetime DEFAULT NULL,
  `EditSequence` text,
  `TxnNumber` int(10) UNSIGNED DEFAULT '0',
  `Account_ListID` varchar(40) DEFAULT NULL,
  `Account_FullName` varchar(255) DEFAULT NULL,
  `PayeeEntityRef_ListID` varchar(40) DEFAULT NULL,
  `PayeeEntityRef_FullName` varchar(159) DEFAULT NULL,
  `RefNumber` varchar(11) DEFAULT NULL,
  `TxnDate` date DEFAULT NULL,
  `Amount` decimal(10,2) DEFAULT NULL,
  `Memo` text,
  `Address_Addr1` varchar(41) DEFAULT NULL,
  `Address_Addr2` varchar(41) DEFAULT NULL,
  `Address_Addr3` varchar(41) DEFAULT NULL,
  `Address_Addr4` varchar(41) DEFAULT NULL,
  `Address_Addr5` varchar(41) DEFAULT NULL,
  `Address_City` varchar(31) DEFAULT NULL,
  `Address_State` varchar(21) DEFAULT NULL,
  `Address_PostalCode` varchar(13) DEFAULT NULL,
  `Address_Country` varchar(31) DEFAULT NULL,
  `Address_Note` varchar(41) DEFAULT NULL,
  `AddressBlock_Addr1` text,
  `AddressBlock_Addr2` text,
  `AddressBlock_Addr3` text,
  `AddressBlock_Addr4` text,
  `AddressBlock_Addr5` text,
  `IsToBePrinted` tinyint(1) DEFAULT NULL,
  `qbsql_discov_datetime` datetime DEFAULT NULL,
  `qbsql_resync_datetime` datetime DEFAULT NULL,
  `qbsql_modify_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `qbsql_last_hash` varchar(40) DEFAULT NULL,
  `qbsql_last_qbxml` text,
  `qbsql_last_errnum` varchar(32) DEFAULT NULL,
  `qbsql_last_errmsg` varchar(255) DEFAULT NULL,
  `qbsql_enqueue_datetime` datetime DEFAULT NULL,
  `qbsql_dequeue_datetime` datetime DEFAULT NULL,
  `qbsql_audit_amount` decimal(10,0) DEFAULT NULL,
  `qbsql_audit_modified` datetime DEFAULT NULL,
  `qbsql_to_sync` tinyint(1) DEFAULT '0',
  `qbsql_to_delete` tinyint(1) DEFAULT '0',
  `qbsql_to_skip` tinyint(1) DEFAULT '0',
  `qbsql_to_void` tinyint(1) DEFAULT '0',
  `qbsql_flag_deleted` tinyint(1) DEFAULT '0',
  `qbsql_flag_skipped` tinyint(1) DEFAULT '0',
  `qbsql_flag_voided` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qb_check_expenseline`
--

DROP TABLE IF EXISTS `qb_check_expenseline`;
CREATE TABLE `qb_check_expenseline` (
  `qbsql_id` int(10) UNSIGNED NOT NULL,
  `qbsql_username_id` int(10) UNSIGNED DEFAULT NULL,
  `qbsql_external_id` int(10) UNSIGNED DEFAULT NULL,
  `Check_TxnID` varchar(40) DEFAULT NULL,
  `SortOrder` int(10) UNSIGNED DEFAULT '0',
  `TxnLineID` varchar(40) DEFAULT NULL,
  `Account_ListID` varchar(40) DEFAULT NULL,
  `Account_FullName` varchar(255) DEFAULT NULL,
  `Amount` decimal(10,2) DEFAULT NULL,
  `CurrencyRef` text,
  `ExchangeRate` text,
  `AmountInHomeCurrency` decimal(10,2) DEFAULT NULL,
  `Memo` text,
  `Customer_ListID` varchar(40) DEFAULT NULL,
  `Customer_FullName` varchar(255) DEFAULT NULL,
  `Class_ListID` varchar(40) DEFAULT NULL,
  `Class_FullName` varchar(255) DEFAULT NULL,
  `BillableStatus` varchar(40) DEFAULT NULL,
  `qbsql_discov_datetime` datetime DEFAULT NULL,
  `qbsql_resync_datetime` datetime DEFAULT NULL,
  `qbsql_modify_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `qbsql_last_hash` varchar(40) DEFAULT NULL,
  `qbsql_last_qbxml` text,
  `qbsql_last_errnum` varchar(32) DEFAULT NULL,
  `qbsql_last_errmsg` varchar(255) DEFAULT NULL,
  `qbsql_enqueue_datetime` datetime DEFAULT NULL,
  `qbsql_dequeue_datetime` datetime DEFAULT NULL,
  `qbsql_audit_amount` decimal(10,0) DEFAULT NULL,
  `qbsql_audit_modified` datetime DEFAULT NULL,
  `qbsql_to_sync` tinyint(1) DEFAULT '0',
  `qbsql_to_delete` tinyint(1) DEFAULT '0',
  `qbsql_to_skip` tinyint(1) DEFAULT '0',
  `qbsql_to_void` tinyint(1) DEFAULT '0',
  `qbsql_flag_deleted` tinyint(1) DEFAULT '0',
  `qbsql_flag_skipped` tinyint(1) DEFAULT '0',
  `qbsql_flag_voided` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qb_check_itemgroupline`
--

DROP TABLE IF EXISTS `qb_check_itemgroupline`;
CREATE TABLE `qb_check_itemgroupline` (
  `qbsql_id` int(10) UNSIGNED NOT NULL,
  `qbsql_username_id` int(10) UNSIGNED DEFAULT NULL,
  `qbsql_external_id` int(10) UNSIGNED DEFAULT NULL,
  `Check_TxnID` varchar(40) DEFAULT NULL,
  `SortOrder` int(10) UNSIGNED DEFAULT '0',
  `TxnLineID` varchar(40) DEFAULT NULL,
  `ItemGroup_ListID` varchar(40) DEFAULT NULL,
  `ItemGroup_FullName` varchar(255) DEFAULT NULL,
  `Descrip` text,
  `Quantity` decimal(12,5) DEFAULT '0.00000',
  `UnitOfMeasure` text,
  `OverrideUOMSet_ListID` varchar(40) DEFAULT NULL,
  `OverrideUOMSet_FullName` varchar(255) DEFAULT NULL,
  `TotalAmount` decimal(10,2) DEFAULT NULL,
  `qbsql_discov_datetime` datetime DEFAULT NULL,
  `qbsql_resync_datetime` datetime DEFAULT NULL,
  `qbsql_modify_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `qbsql_last_hash` varchar(40) DEFAULT NULL,
  `qbsql_last_qbxml` text,
  `qbsql_last_errnum` varchar(32) DEFAULT NULL,
  `qbsql_last_errmsg` varchar(255) DEFAULT NULL,
  `qbsql_enqueue_datetime` datetime DEFAULT NULL,
  `qbsql_dequeue_datetime` datetime DEFAULT NULL,
  `qbsql_audit_amount` decimal(10,0) DEFAULT NULL,
  `qbsql_audit_modified` datetime DEFAULT NULL,
  `qbsql_to_sync` tinyint(1) DEFAULT '0',
  `qbsql_to_delete` tinyint(1) DEFAULT '0',
  `qbsql_to_skip` tinyint(1) DEFAULT '0',
  `qbsql_to_void` tinyint(1) DEFAULT '0',
  `qbsql_flag_deleted` tinyint(1) DEFAULT '0',
  `qbsql_flag_skipped` tinyint(1) DEFAULT '0',
  `qbsql_flag_voided` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qb_check_itemgroupline_itemline`
--

DROP TABLE IF EXISTS `qb_check_itemgroupline_itemline`;
CREATE TABLE `qb_check_itemgroupline_itemline` (
  `qbsql_id` int(10) UNSIGNED NOT NULL,
  `qbsql_username_id` int(10) UNSIGNED DEFAULT NULL,
  `qbsql_external_id` int(10) UNSIGNED DEFAULT NULL,
  `Check_TxnID` varchar(40) DEFAULT NULL,
  `Check_ItemGroupLine_TxnLineID` text,
  `SortOrder` int(10) UNSIGNED DEFAULT '0',
  `TxnLineID` varchar(40) DEFAULT NULL,
  `Item_ListID` varchar(40) DEFAULT NULL,
  `Item_FullName` varchar(255) DEFAULT NULL,
  `Descrip` text,
  `Quantity` decimal(12,5) DEFAULT '0.00000',
  `UnitOfMeasure` text,
  `OverrideUOMSet_ListID` varchar(40) DEFAULT NULL,
  `OverrideUOMSet_FullName` varchar(255) DEFAULT NULL,
  `Cost` decimal(13,5) DEFAULT NULL,
  `Amount` decimal(10,2) DEFAULT NULL,
  `Customer_ListID` varchar(40) DEFAULT NULL,
  `Customer_FullName` varchar(255) DEFAULT NULL,
  `Class_ListID` varchar(40) DEFAULT NULL,
  `Class_FullName` varchar(255) DEFAULT NULL,
  `BillableStatus` varchar(40) DEFAULT NULL,
  `qbsql_discov_datetime` datetime DEFAULT NULL,
  `qbsql_resync_datetime` datetime DEFAULT NULL,
  `qbsql_modify_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `qbsql_last_hash` varchar(40) DEFAULT NULL,
  `qbsql_last_qbxml` text,
  `qbsql_last_errnum` varchar(32) DEFAULT NULL,
  `qbsql_last_errmsg` varchar(255) DEFAULT NULL,
  `qbsql_enqueue_datetime` datetime DEFAULT NULL,
  `qbsql_dequeue_datetime` datetime DEFAULT NULL,
  `qbsql_audit_amount` decimal(10,0) DEFAULT NULL,
  `qbsql_audit_modified` datetime DEFAULT NULL,
  `qbsql_to_sync` tinyint(1) DEFAULT '0',
  `qbsql_to_delete` tinyint(1) DEFAULT '0',
  `qbsql_to_skip` tinyint(1) DEFAULT '0',
  `qbsql_to_void` tinyint(1) DEFAULT '0',
  `qbsql_flag_deleted` tinyint(1) DEFAULT '0',
  `qbsql_flag_skipped` tinyint(1) DEFAULT '0',
  `qbsql_flag_voided` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qb_check_itemline`
--

DROP TABLE IF EXISTS `qb_check_itemline`;
CREATE TABLE `qb_check_itemline` (
  `qbsql_id` int(10) UNSIGNED NOT NULL,
  `qbsql_username_id` int(10) UNSIGNED DEFAULT NULL,
  `qbsql_external_id` int(10) UNSIGNED DEFAULT NULL,
  `Check_TxnID` varchar(40) DEFAULT NULL,
  `SortOrder` int(10) UNSIGNED DEFAULT '0',
  `TxnLineID` varchar(40) DEFAULT NULL,
  `Item_ListID` varchar(40) DEFAULT NULL,
  `Item_FullName` varchar(255) DEFAULT NULL,
  `Descrip` text,
  `Quantity` decimal(12,5) DEFAULT '0.00000',
  `UnitOfMeasure` text,
  `OverrideUOMSet_ListID` varchar(40) DEFAULT NULL,
  `OverrideUOMSet_FullName` varchar(255) DEFAULT NULL,
  `Cost` decimal(13,5) DEFAULT NULL,
  `Amount` decimal(10,2) DEFAULT NULL,
  `Customer_ListID` varchar(40) DEFAULT NULL,
  `Customer_FullName` varchar(255) DEFAULT NULL,
  `Class_ListID` varchar(40) DEFAULT NULL,
  `Class_FullName` varchar(255) DEFAULT NULL,
  `BillableStatus` varchar(40) DEFAULT NULL,
  `qbsql_discov_datetime` datetime DEFAULT NULL,
  `qbsql_resync_datetime` datetime DEFAULT NULL,
  `qbsql_modify_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `qbsql_last_hash` varchar(40) DEFAULT NULL,
  `qbsql_last_qbxml` text,
  `qbsql_last_errnum` varchar(32) DEFAULT NULL,
  `qbsql_last_errmsg` varchar(255) DEFAULT NULL,
  `qbsql_enqueue_datetime` datetime DEFAULT NULL,
  `qbsql_dequeue_datetime` datetime DEFAULT NULL,
  `qbsql_audit_amount` decimal(10,0) DEFAULT NULL,
  `qbsql_audit_modified` datetime DEFAULT NULL,
  `qbsql_to_sync` tinyint(1) DEFAULT '0',
  `qbsql_to_delete` tinyint(1) DEFAULT '0',
  `qbsql_to_skip` tinyint(1) DEFAULT '0',
  `qbsql_to_void` tinyint(1) DEFAULT '0',
  `qbsql_flag_deleted` tinyint(1) DEFAULT '0',
  `qbsql_flag_skipped` tinyint(1) DEFAULT '0',
  `qbsql_flag_voided` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qb_check_linkedtxn`
--

DROP TABLE IF EXISTS `qb_check_linkedtxn`;
CREATE TABLE `qb_check_linkedtxn` (
  `qbsql_id` int(10) UNSIGNED NOT NULL,
  `qbsql_username_id` int(10) UNSIGNED DEFAULT NULL,
  `qbsql_external_id` int(10) UNSIGNED DEFAULT NULL,
  `FromTxnID` varchar(40) DEFAULT NULL,
  `Check_TxnID` varchar(40) DEFAULT NULL,
  `LinkType` text,
  `ToTxnID` varchar(40) DEFAULT NULL,
  `TxnType` varchar(40) DEFAULT NULL,
  `TxnDate` date DEFAULT NULL,
  `RefNumber` text,
  `Amount` decimal(10,2) DEFAULT NULL,
  `qbsql_discov_datetime` datetime DEFAULT NULL,
  `qbsql_resync_datetime` datetime DEFAULT NULL,
  `qbsql_modify_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `qbsql_last_hash` varchar(40) DEFAULT NULL,
  `qbsql_last_qbxml` text,
  `qbsql_last_errnum` varchar(32) DEFAULT NULL,
  `qbsql_last_errmsg` varchar(255) DEFAULT NULL,
  `qbsql_enqueue_datetime` datetime DEFAULT NULL,
  `qbsql_dequeue_datetime` datetime DEFAULT NULL,
  `qbsql_audit_amount` decimal(10,0) DEFAULT NULL,
  `qbsql_audit_modified` datetime DEFAULT NULL,
  `qbsql_to_sync` tinyint(1) DEFAULT '0',
  `qbsql_to_delete` tinyint(1) DEFAULT '0',
  `qbsql_to_skip` tinyint(1) DEFAULT '0',
  `qbsql_to_void` tinyint(1) DEFAULT '0',
  `qbsql_flag_deleted` tinyint(1) DEFAULT '0',
  `qbsql_flag_skipped` tinyint(1) DEFAULT '0',
  `qbsql_flag_voided` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qb_class`
--

DROP TABLE IF EXISTS `qb_class`;
CREATE TABLE `qb_class` (
  `qbsql_id` int(10) UNSIGNED NOT NULL,
  `qbsql_username_id` int(10) UNSIGNED DEFAULT NULL,
  `qbsql_external_id` int(10) UNSIGNED DEFAULT NULL,
  `ListID` varchar(40) DEFAULT NULL,
  `TimeCreated` datetime DEFAULT NULL,
  `TimeModified` datetime DEFAULT NULL,
  `EditSequence` text,
  `Name` varchar(31) DEFAULT NULL,
  `FullName` varchar(255) DEFAULT NULL,
  `IsActive` tinyint(1) DEFAULT '0',
  `Parent_ListID` varchar(40) DEFAULT NULL,
  `Parent_FullName` varchar(255) DEFAULT NULL,
  `Sublevel` int(10) UNSIGNED DEFAULT '0',
  `qbsql_discov_datetime` datetime DEFAULT NULL,
  `qbsql_resync_datetime` datetime DEFAULT NULL,
  `qbsql_modify_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `qbsql_last_hash` varchar(40) DEFAULT NULL,
  `qbsql_last_qbxml` text,
  `qbsql_last_errnum` varchar(32) DEFAULT NULL,
  `qbsql_last_errmsg` varchar(255) DEFAULT NULL,
  `qbsql_enqueue_datetime` datetime DEFAULT NULL,
  `qbsql_dequeue_datetime` datetime DEFAULT NULL,
  `qbsql_audit_amount` decimal(10,0) DEFAULT NULL,
  `qbsql_audit_modified` datetime DEFAULT NULL,
  `qbsql_to_sync` tinyint(1) DEFAULT '0',
  `qbsql_to_delete` tinyint(1) DEFAULT '0',
  `qbsql_to_skip` tinyint(1) DEFAULT '0',
  `qbsql_to_void` tinyint(1) DEFAULT '0',
  `qbsql_flag_deleted` tinyint(1) DEFAULT '0',
  `qbsql_flag_skipped` tinyint(1) DEFAULT '0',
  `qbsql_flag_voided` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qb_company`
--

DROP TABLE IF EXISTS `qb_company`;
CREATE TABLE `qb_company` (
  `qbsql_id` int(10) UNSIGNED NOT NULL,
  `qbsql_username_id` int(10) UNSIGNED DEFAULT NULL,
  `qbsql_external_id` int(10) UNSIGNED DEFAULT NULL,
  `IsSampleCompany` tinyint(1) DEFAULT '0',
  `CompanyName` text,
  `LegalCompanyName` text,
  `Address_Addr1` text,
  `Address_Addr2` text,
  `Address_Addr3` text,
  `Address_Addr4` text,
  `Address_Addr5` text,
  `Address_City` text,
  `Address_State` text,
  `Address_PostalCode` text,
  `Address_Country` text,
  `Address_Note` text,
  `AddressBlock_Addr1` text,
  `AddressBlock_Addr2` text,
  `AddressBlock_Addr3` text,
  `AddressBlock_Addr4` text,
  `AddressBlock_Addr5` text,
  `LegalAddress_Addr1` text,
  `LegalAddress_Addr2` text,
  `LegalAddress_Addr3` text,
  `LegalAddress_Addr4` text,
  `LegalAddress_Addr5` text,
  `LegalAddress_City` text,
  `LegalAddress_State` text,
  `LegalAddress_PostalCode` text,
  `LegalAddress_Country` text,
  `LegalAddress_Note` text,
  `Company_CompanyAddressForCustomer_Addr1` text,
  `Company_CompanyAddressForCustomer_Addr2` text,
  `Company_CompanyAddressForCustomer_Addr3` text,
  `Company_CompanyAddressForCustomer_Addr4` text,
  `Company_CompanyAddressForCustomer_Addr5` text,
  `Company_CompanyAddressForCustomer_City` text,
  `Company_CompanyAddressForCustomer_State` text,
  `Company_CompanyAddressForCustomer_PostalCode` text,
  `Company_CompanyAddressForCustomer_Country` text,
  `Company_CompanyAddressForCustomer_Note` text,
  `Company_CompanyAddressBlockForCustomer_Addr1` text,
  `Company_CompanyAddressBlockForCustomer_Addr2` text,
  `Company_CompanyAddressBlockForCustomer_Addr3` text,
  `Company_CompanyAddressBlockForCustomer_Addr4` text,
  `Company_CompanyAddressBlockForCustomer_Addr5` text,
  `Phone` text,
  `Fax` text,
  `Email` text,
  `CompanyWebSite` text,
  `FirstMonthFiscalYear` varchar(40) DEFAULT NULL,
  `FirstMonthIncomeTaxYear` varchar(40) DEFAULT NULL,
  `CompanyType` text,
  `EIN` text,
  `SSN` text,
  `TaxForm` varchar(40) DEFAULT NULL,
  `qbsql_discov_datetime` datetime DEFAULT NULL,
  `qbsql_resync_datetime` datetime DEFAULT NULL,
  `qbsql_modify_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `qbsql_last_hash` varchar(40) DEFAULT NULL,
  `qbsql_last_qbxml` text,
  `qbsql_last_errnum` varchar(32) DEFAULT NULL,
  `qbsql_last_errmsg` varchar(255) DEFAULT NULL,
  `qbsql_enqueue_datetime` datetime DEFAULT NULL,
  `qbsql_dequeue_datetime` datetime DEFAULT NULL,
  `qbsql_audit_amount` decimal(10,0) DEFAULT NULL,
  `qbsql_audit_modified` datetime DEFAULT NULL,
  `qbsql_to_sync` tinyint(1) DEFAULT '0',
  `qbsql_to_delete` tinyint(1) DEFAULT '0',
  `qbsql_to_skip` tinyint(1) DEFAULT '0',
  `qbsql_to_void` tinyint(1) DEFAULT '0',
  `qbsql_flag_deleted` tinyint(1) DEFAULT '0',
  `qbsql_flag_skipped` tinyint(1) DEFAULT '0',
  `qbsql_flag_voided` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qb_company_subscribedservices_service`
--

DROP TABLE IF EXISTS `qb_company_subscribedservices_service`;
CREATE TABLE `qb_company_subscribedservices_service` (
  `qbsql_id` int(10) UNSIGNED NOT NULL,
  `qbsql_username_id` int(10) UNSIGNED DEFAULT NULL,
  `qbsql_external_id` int(10) UNSIGNED DEFAULT NULL,
  `Company_CompanyName` text,
  `Name` text,
  `Domain` text,
  `ServiceStatus` varchar(40) DEFAULT NULL,
  `qbsql_discov_datetime` datetime DEFAULT NULL,
  `qbsql_resync_datetime` datetime DEFAULT NULL,
  `qbsql_modify_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `qbsql_last_hash` varchar(40) DEFAULT NULL,
  `qbsql_last_qbxml` text,
  `qbsql_last_errnum` varchar(32) DEFAULT NULL,
  `qbsql_last_errmsg` varchar(255) DEFAULT NULL,
  `qbsql_enqueue_datetime` datetime DEFAULT NULL,
  `qbsql_dequeue_datetime` datetime DEFAULT NULL,
  `qbsql_audit_amount` decimal(10,0) DEFAULT NULL,
  `qbsql_audit_modified` datetime DEFAULT NULL,
  `qbsql_to_sync` tinyint(1) DEFAULT '0',
  `qbsql_to_delete` tinyint(1) DEFAULT '0',
  `qbsql_to_skip` tinyint(1) DEFAULT '0',
  `qbsql_to_void` tinyint(1) DEFAULT '0',
  `qbsql_flag_deleted` tinyint(1) DEFAULT '0',
  `qbsql_flag_skipped` tinyint(1) DEFAULT '0',
  `qbsql_flag_voided` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qb_creditcardcharge`
--

DROP TABLE IF EXISTS `qb_creditcardcharge`;
CREATE TABLE `qb_creditcardcharge` (
  `qbsql_id` int(10) UNSIGNED NOT NULL,
  `qbsql_username_id` int(10) UNSIGNED DEFAULT NULL,
  `qbsql_external_id` int(10) UNSIGNED DEFAULT NULL,
  `TxnID` varchar(40) DEFAULT NULL,
  `TimeCreated` datetime DEFAULT NULL,
  `TimeModified` datetime DEFAULT NULL,
  `EditSequence` text,
  `TxnNumber` int(10) UNSIGNED DEFAULT '0',
  `Account_ListID` varchar(40) DEFAULT NULL,
  `Account_FullName` varchar(255) DEFAULT NULL,
  `PayeeEntity_ListID` varchar(40) DEFAULT NULL,
  `PayeeEntity_FullName` varchar(255) DEFAULT NULL,
  `TxnDate` date DEFAULT NULL,
  `Amount` decimal(10,2) DEFAULT NULL,
  `RefNumber` text,
  `Memo` text,
  `qbsql_discov_datetime` datetime DEFAULT NULL,
  `qbsql_resync_datetime` datetime DEFAULT NULL,
  `qbsql_modify_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `qbsql_last_hash` varchar(40) DEFAULT NULL,
  `qbsql_last_qbxml` text,
  `qbsql_last_errnum` varchar(32) DEFAULT NULL,
  `qbsql_last_errmsg` varchar(255) DEFAULT NULL,
  `qbsql_enqueue_datetime` datetime DEFAULT NULL,
  `qbsql_dequeue_datetime` datetime DEFAULT NULL,
  `qbsql_audit_amount` decimal(10,0) DEFAULT NULL,
  `qbsql_audit_modified` datetime DEFAULT NULL,
  `qbsql_to_sync` tinyint(1) DEFAULT '0',
  `qbsql_to_delete` tinyint(1) DEFAULT '0',
  `qbsql_to_skip` tinyint(1) DEFAULT '0',
  `qbsql_to_void` tinyint(1) DEFAULT '0',
  `qbsql_flag_deleted` tinyint(1) DEFAULT '0',
  `qbsql_flag_skipped` tinyint(1) DEFAULT '0',
  `qbsql_flag_voided` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qb_creditcardcharge_expenseline`
--

DROP TABLE IF EXISTS `qb_creditcardcharge_expenseline`;
CREATE TABLE `qb_creditcardcharge_expenseline` (
  `qbsql_id` int(10) UNSIGNED NOT NULL,
  `qbsql_username_id` int(10) UNSIGNED DEFAULT NULL,
  `qbsql_external_id` int(10) UNSIGNED DEFAULT NULL,
  `CreditCardCharge_TxnID` varchar(40) DEFAULT NULL,
  `SortOrder` int(10) UNSIGNED DEFAULT '0',
  `TxnLineID` varchar(40) DEFAULT NULL,
  `Account_ListID` varchar(40) DEFAULT NULL,
  `Account_FullName` varchar(255) DEFAULT NULL,
  `Amount` decimal(10,2) DEFAULT NULL,
  `CurrencyRef` text,
  `ExchangeRate` text,
  `AmountInHomeCurrency` decimal(10,2) DEFAULT NULL,
  `Memo` text,
  `Customer_ListID` varchar(40) DEFAULT NULL,
  `Customer_FullName` varchar(255) DEFAULT NULL,
  `Class_ListID` varchar(40) DEFAULT NULL,
  `Class_FullName` varchar(255) DEFAULT NULL,
  `BillableStatus` varchar(40) DEFAULT NULL,
  `qbsql_discov_datetime` datetime DEFAULT NULL,
  `qbsql_resync_datetime` datetime DEFAULT NULL,
  `qbsql_modify_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `qbsql_last_hash` varchar(40) DEFAULT NULL,
  `qbsql_last_qbxml` text,
  `qbsql_last_errnum` varchar(32) DEFAULT NULL,
  `qbsql_last_errmsg` varchar(255) DEFAULT NULL,
  `qbsql_enqueue_datetime` datetime DEFAULT NULL,
  `qbsql_dequeue_datetime` datetime DEFAULT NULL,
  `qbsql_audit_amount` decimal(10,0) DEFAULT NULL,
  `qbsql_audit_modified` datetime DEFAULT NULL,
  `qbsql_to_sync` tinyint(1) DEFAULT '0',
  `qbsql_to_delete` tinyint(1) DEFAULT '0',
  `qbsql_to_skip` tinyint(1) DEFAULT '0',
  `qbsql_to_void` tinyint(1) DEFAULT '0',
  `qbsql_flag_deleted` tinyint(1) DEFAULT '0',
  `qbsql_flag_skipped` tinyint(1) DEFAULT '0',
  `qbsql_flag_voided` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qb_creditcardcharge_itemgroupline`
--

DROP TABLE IF EXISTS `qb_creditcardcharge_itemgroupline`;
CREATE TABLE `qb_creditcardcharge_itemgroupline` (
  `qbsql_id` int(10) UNSIGNED NOT NULL,
  `qbsql_username_id` int(10) UNSIGNED DEFAULT NULL,
  `qbsql_external_id` int(10) UNSIGNED DEFAULT NULL,
  `CreditCardCharge_TxnID` varchar(40) DEFAULT NULL,
  `SortOrder` int(10) UNSIGNED DEFAULT '0',
  `TxnLineID` varchar(40) DEFAULT NULL,
  `ItemGroup_ListID` varchar(40) DEFAULT NULL,
  `ItemGroup_FullName` varchar(255) DEFAULT NULL,
  `Descrip` text,
  `Quantity` decimal(12,5) DEFAULT '0.00000',
  `UnitOfMeasure` text,
  `OverrideUOMSet_ListID` varchar(40) DEFAULT NULL,
  `OverrideUOMSet_FullName` varchar(255) DEFAULT NULL,
  `TotalAmount` decimal(10,2) DEFAULT NULL,
  `qbsql_discov_datetime` datetime DEFAULT NULL,
  `qbsql_resync_datetime` datetime DEFAULT NULL,
  `qbsql_modify_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `qbsql_last_hash` varchar(40) DEFAULT NULL,
  `qbsql_last_qbxml` text,
  `qbsql_last_errnum` varchar(32) DEFAULT NULL,
  `qbsql_last_errmsg` varchar(255) DEFAULT NULL,
  `qbsql_enqueue_datetime` datetime DEFAULT NULL,
  `qbsql_dequeue_datetime` datetime DEFAULT NULL,
  `qbsql_audit_amount` decimal(10,0) DEFAULT NULL,
  `qbsql_audit_modified` datetime DEFAULT NULL,
  `qbsql_to_sync` tinyint(1) DEFAULT '0',
  `qbsql_to_delete` tinyint(1) DEFAULT '0',
  `qbsql_to_skip` tinyint(1) DEFAULT '0',
  `qbsql_to_void` tinyint(1) DEFAULT '0',
  `qbsql_flag_deleted` tinyint(1) DEFAULT '0',
  `qbsql_flag_skipped` tinyint(1) DEFAULT '0',
  `qbsql_flag_voided` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qb_creditcardcharge_itemgroupline_itemline`
--

DROP TABLE IF EXISTS `qb_creditcardcharge_itemgroupline_itemline`;
CREATE TABLE `qb_creditcardcharge_itemgroupline_itemline` (
  `qbsql_id` int(10) UNSIGNED NOT NULL,
  `qbsql_username_id` int(10) UNSIGNED DEFAULT NULL,
  `qbsql_external_id` int(10) UNSIGNED DEFAULT NULL,
  `CreditCardCharge_TxnID` varchar(40) DEFAULT NULL,
  `CreditCardCharge_ItemGroupLine_TxnLineID` text,
  `SortOrder` int(10) UNSIGNED DEFAULT '0',
  `TxnLineID` varchar(40) DEFAULT NULL,
  `Item_ListID` varchar(40) DEFAULT NULL,
  `Item_FullName` varchar(255) DEFAULT NULL,
  `Descrip` text,
  `Quantity` decimal(12,5) DEFAULT '0.00000',
  `UnitOfMeasure` text,
  `OverrideUOMSet_ListID` varchar(40) DEFAULT NULL,
  `OverrideUOMSet_FullName` varchar(255) DEFAULT NULL,
  `Cost` decimal(13,5) DEFAULT NULL,
  `Amount` decimal(10,2) DEFAULT NULL,
  `Customer_ListID` varchar(40) DEFAULT NULL,
  `Customer_FullName` varchar(255) DEFAULT NULL,
  `Class_ListID` varchar(40) DEFAULT NULL,
  `Class_FullName` varchar(255) DEFAULT NULL,
  `BillableStatus` varchar(40) DEFAULT NULL,
  `qbsql_discov_datetime` datetime DEFAULT NULL,
  `qbsql_resync_datetime` datetime DEFAULT NULL,
  `qbsql_modify_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `qbsql_last_hash` varchar(40) DEFAULT NULL,
  `qbsql_last_qbxml` text,
  `qbsql_last_errnum` varchar(32) DEFAULT NULL,
  `qbsql_last_errmsg` varchar(255) DEFAULT NULL,
  `qbsql_enqueue_datetime` datetime DEFAULT NULL,
  `qbsql_dequeue_datetime` datetime DEFAULT NULL,
  `qbsql_audit_amount` decimal(10,0) DEFAULT NULL,
  `qbsql_audit_modified` datetime DEFAULT NULL,
  `qbsql_to_sync` tinyint(1) DEFAULT '0',
  `qbsql_to_delete` tinyint(1) DEFAULT '0',
  `qbsql_to_skip` tinyint(1) DEFAULT '0',
  `qbsql_to_void` tinyint(1) DEFAULT '0',
  `qbsql_flag_deleted` tinyint(1) DEFAULT '0',
  `qbsql_flag_skipped` tinyint(1) DEFAULT '0',
  `qbsql_flag_voided` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qb_creditcardcharge_itemline`
--

DROP TABLE IF EXISTS `qb_creditcardcharge_itemline`;
CREATE TABLE `qb_creditcardcharge_itemline` (
  `qbsql_id` int(10) UNSIGNED NOT NULL,
  `qbsql_username_id` int(10) UNSIGNED DEFAULT NULL,
  `qbsql_external_id` int(10) UNSIGNED DEFAULT NULL,
  `CreditCardCharge_TxnID` varchar(40) DEFAULT NULL,
  `SortOrder` int(10) UNSIGNED DEFAULT '0',
  `TxnLineID` varchar(40) DEFAULT NULL,
  `Item_ListID` varchar(40) DEFAULT NULL,
  `Item_FullName` varchar(255) DEFAULT NULL,
  `Descrip` text,
  `Quantity` decimal(12,5) DEFAULT '0.00000',
  `UnitOfMeasure` text,
  `OverrideUOMSet_ListID` varchar(40) DEFAULT NULL,
  `OverrideUOMSet_FullName` varchar(255) DEFAULT NULL,
  `Cost` decimal(13,5) DEFAULT NULL,
  `Amount` decimal(10,2) DEFAULT NULL,
  `Customer_ListID` varchar(40) DEFAULT NULL,
  `Customer_FullName` varchar(255) DEFAULT NULL,
  `Class_ListID` varchar(40) DEFAULT NULL,
  `Class_FullName` varchar(255) DEFAULT NULL,
  `BillableStatus` varchar(40) DEFAULT NULL,
  `qbsql_discov_datetime` datetime DEFAULT NULL,
  `qbsql_resync_datetime` datetime DEFAULT NULL,
  `qbsql_modify_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `qbsql_last_hash` varchar(40) DEFAULT NULL,
  `qbsql_last_qbxml` text,
  `qbsql_last_errnum` varchar(32) DEFAULT NULL,
  `qbsql_last_errmsg` varchar(255) DEFAULT NULL,
  `qbsql_enqueue_datetime` datetime DEFAULT NULL,
  `qbsql_dequeue_datetime` datetime DEFAULT NULL,
  `qbsql_audit_amount` decimal(10,0) DEFAULT NULL,
  `qbsql_audit_modified` datetime DEFAULT NULL,
  `qbsql_to_sync` tinyint(1) DEFAULT '0',
  `qbsql_to_delete` tinyint(1) DEFAULT '0',
  `qbsql_to_skip` tinyint(1) DEFAULT '0',
  `qbsql_to_void` tinyint(1) DEFAULT '0',
  `qbsql_flag_deleted` tinyint(1) DEFAULT '0',
  `qbsql_flag_skipped` tinyint(1) DEFAULT '0',
  `qbsql_flag_voided` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qb_creditcardcredit`
--

DROP TABLE IF EXISTS `qb_creditcardcredit`;
CREATE TABLE `qb_creditcardcredit` (
  `qbsql_id` int(10) UNSIGNED NOT NULL,
  `qbsql_username_id` int(10) UNSIGNED DEFAULT NULL,
  `qbsql_external_id` int(10) UNSIGNED DEFAULT NULL,
  `TxnID` varchar(40) DEFAULT NULL,
  `TimeCreated` datetime DEFAULT NULL,
  `TimeModified` datetime DEFAULT NULL,
  `EditSequence` text,
  `TxnNumber` int(10) UNSIGNED DEFAULT '0',
  `Account_ListID` varchar(40) DEFAULT NULL,
  `Account_FullName` varchar(255) DEFAULT NULL,
  `PayeeEntity_ListID` varchar(40) DEFAULT NULL,
  `PayeeEntity_FullName` varchar(255) DEFAULT NULL,
  `TxnDate` date DEFAULT NULL,
  `Amount` decimal(10,2) DEFAULT NULL,
  `RefNumber` text,
  `Memo` text,
  `qbsql_discov_datetime` datetime DEFAULT NULL,
  `qbsql_resync_datetime` datetime DEFAULT NULL,
  `qbsql_modify_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `qbsql_last_hash` varchar(40) DEFAULT NULL,
  `qbsql_last_qbxml` text,
  `qbsql_last_errnum` varchar(32) DEFAULT NULL,
  `qbsql_last_errmsg` varchar(255) DEFAULT NULL,
  `qbsql_enqueue_datetime` datetime DEFAULT NULL,
  `qbsql_dequeue_datetime` datetime DEFAULT NULL,
  `qbsql_audit_amount` decimal(10,0) DEFAULT NULL,
  `qbsql_audit_modified` datetime DEFAULT NULL,
  `qbsql_to_sync` tinyint(1) DEFAULT '0',
  `qbsql_to_delete` tinyint(1) DEFAULT '0',
  `qbsql_to_skip` tinyint(1) DEFAULT '0',
  `qbsql_to_void` tinyint(1) DEFAULT '0',
  `qbsql_flag_deleted` tinyint(1) DEFAULT '0',
  `qbsql_flag_skipped` tinyint(1) DEFAULT '0',
  `qbsql_flag_voided` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qb_creditcardcredit_expenseline`
--

DROP TABLE IF EXISTS `qb_creditcardcredit_expenseline`;
CREATE TABLE `qb_creditcardcredit_expenseline` (
  `qbsql_id` int(10) UNSIGNED NOT NULL,
  `qbsql_username_id` int(10) UNSIGNED DEFAULT NULL,
  `qbsql_external_id` int(10) UNSIGNED DEFAULT NULL,
  `CreditCardCredit_TxnID` varchar(40) DEFAULT NULL,
  `SortOrder` int(10) UNSIGNED DEFAULT '0',
  `TxnLineID` varchar(40) DEFAULT NULL,
  `Account_ListID` varchar(40) DEFAULT NULL,
  `Account_FullName` varchar(255) DEFAULT NULL,
  `Amount` decimal(10,2) DEFAULT NULL,
  `CurrencyRef` text,
  `ExchangeRate` text,
  `AmountInHomeCurrency` decimal(10,2) DEFAULT NULL,
  `Memo` text,
  `Customer_ListID` varchar(40) DEFAULT NULL,
  `Customer_FullName` varchar(255) DEFAULT NULL,
  `Class_ListID` varchar(40) DEFAULT NULL,
  `Class_FullName` varchar(255) DEFAULT NULL,
  `BillableStatus` varchar(40) DEFAULT NULL,
  `qbsql_discov_datetime` datetime DEFAULT NULL,
  `qbsql_resync_datetime` datetime DEFAULT NULL,
  `qbsql_modify_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `qbsql_last_hash` varchar(40) DEFAULT NULL,
  `qbsql_last_qbxml` text,
  `qbsql_last_errnum` varchar(32) DEFAULT NULL,
  `qbsql_last_errmsg` varchar(255) DEFAULT NULL,
  `qbsql_enqueue_datetime` datetime DEFAULT NULL,
  `qbsql_dequeue_datetime` datetime DEFAULT NULL,
  `qbsql_audit_amount` decimal(10,0) DEFAULT NULL,
  `qbsql_audit_modified` datetime DEFAULT NULL,
  `qbsql_to_sync` tinyint(1) DEFAULT '0',
  `qbsql_to_delete` tinyint(1) DEFAULT '0',
  `qbsql_to_skip` tinyint(1) DEFAULT '0',
  `qbsql_to_void` tinyint(1) DEFAULT '0',
  `qbsql_flag_deleted` tinyint(1) DEFAULT '0',
  `qbsql_flag_skipped` tinyint(1) DEFAULT '0',
  `qbsql_flag_voided` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qb_creditcardcredit_itemgroupline`
--

DROP TABLE IF EXISTS `qb_creditcardcredit_itemgroupline`;
CREATE TABLE `qb_creditcardcredit_itemgroupline` (
  `qbsql_id` int(10) UNSIGNED NOT NULL,
  `qbsql_username_id` int(10) UNSIGNED DEFAULT NULL,
  `qbsql_external_id` int(10) UNSIGNED DEFAULT NULL,
  `CreditCardCredit_TxnID` varchar(40) DEFAULT NULL,
  `SortOrder` int(10) UNSIGNED DEFAULT '0',
  `TxnLineID` varchar(40) DEFAULT NULL,
  `ItemGroup_ListID` varchar(40) DEFAULT NULL,
  `ItemGroup_FullName` varchar(255) DEFAULT NULL,
  `Descrip` text,
  `Quantity` decimal(12,5) DEFAULT '0.00000',
  `UnitOfMeasure` text,
  `OverrideUOMSet_ListID` varchar(40) DEFAULT NULL,
  `OverrideUOMSet_FullName` varchar(255) DEFAULT NULL,
  `TotalAmount` decimal(10,2) DEFAULT NULL,
  `qbsql_discov_datetime` datetime DEFAULT NULL,
  `qbsql_resync_datetime` datetime DEFAULT NULL,
  `qbsql_modify_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `qbsql_last_hash` varchar(40) DEFAULT NULL,
  `qbsql_last_qbxml` text,
  `qbsql_last_errnum` varchar(32) DEFAULT NULL,
  `qbsql_last_errmsg` varchar(255) DEFAULT NULL,
  `qbsql_enqueue_datetime` datetime DEFAULT NULL,
  `qbsql_dequeue_datetime` datetime DEFAULT NULL,
  `qbsql_audit_amount` decimal(10,0) DEFAULT NULL,
  `qbsql_audit_modified` datetime DEFAULT NULL,
  `qbsql_to_sync` tinyint(1) DEFAULT '0',
  `qbsql_to_delete` tinyint(1) DEFAULT '0',
  `qbsql_to_skip` tinyint(1) DEFAULT '0',
  `qbsql_to_void` tinyint(1) DEFAULT '0',
  `qbsql_flag_deleted` tinyint(1) DEFAULT '0',
  `qbsql_flag_skipped` tinyint(1) DEFAULT '0',
  `qbsql_flag_voided` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qb_creditcardcredit_itemgroupline_itemline`
--

DROP TABLE IF EXISTS `qb_creditcardcredit_itemgroupline_itemline`;
CREATE TABLE `qb_creditcardcredit_itemgroupline_itemline` (
  `qbsql_id` int(10) UNSIGNED NOT NULL,
  `qbsql_username_id` int(10) UNSIGNED DEFAULT NULL,
  `qbsql_external_id` int(10) UNSIGNED DEFAULT NULL,
  `CreditCardCredit_TxnID` varchar(40) DEFAULT NULL,
  `CreditCardCredit_ItemGroupLine_TxnLineID` text,
  `SortOrder` int(10) UNSIGNED DEFAULT '0',
  `TxnLineID` varchar(40) DEFAULT NULL,
  `ItemRef` text,
  `Descrip` text,
  `Quantity` decimal(12,5) DEFAULT '0.00000',
  `UnitOfMeasure` text,
  `OverrideUOMSetRef` text,
  `Cost` decimal(13,5) DEFAULT NULL,
  `Amount` decimal(10,2) DEFAULT NULL,
  `CustomerRef` text,
  `ClassRef` text,
  `BillableStatus` varchar(40) DEFAULT NULL,
  `qbsql_discov_datetime` datetime DEFAULT NULL,
  `qbsql_resync_datetime` datetime DEFAULT NULL,
  `qbsql_modify_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `qbsql_last_hash` varchar(40) DEFAULT NULL,
  `qbsql_last_qbxml` text,
  `qbsql_last_errnum` varchar(32) DEFAULT NULL,
  `qbsql_last_errmsg` varchar(255) DEFAULT NULL,
  `qbsql_enqueue_datetime` datetime DEFAULT NULL,
  `qbsql_dequeue_datetime` datetime DEFAULT NULL,
  `qbsql_audit_amount` decimal(10,0) DEFAULT NULL,
  `qbsql_audit_modified` datetime DEFAULT NULL,
  `qbsql_to_sync` tinyint(1) DEFAULT '0',
  `qbsql_to_delete` tinyint(1) DEFAULT '0',
  `qbsql_to_skip` tinyint(1) DEFAULT '0',
  `qbsql_to_void` tinyint(1) DEFAULT '0',
  `qbsql_flag_deleted` tinyint(1) DEFAULT '0',
  `qbsql_flag_skipped` tinyint(1) DEFAULT '0',
  `qbsql_flag_voided` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qb_creditcardcredit_itemline`
--

DROP TABLE IF EXISTS `qb_creditcardcredit_itemline`;
CREATE TABLE `qb_creditcardcredit_itemline` (
  `qbsql_id` int(10) UNSIGNED NOT NULL,
  `qbsql_username_id` int(10) UNSIGNED DEFAULT NULL,
  `qbsql_external_id` int(10) UNSIGNED DEFAULT NULL,
  `CreditCardCredit_TxnID` varchar(40) DEFAULT NULL,
  `SortOrder` int(10) UNSIGNED DEFAULT '0',
  `TxnLineID` varchar(40) DEFAULT NULL,
  `Item_ListID` varchar(40) DEFAULT NULL,
  `Item_FullName` varchar(255) DEFAULT NULL,
  `Descrip` text,
  `Quantity` decimal(12,5) DEFAULT '0.00000',
  `UnitOfMeasure` text,
  `OverrideUOMSet_ListID` varchar(40) DEFAULT NULL,
  `OverrideUOMSet_FullName` varchar(255) DEFAULT NULL,
  `Cost` decimal(13,5) DEFAULT NULL,
  `Amount` decimal(10,2) DEFAULT NULL,
  `Customer_ListID` varchar(40) DEFAULT NULL,
  `Customer_FullName` varchar(255) DEFAULT NULL,
  `Class_ListID` varchar(40) DEFAULT NULL,
  `Class_FullName` varchar(255) DEFAULT NULL,
  `BillableStatus` varchar(40) DEFAULT NULL,
  `qbsql_discov_datetime` datetime DEFAULT NULL,
  `qbsql_resync_datetime` datetime DEFAULT NULL,
  `qbsql_modify_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `qbsql_last_hash` varchar(40) DEFAULT NULL,
  `qbsql_last_qbxml` text,
  `qbsql_last_errnum` varchar(32) DEFAULT NULL,
  `qbsql_last_errmsg` varchar(255) DEFAULT NULL,
  `qbsql_enqueue_datetime` datetime DEFAULT NULL,
  `qbsql_dequeue_datetime` datetime DEFAULT NULL,
  `qbsql_audit_amount` decimal(10,0) DEFAULT NULL,
  `qbsql_audit_modified` datetime DEFAULT NULL,
  `qbsql_to_sync` tinyint(1) DEFAULT '0',
  `qbsql_to_delete` tinyint(1) DEFAULT '0',
  `qbsql_to_skip` tinyint(1) DEFAULT '0',
  `qbsql_to_void` tinyint(1) DEFAULT '0',
  `qbsql_flag_deleted` tinyint(1) DEFAULT '0',
  `qbsql_flag_skipped` tinyint(1) DEFAULT '0',
  `qbsql_flag_voided` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qb_creditmemo`
--

DROP TABLE IF EXISTS `qb_creditmemo`;
CREATE TABLE `qb_creditmemo` (
  `qbsql_id` int(10) UNSIGNED NOT NULL,
  `qbsql_username_id` int(10) UNSIGNED DEFAULT NULL,
  `qbsql_external_id` int(10) UNSIGNED DEFAULT NULL,
  `TxnID` varchar(40) DEFAULT NULL,
  `TimeCreated` datetime DEFAULT NULL,
  `TimeModified` datetime DEFAULT NULL,
  `EditSequence` text,
  `TxnNumber` int(10) UNSIGNED DEFAULT '0',
  `Customer_ListID` varchar(40) DEFAULT NULL,
  `Customer_FullName` varchar(255) DEFAULT NULL,
  `Class_ListID` varchar(40) DEFAULT NULL,
  `Class_FullName` varchar(255) DEFAULT NULL,
  `ARAccount_ListID` varchar(40) DEFAULT NULL,
  `ARAccount_FullName` varchar(255) DEFAULT NULL,
  `Template_ListID` varchar(40) DEFAULT NULL,
  `Template_FullName` varchar(255) DEFAULT NULL,
  `TxnDate` date DEFAULT NULL,
  `RefNumber` varchar(11) DEFAULT NULL,
  `BillAddress_Addr1` varchar(41) DEFAULT NULL,
  `BillAddress_Addr2` varchar(41) DEFAULT NULL,
  `BillAddress_Addr3` varchar(41) DEFAULT NULL,
  `BillAddress_Addr4` varchar(41) DEFAULT NULL,
  `BillAddress_Addr5` varchar(41) DEFAULT NULL,
  `BillAddress_City` varchar(31) DEFAULT NULL,
  `BillAddress_State` varchar(21) DEFAULT NULL,
  `BillAddress_PostalCode` varchar(13) DEFAULT NULL,
  `BillAddress_Country` varchar(31) DEFAULT NULL,
  `BillAddress_Note` varchar(41) DEFAULT NULL,
  `BillAddressBlock_Addr1` text,
  `BillAddressBlock_Addr2` text,
  `BillAddressBlock_Addr3` text,
  `BillAddressBlock_Addr4` text,
  `BillAddressBlock_Addr5` text,
  `ShipAddress_Addr1` varchar(41) DEFAULT NULL,
  `ShipAddress_Addr2` varchar(41) DEFAULT NULL,
  `ShipAddress_Addr3` varchar(41) DEFAULT NULL,
  `ShipAddress_Addr4` varchar(41) DEFAULT NULL,
  `ShipAddress_Addr5` varchar(41) DEFAULT NULL,
  `ShipAddress_City` varchar(31) DEFAULT NULL,
  `ShipAddress_State` varchar(21) DEFAULT NULL,
  `ShipAddress_PostalCode` varchar(13) DEFAULT NULL,
  `ShipAddress_Country` varchar(31) DEFAULT NULL,
  `ShipAddress_Note` varchar(41) DEFAULT NULL,
  `ShipAddressBlock_Addr1` text,
  `ShipAddressBlock_Addr2` text,
  `ShipAddressBlock_Addr3` text,
  `ShipAddressBlock_Addr4` text,
  `ShipAddressBlock_Addr5` text,
  `IsPending` tinyint(1) DEFAULT NULL,
  `PONumber` varchar(25) DEFAULT NULL,
  `Terms_ListID` varchar(40) DEFAULT NULL,
  `Terms_FullName` varchar(255) DEFAULT NULL,
  `DueDate` date DEFAULT NULL,
  `SalesRep_ListID` varchar(40) DEFAULT NULL,
  `SalesRep_FullName` varchar(255) DEFAULT NULL,
  `FOB` varchar(13) DEFAULT NULL,
  `ShipDate` date DEFAULT NULL,
  `ShipMethod_ListID` varchar(40) DEFAULT NULL,
  `ShipMethod_FullName` varchar(255) DEFAULT NULL,
  `Subtotal` decimal(10,2) DEFAULT NULL,
  `ItemSalesTax_ListID` varchar(40) DEFAULT NULL,
  `ItemSalesTax_FullName` varchar(255) DEFAULT NULL,
  `SalesTaxPercentage` decimal(12,5) DEFAULT NULL,
  `SalesTaxTotal` decimal(10,2) DEFAULT NULL,
  `TotalAmount` decimal(10,2) DEFAULT NULL,
  `CreditRemaining` decimal(10,2) DEFAULT NULL,
  `Memo` text,
  `CustomerMsg_ListID` varchar(40) DEFAULT NULL,
  `CustomerMsg_FullName` varchar(255) DEFAULT NULL,
  `IsToBePrinted` tinyint(1) DEFAULT '0',
  `IsToBeEmailed` tinyint(1) DEFAULT '0',
  `CustomerSalesTaxCode_ListID` varchar(40) DEFAULT NULL,
  `CustomerSalesTaxCode_FullName` varchar(255) DEFAULT NULL,
  `Other` varchar(29) DEFAULT NULL,
  `qbsql_discov_datetime` datetime DEFAULT NULL,
  `qbsql_resync_datetime` datetime DEFAULT NULL,
  `qbsql_modify_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `qbsql_last_hash` varchar(40) DEFAULT NULL,
  `qbsql_last_qbxml` text,
  `qbsql_last_errnum` varchar(32) DEFAULT NULL,
  `qbsql_last_errmsg` varchar(255) DEFAULT NULL,
  `qbsql_enqueue_datetime` datetime DEFAULT NULL,
  `qbsql_dequeue_datetime` datetime DEFAULT NULL,
  `qbsql_audit_amount` decimal(10,0) DEFAULT NULL,
  `qbsql_audit_modified` datetime DEFAULT NULL,
  `qbsql_to_sync` tinyint(1) DEFAULT '0',
  `qbsql_to_delete` tinyint(1) DEFAULT '0',
  `qbsql_to_skip` tinyint(1) DEFAULT '0',
  `qbsql_to_void` tinyint(1) DEFAULT '0',
  `qbsql_flag_deleted` tinyint(1) DEFAULT '0',
  `qbsql_flag_skipped` tinyint(1) DEFAULT '0',
  `qbsql_flag_voided` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qb_creditmemo_creditmemoline`
--

DROP TABLE IF EXISTS `qb_creditmemo_creditmemoline`;
CREATE TABLE `qb_creditmemo_creditmemoline` (
  `qbsql_id` int(10) UNSIGNED NOT NULL,
  `qbsql_username_id` int(10) UNSIGNED DEFAULT NULL,
  `qbsql_external_id` int(10) UNSIGNED DEFAULT NULL,
  `CreditMemo_TxnID` varchar(40) DEFAULT NULL,
  `SortOrder` int(10) UNSIGNED DEFAULT '0',
  `TxnLineID` varchar(40) DEFAULT NULL,
  `Item_ListID` varchar(40) DEFAULT NULL,
  `Item_FullName` varchar(255) DEFAULT NULL,
  `Descrip` text,
  `Quantity` decimal(12,5) DEFAULT '0.00000',
  `UnitOfMeasure` text,
  `OverrideUOMSet_ListID` varchar(40) DEFAULT NULL,
  `OverrideUOMSet_FullName` varchar(255) DEFAULT NULL,
  `Rate` decimal(13,5) DEFAULT NULL,
  `RatePercent` decimal(12,5) DEFAULT NULL,
  `Class_ListID` varchar(40) DEFAULT NULL,
  `Class_FullName` varchar(255) DEFAULT NULL,
  `Amount` decimal(10,2) DEFAULT NULL,
  `ServiceDate` date DEFAULT NULL,
  `SalesTaxCode_ListID` varchar(40) DEFAULT NULL,
  `SalesTaxCode_FullName` varchar(255) DEFAULT NULL,
  `Other1` text,
  `Other2` text,
  `CreditCardTxnInputInfo_CreditCardNumber` text,
  `CreditCardTxnInputInfo_ExpirationMonth` int(10) UNSIGNED DEFAULT NULL,
  `CreditCardTxnInputInfo_ExpirationYear` int(10) UNSIGNED DEFAULT NULL,
  `CreditCardTxnInputInfo_NameOnCard` text,
  `CreditCardTxnInputInfo_CreditCardAddress` text,
  `CreditCardTxnInputInfo_CreditCardPostalCode` text,
  `CreditCardTxnInputInfo_CommercialCardCode` text,
  `CreditCardTxnInputInfo_TransactionMode` varchar(40) DEFAULT NULL,
  `CreditCardTxnInputInfo_CreditCardTxnType` varchar(40) DEFAULT NULL,
  `CreditCardTxnResultInfo_ResultCode` int(10) UNSIGNED DEFAULT NULL,
  `CreditCardTxnResultInfo_ResultMessage` text,
  `CreditCardTxnResultInfo_CreditCardTransID` text,
  `CreditCardTxnResultInfo_MerchantAccountNumber` text,
  `CreditCardTxnResultInfo_AuthorizationCode` text,
  `CreditCardTxnResultInfo_AVSStreet` varchar(40) DEFAULT NULL,
  `CreditCardTxnResultInfo_AVSZip` varchar(40) DEFAULT NULL,
  `CreditCardTxnResultInfo_CardSecurityCodeMatch` varchar(40) DEFAULT NULL,
  `CreditCardTxnResultInfo_ReconBatchID` text,
  `CreditCardTxnResultInfo_PaymentGroupingCode` int(10) UNSIGNED DEFAULT NULL,
  `CreditCardTxnResultInfo_PaymentStatus` varchar(40) DEFAULT NULL,
  `CreditCardTxnResultInfo_TxnAuthorizationTime` datetime DEFAULT NULL,
  `CreditCardTxnResultInfo_TxnAuthorizationStamp` int(10) UNSIGNED DEFAULT NULL,
  `CreditCardTxnResultInfo_ClientTransID` text,
  `qbsql_discov_datetime` datetime DEFAULT NULL,
  `qbsql_resync_datetime` datetime DEFAULT NULL,
  `qbsql_modify_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `qbsql_last_hash` varchar(40) DEFAULT NULL,
  `qbsql_last_qbxml` text,
  `qbsql_last_errnum` varchar(32) DEFAULT NULL,
  `qbsql_last_errmsg` varchar(255) DEFAULT NULL,
  `qbsql_enqueue_datetime` datetime DEFAULT NULL,
  `qbsql_dequeue_datetime` datetime DEFAULT NULL,
  `qbsql_audit_amount` decimal(10,0) DEFAULT NULL,
  `qbsql_audit_modified` datetime DEFAULT NULL,
  `qbsql_to_sync` tinyint(1) DEFAULT '0',
  `qbsql_to_delete` tinyint(1) DEFAULT '0',
  `qbsql_to_skip` tinyint(1) DEFAULT '0',
  `qbsql_to_void` tinyint(1) DEFAULT '0',
  `qbsql_flag_deleted` tinyint(1) DEFAULT '0',
  `qbsql_flag_skipped` tinyint(1) DEFAULT '0',
  `qbsql_flag_voided` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qb_creditmemo_creditmemolinegroup`
--

DROP TABLE IF EXISTS `qb_creditmemo_creditmemolinegroup`;
CREATE TABLE `qb_creditmemo_creditmemolinegroup` (
  `qbsql_id` int(10) UNSIGNED NOT NULL,
  `qbsql_username_id` int(10) UNSIGNED DEFAULT NULL,
  `qbsql_external_id` int(10) UNSIGNED DEFAULT NULL,
  `CreditMemo_TxnID` varchar(40) DEFAULT NULL,
  `SortOrder` int(10) UNSIGNED DEFAULT '0',
  `TxnLineID` varchar(40) DEFAULT NULL,
  `ItemGroup_ListID` varchar(40) DEFAULT NULL,
  `ItemGroup_FullName` varchar(255) DEFAULT NULL,
  `Descrip` text,
  `Quantity` decimal(12,5) DEFAULT '0.00000',
  `UnitOfMeasure` text,
  `OverrideUOMSet_ListID` varchar(40) DEFAULT NULL,
  `OverrideUOMSet_FullName` varchar(255) DEFAULT NULL,
  `IsPrintItemsInGroup` tinyint(1) DEFAULT '0',
  `TotalAmount` decimal(10,2) DEFAULT NULL,
  `qbsql_discov_datetime` datetime DEFAULT NULL,
  `qbsql_resync_datetime` datetime DEFAULT NULL,
  `qbsql_modify_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `qbsql_last_hash` varchar(40) DEFAULT NULL,
  `qbsql_last_qbxml` text,
  `qbsql_last_errnum` varchar(32) DEFAULT NULL,
  `qbsql_last_errmsg` varchar(255) DEFAULT NULL,
  `qbsql_enqueue_datetime` datetime DEFAULT NULL,
  `qbsql_dequeue_datetime` datetime DEFAULT NULL,
  `qbsql_audit_amount` decimal(10,0) DEFAULT NULL,
  `qbsql_audit_modified` datetime DEFAULT NULL,
  `qbsql_to_sync` tinyint(1) DEFAULT '0',
  `qbsql_to_delete` tinyint(1) DEFAULT '0',
  `qbsql_to_skip` tinyint(1) DEFAULT '0',
  `qbsql_to_void` tinyint(1) DEFAULT '0',
  `qbsql_flag_deleted` tinyint(1) DEFAULT '0',
  `qbsql_flag_skipped` tinyint(1) DEFAULT '0',
  `qbsql_flag_voided` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qb_creditmemo_creditmemolinegroup_creditmemoline`
--

DROP TABLE IF EXISTS `qb_creditmemo_creditmemolinegroup_creditmemoline`;
CREATE TABLE `qb_creditmemo_creditmemolinegroup_creditmemoline` (
  `qbsql_id` int(10) UNSIGNED NOT NULL,
  `qbsql_username_id` int(10) UNSIGNED DEFAULT NULL,
  `qbsql_external_id` int(10) UNSIGNED DEFAULT NULL,
  `CreditMemo_TxnID` varchar(40) DEFAULT NULL,
  `CreditMemo_CreditMemoLineGroup_TxnLineID` text,
  `SortOrder` int(10) UNSIGNED DEFAULT '0',
  `TxnLineID` varchar(40) DEFAULT NULL,
  `Item_ListID` varchar(40) DEFAULT NULL,
  `Item_FullName` varchar(255) DEFAULT NULL,
  `Descrip` text,
  `Quantity` decimal(12,5) DEFAULT '0.00000',
  `UnitOfMeasure` text,
  `OverrideUOMSet_ListID` varchar(40) DEFAULT NULL,
  `OverrideUOMSet_FullName` varchar(255) DEFAULT NULL,
  `Rate` decimal(13,5) DEFAULT NULL,
  `RatePercent` decimal(12,5) DEFAULT NULL,
  `Class_ListID` varchar(40) DEFAULT NULL,
  `Class_FullName` varchar(255) DEFAULT NULL,
  `Amount` decimal(10,2) DEFAULT NULL,
  `ServiceDate` date DEFAULT NULL,
  `SalesTaxCode_ListID` varchar(40) DEFAULT NULL,
  `SalesTaxCode_FullName` varchar(255) DEFAULT NULL,
  `Other1` text,
  `Other2` text,
  `CreditCardTxnInfo_CreditCardTxnInputInfo_CreditCardNumber` text,
  `CreditCardTxnInfo_CreditCardTxnInputInfo_ExpirationMonth` int(10) UNSIGNED DEFAULT NULL,
  `CreditCardTxnInfo_CreditCardTxnInputInfo_ExpirationYear` int(10) UNSIGNED DEFAULT NULL,
  `CreditCardTxnInfo_CreditCardTxnInputInfo_NameOnCard` text,
  `CreditCardTxnInfo_CreditCardTxnInputInfo_CreditCardAddress` text,
  `CreditCardTxnInfo_CreditCardTxnInputInfo_CreditCardPostalCode` text,
  `CreditCardTxnInfo_CreditCardTxnInputInfo_CommercialCardCode` text,
  `CreditCardTxnInfo_CreditCardTxnInputInfo_TransactionMode` varchar(40) DEFAULT NULL,
  `CreditCardTxnInfo_CreditCardTxnInputInfo_CreditCardTxnType` varchar(40) DEFAULT NULL,
  `CreditCardTxnInfo_CreditCardTxnResultInfo_ResultCode` int(10) UNSIGNED DEFAULT NULL,
  `CreditCardTxnInfo_CreditCardTxnResultInfo_ResultMessage` text,
  `CreditCardTxnInfo_CreditCardTxnResultInfo_CreditCardTransID` text,
  `CreditCardTxnInfo_CreditCardTxnResultInfo_MerchantAccountNumber` text,
  `CreditCardTxnInfo_CreditCardTxnResultInfo_AuthorizationCode` text,
  `CreditCardTxnInfo_CreditCardTxnResultInfo_AVSStreet` varchar(40) DEFAULT NULL,
  `CreditCardTxnInfo_CreditCardTxnResultInfo_AVSZip` varchar(40) DEFAULT NULL,
  `CreditCardTxnInfo_CreditCardTxnResultInfo_CardSecurityCodeMatch` varchar(40) DEFAULT NULL,
  `CreditCardTxnInfo_CreditCardTxnResultInfo_ReconBatchID` text,
  `CreditCardTxnInfo_CreditCardTxnResultInfo_PaymentGroupingCode` int(10) UNSIGNED DEFAULT NULL,
  `CreditCardTxnInfo_CreditCardTxnResultInfo_PaymentStatus` varchar(40) DEFAULT NULL,
  `CreditCardTxnInfo_CreditCardTxnResultInfo_TxnAuthorizationTime` datetime DEFAULT NULL,
  `CreditCardTxnInfo_CreditCardTxnResultInfo_TxnAuthorizationStamp` int(10) UNSIGNED DEFAULT NULL,
  `CreditCardTxnInfo_CreditCardTxnResultInfo_ClientTransID` text,
  `qbsql_discov_datetime` datetime DEFAULT NULL,
  `qbsql_resync_datetime` datetime DEFAULT NULL,
  `qbsql_modify_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `qbsql_last_hash` varchar(40) DEFAULT NULL,
  `qbsql_last_qbxml` text,
  `qbsql_last_errnum` varchar(32) DEFAULT NULL,
  `qbsql_last_errmsg` varchar(255) DEFAULT NULL,
  `qbsql_enqueue_datetime` datetime DEFAULT NULL,
  `qbsql_dequeue_datetime` datetime DEFAULT NULL,
  `qbsql_audit_amount` decimal(10,0) DEFAULT NULL,
  `qbsql_audit_modified` datetime DEFAULT NULL,
  `qbsql_to_sync` tinyint(1) DEFAULT '0',
  `qbsql_to_delete` tinyint(1) DEFAULT '0',
  `qbsql_to_skip` tinyint(1) DEFAULT '0',
  `qbsql_to_void` tinyint(1) DEFAULT '0',
  `qbsql_flag_deleted` tinyint(1) DEFAULT '0',
  `qbsql_flag_skipped` tinyint(1) DEFAULT '0',
  `qbsql_flag_voided` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qb_creditmemo_linkedtxn`
--

DROP TABLE IF EXISTS `qb_creditmemo_linkedtxn`;
CREATE TABLE `qb_creditmemo_linkedtxn` (
  `qbsql_id` int(10) UNSIGNED NOT NULL,
  `qbsql_username_id` int(10) UNSIGNED DEFAULT NULL,
  `qbsql_external_id` int(10) UNSIGNED DEFAULT NULL,
  `FromTxnID` varchar(40) DEFAULT NULL,
  `CreditMemo_TxnID` varchar(40) DEFAULT NULL,
  `LinkType` text,
  `ToTxnID` varchar(40) DEFAULT NULL,
  `TxnType` varchar(40) DEFAULT NULL,
  `TxnDate` date DEFAULT NULL,
  `RefNumber` text,
  `Amount` decimal(10,2) DEFAULT NULL,
  `qbsql_discov_datetime` datetime DEFAULT NULL,
  `qbsql_resync_datetime` datetime DEFAULT NULL,
  `qbsql_modify_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `qbsql_last_hash` varchar(40) DEFAULT NULL,
  `qbsql_last_qbxml` text,
  `qbsql_last_errnum` varchar(32) DEFAULT NULL,
  `qbsql_last_errmsg` varchar(255) DEFAULT NULL,
  `qbsql_enqueue_datetime` datetime DEFAULT NULL,
  `qbsql_dequeue_datetime` datetime DEFAULT NULL,
  `qbsql_audit_amount` decimal(10,0) DEFAULT NULL,
  `qbsql_audit_modified` datetime DEFAULT NULL,
  `qbsql_to_sync` tinyint(1) DEFAULT '0',
  `qbsql_to_delete` tinyint(1) DEFAULT '0',
  `qbsql_to_skip` tinyint(1) DEFAULT '0',
  `qbsql_to_void` tinyint(1) DEFAULT '0',
  `qbsql_flag_deleted` tinyint(1) DEFAULT '0',
  `qbsql_flag_skipped` tinyint(1) DEFAULT '0',
  `qbsql_flag_voided` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qb_credittoapply`
--

DROP TABLE IF EXISTS `qb_credittoapply`;
CREATE TABLE `qb_credittoapply` (
  `qbsql_id` int(10) UNSIGNED NOT NULL,
  `qbsql_username_id` int(10) UNSIGNED DEFAULT NULL,
  `qbsql_external_id` int(10) UNSIGNED DEFAULT NULL,
  `TxnID` varchar(40) DEFAULT NULL,
  `TxnType` varchar(40) DEFAULT NULL,
  `APAccount_ListID` varchar(40) DEFAULT NULL,
  `APAccount_FullName` varchar(255) DEFAULT NULL,
  `TxnDate` date DEFAULT NULL,
  `RefNumber` text,
  `CreditRemaining` decimal(10,2) DEFAULT NULL,
  `qbsql_discov_datetime` datetime DEFAULT NULL,
  `qbsql_resync_datetime` datetime DEFAULT NULL,
  `qbsql_modify_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `qbsql_last_hash` varchar(40) DEFAULT NULL,
  `qbsql_last_qbxml` text,
  `qbsql_last_errnum` varchar(32) DEFAULT NULL,
  `qbsql_last_errmsg` varchar(255) DEFAULT NULL,
  `qbsql_enqueue_datetime` datetime DEFAULT NULL,
  `qbsql_dequeue_datetime` datetime DEFAULT NULL,
  `qbsql_audit_amount` decimal(10,0) DEFAULT NULL,
  `qbsql_audit_modified` datetime DEFAULT NULL,
  `qbsql_to_sync` tinyint(1) DEFAULT '0',
  `qbsql_to_delete` tinyint(1) DEFAULT '0',
  `qbsql_to_skip` tinyint(1) DEFAULT '0',
  `qbsql_to_void` tinyint(1) DEFAULT '0',
  `qbsql_flag_deleted` tinyint(1) DEFAULT '0',
  `qbsql_flag_skipped` tinyint(1) DEFAULT '0',
  `qbsql_flag_voided` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qb_currency`
--

DROP TABLE IF EXISTS `qb_currency`;
CREATE TABLE `qb_currency` (
  `qbsql_id` int(10) UNSIGNED NOT NULL,
  `qbsql_username_id` int(10) UNSIGNED DEFAULT NULL,
  `qbsql_external_id` int(10) UNSIGNED DEFAULT NULL,
  `ListID` varchar(40) DEFAULT NULL,
  `TimeCreated` datetime DEFAULT NULL,
  `TimeModified` datetime DEFAULT NULL,
  `EditSequence` text,
  `Name` text,
  `IsActive` tinyint(1) DEFAULT '0',
  `CurrencyCode` text,
  `Currency_CurrencyFormat_ThousandSeparator` varchar(40) DEFAULT NULL,
  `Currency_CurrencyFormat_ThousandSeparatorGrouping` varchar(40) DEFAULT NULL,
  `Currency_CurrencyFormat_DecimalPlaces` varchar(40) DEFAULT NULL,
  `Currency_CurrencyFormat_DecimalSeparator` varchar(40) DEFAULT NULL,
  `IsUserDefinedCurrency` tinyint(1) DEFAULT '0',
  `ExchangeRate` text,
  `AsOfDate` date DEFAULT NULL,
  `qbsql_discov_datetime` datetime DEFAULT NULL,
  `qbsql_resync_datetime` datetime DEFAULT NULL,
  `qbsql_modify_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `qbsql_last_hash` varchar(40) DEFAULT NULL,
  `qbsql_last_qbxml` text,
  `qbsql_last_errnum` varchar(32) DEFAULT NULL,
  `qbsql_last_errmsg` varchar(255) DEFAULT NULL,
  `qbsql_enqueue_datetime` datetime DEFAULT NULL,
  `qbsql_dequeue_datetime` datetime DEFAULT NULL,
  `qbsql_audit_amount` decimal(10,0) DEFAULT NULL,
  `qbsql_audit_modified` datetime DEFAULT NULL,
  `qbsql_to_sync` tinyint(1) DEFAULT '0',
  `qbsql_to_delete` tinyint(1) DEFAULT '0',
  `qbsql_to_skip` tinyint(1) DEFAULT '0',
  `qbsql_to_void` tinyint(1) DEFAULT '0',
  `qbsql_flag_deleted` tinyint(1) DEFAULT '0',
  `qbsql_flag_skipped` tinyint(1) DEFAULT '0',
  `qbsql_flag_voided` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qb_customer`
--

DROP TABLE IF EXISTS `qb_customer`;
CREATE TABLE `qb_customer` (
  `qbsql_id` int(10) UNSIGNED NOT NULL,
  `qbsql_username_id` int(10) UNSIGNED DEFAULT NULL,
  `qbsql_external_id` int(10) UNSIGNED DEFAULT NULL,
  `ListID` varchar(40) DEFAULT NULL,
  `TimeCreated` datetime DEFAULT NULL,
  `TimeModified` datetime DEFAULT NULL,
  `EditSequence` text,
  `Name` varchar(41) DEFAULT NULL,
  `FullName` varchar(255) DEFAULT NULL,
  `IsActive` tinyint(1) DEFAULT '0',
  `Parent_ListID` varchar(40) DEFAULT NULL,
  `Parent_FullName` varchar(255) DEFAULT NULL,
  `Sublevel` int(10) UNSIGNED DEFAULT '0',
  `CompanyName` varchar(41) DEFAULT NULL,
  `Salutation` varchar(15) DEFAULT NULL,
  `FirstName` varchar(25) DEFAULT NULL,
  `MiddleName` varchar(5) DEFAULT NULL,
  `LastName` varchar(25) DEFAULT NULL,
  `BillAddress_Addr1` varchar(41) DEFAULT NULL,
  `BillAddress_Addr2` varchar(41) DEFAULT NULL,
  `BillAddress_Addr3` varchar(41) DEFAULT NULL,
  `BillAddress_Addr4` varchar(41) DEFAULT NULL,
  `BillAddress_Addr5` varchar(41) DEFAULT NULL,
  `BillAddress_City` varchar(31) DEFAULT NULL,
  `BillAddress_State` varchar(21) DEFAULT NULL,
  `BillAddress_PostalCode` varchar(13) DEFAULT NULL,
  `BillAddress_Country` varchar(31) DEFAULT NULL,
  `BillAddress_Note` varchar(41) DEFAULT NULL,
  `BillAddressBlock_Addr1` text,
  `BillAddressBlock_Addr2` text,
  `BillAddressBlock_Addr3` text,
  `BillAddressBlock_Addr4` text,
  `BillAddressBlock_Addr5` text,
  `ShipAddress_Addr1` varchar(41) DEFAULT NULL,
  `ShipAddress_Addr2` varchar(41) DEFAULT NULL,
  `ShipAddress_Addr3` varchar(41) DEFAULT NULL,
  `ShipAddress_Addr4` varchar(41) DEFAULT NULL,
  `ShipAddress_Addr5` varchar(41) DEFAULT NULL,
  `ShipAddress_City` varchar(31) DEFAULT NULL,
  `ShipAddress_State` varchar(21) DEFAULT NULL,
  `ShipAddress_PostalCode` varchar(13) DEFAULT NULL,
  `ShipAddress_Country` varchar(31) DEFAULT NULL,
  `ShipAddress_Note` varchar(41) DEFAULT NULL,
  `ShipAddressBlock_Addr1` text,
  `ShipAddressBlock_Addr2` text,
  `ShipAddressBlock_Addr3` text,
  `ShipAddressBlock_Addr4` text,
  `ShipAddressBlock_Addr5` text,
  `Phone` varchar(21) DEFAULT NULL,
  `AltPhone` varchar(21) DEFAULT NULL,
  `Fax` varchar(21) DEFAULT NULL,
  `Email` text,
  `AltEmail` text,
  `Contact` varchar(41) DEFAULT NULL,
  `AltContact` varchar(41) DEFAULT NULL,
  `CustomerType_ListID` varchar(40) DEFAULT NULL,
  `CustomerType_FullName` varchar(255) DEFAULT NULL,
  `Terms_ListID` varchar(40) DEFAULT NULL,
  `Terms_FullName` varchar(255) DEFAULT NULL,
  `SalesRep_ListID` varchar(40) DEFAULT NULL,
  `SalesRep_FullName` varchar(255) DEFAULT NULL,
  `Balance` decimal(10,2) DEFAULT NULL,
  `TotalBalance` decimal(10,2) DEFAULT NULL,
  `SalesTaxCode_ListID` varchar(40) DEFAULT NULL,
  `SalesTaxCode_FullName` varchar(255) DEFAULT NULL,
  `ItemSalesTax_ListID` varchar(40) DEFAULT NULL,
  `ItemSalesTax_FullName` varchar(255) DEFAULT NULL,
  `ResaleNumber` varchar(15) DEFAULT NULL,
  `AccountNumber` varchar(99) DEFAULT NULL,
  `CreditLimit` decimal(10,2) DEFAULT NULL,
  `PreferredPaymentMethod_ListID` varchar(40) DEFAULT NULL,
  `PreferredPaymentMethod_FullName` varchar(255) DEFAULT NULL,
  `CreditCardInfo_CreditCardNumber` varchar(25) DEFAULT NULL,
  `CreditCardInfo_ExpirationMonth` int(10) UNSIGNED DEFAULT NULL,
  `CreditCardInfo_ExpirationYear` int(10) UNSIGNED DEFAULT NULL,
  `CreditCardInfo_NameOnCard` varchar(41) DEFAULT NULL,
  `CreditCardInfo_CreditCardAddress` varchar(41) DEFAULT NULL,
  `CreditCardInfo_CreditCardPostalCode` varchar(41) DEFAULT NULL,
  `JobStatus` varchar(40) DEFAULT NULL,
  `JobStartDate` date DEFAULT NULL,
  `JobProjectedEndDate` date DEFAULT NULL,
  `JobEndDate` date DEFAULT NULL,
  `JobDesc` varchar(99) DEFAULT NULL,
  `JobType_ListID` varchar(40) DEFAULT NULL,
  `JobType_FullName` varchar(255) DEFAULT NULL,
  `Notes` text,
  `PriceLevel_ListID` varchar(40) DEFAULT NULL,
  `PriceLevel_FullName` varchar(255) DEFAULT NULL,
  `qbsql_discov_datetime` datetime DEFAULT NULL,
  `qbsql_resync_datetime` datetime DEFAULT NULL,
  `qbsql_modify_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `qbsql_last_hash` varchar(40) DEFAULT NULL,
  `qbsql_last_qbxml` text,
  `qbsql_last_errnum` varchar(32) DEFAULT NULL,
  `qbsql_last_errmsg` varchar(255) DEFAULT NULL,
  `qbsql_enqueue_datetime` datetime DEFAULT NULL,
  `qbsql_dequeue_datetime` datetime DEFAULT NULL,
  `qbsql_audit_amount` decimal(10,0) DEFAULT NULL,
  `qbsql_audit_modified` datetime DEFAULT NULL,
  `qbsql_to_sync` tinyint(1) DEFAULT '0',
  `qbsql_to_delete` tinyint(1) DEFAULT '0',
  `qbsql_to_skip` tinyint(1) DEFAULT '0',
  `qbsql_to_void` tinyint(1) DEFAULT '0',
  `qbsql_flag_deleted` tinyint(1) DEFAULT '0',
  `qbsql_flag_skipped` tinyint(1) DEFAULT '0',
  `qbsql_flag_voided` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qb_customermsg`
--

DROP TABLE IF EXISTS `qb_customermsg`;
CREATE TABLE `qb_customermsg` (
  `qbsql_id` int(10) UNSIGNED NOT NULL,
  `qbsql_username_id` int(10) UNSIGNED DEFAULT NULL,
  `qbsql_external_id` int(10) UNSIGNED DEFAULT NULL,
  `ListID` varchar(40) DEFAULT NULL,
  `TimeCreated` datetime DEFAULT NULL,
  `TimeModified` datetime DEFAULT NULL,
  `EditSequence` text,
  `Name` varchar(101) DEFAULT NULL,
  `IsActive` tinyint(1) DEFAULT '0',
  `qbsql_discov_datetime` datetime DEFAULT NULL,
  `qbsql_resync_datetime` datetime DEFAULT NULL,
  `qbsql_modify_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `qbsql_last_hash` varchar(40) DEFAULT NULL,
  `qbsql_last_qbxml` text,
  `qbsql_last_errnum` varchar(32) DEFAULT NULL,
  `qbsql_last_errmsg` varchar(255) DEFAULT NULL,
  `qbsql_enqueue_datetime` datetime DEFAULT NULL,
  `qbsql_dequeue_datetime` datetime DEFAULT NULL,
  `qbsql_audit_amount` decimal(10,0) DEFAULT NULL,
  `qbsql_audit_modified` datetime DEFAULT NULL,
  `qbsql_to_sync` tinyint(1) DEFAULT '0',
  `qbsql_to_delete` tinyint(1) DEFAULT '0',
  `qbsql_to_skip` tinyint(1) DEFAULT '0',
  `qbsql_to_void` tinyint(1) DEFAULT '0',
  `qbsql_flag_deleted` tinyint(1) DEFAULT '0',
  `qbsql_flag_skipped` tinyint(1) DEFAULT '0',
  `qbsql_flag_voided` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qb_customertype`
--

DROP TABLE IF EXISTS `qb_customertype`;
CREATE TABLE `qb_customertype` (
  `qbsql_id` int(10) UNSIGNED NOT NULL,
  `qbsql_username_id` int(10) UNSIGNED DEFAULT NULL,
  `qbsql_external_id` int(10) UNSIGNED DEFAULT NULL,
  `ListID` varchar(40) DEFAULT NULL,
  `TimeCreated` datetime DEFAULT NULL,
  `TimeModified` datetime DEFAULT NULL,
  `EditSequence` text,
  `Name` text,
  `FullName` varchar(255) DEFAULT NULL,
  `IsActive` tinyint(1) DEFAULT '0',
  `Parent_ListID` varchar(40) DEFAULT NULL,
  `Parent_FullName` varchar(255) DEFAULT NULL,
  `Sublevel` int(10) UNSIGNED DEFAULT '0',
  `qbsql_discov_datetime` datetime DEFAULT NULL,
  `qbsql_resync_datetime` datetime DEFAULT NULL,
  `qbsql_modify_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `qbsql_last_hash` varchar(40) DEFAULT NULL,
  `qbsql_last_qbxml` text,
  `qbsql_last_errnum` varchar(32) DEFAULT NULL,
  `qbsql_last_errmsg` varchar(255) DEFAULT NULL,
  `qbsql_enqueue_datetime` datetime DEFAULT NULL,
  `qbsql_dequeue_datetime` datetime DEFAULT NULL,
  `qbsql_audit_amount` decimal(10,0) DEFAULT NULL,
  `qbsql_audit_modified` datetime DEFAULT NULL,
  `qbsql_to_sync` tinyint(1) DEFAULT '0',
  `qbsql_to_delete` tinyint(1) DEFAULT '0',
  `qbsql_to_skip` tinyint(1) DEFAULT '0',
  `qbsql_to_void` tinyint(1) DEFAULT '0',
  `qbsql_flag_deleted` tinyint(1) DEFAULT '0',
  `qbsql_flag_skipped` tinyint(1) DEFAULT '0',
  `qbsql_flag_voided` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qb_dataext`
--

DROP TABLE IF EXISTS `qb_dataext`;
CREATE TABLE `qb_dataext` (
  `qbsql_id` int(10) UNSIGNED NOT NULL,
  `qbsql_username_id` int(10) UNSIGNED DEFAULT NULL,
  `qbsql_external_id` int(10) UNSIGNED DEFAULT NULL,
  `OwnerID` text,
  `DataExtName` varchar(31) DEFAULT NULL,
  `DataExtType` varchar(40) DEFAULT NULL,
  `DataExtValue` text,
  `EntityType` text,
  `TxnType` text,
  `Entity_ListID` varchar(40) DEFAULT NULL,
  `Txn_TxnID` varchar(40) DEFAULT NULL,
  `qbsql_discov_datetime` datetime DEFAULT NULL,
  `qbsql_resync_datetime` datetime DEFAULT NULL,
  `qbsql_modify_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `qbsql_last_hash` varchar(40) DEFAULT NULL,
  `qbsql_last_qbxml` text,
  `qbsql_last_errnum` varchar(32) DEFAULT NULL,
  `qbsql_last_errmsg` varchar(255) DEFAULT NULL,
  `qbsql_enqueue_datetime` datetime DEFAULT NULL,
  `qbsql_dequeue_datetime` datetime DEFAULT NULL,
  `qbsql_audit_amount` decimal(10,0) DEFAULT NULL,
  `qbsql_audit_modified` datetime DEFAULT NULL,
  `qbsql_to_sync` tinyint(1) DEFAULT '0',
  `qbsql_to_delete` tinyint(1) DEFAULT '0',
  `qbsql_to_skip` tinyint(1) DEFAULT '0',
  `qbsql_to_void` tinyint(1) DEFAULT '0',
  `qbsql_flag_deleted` tinyint(1) DEFAULT '0',
  `qbsql_flag_skipped` tinyint(1) DEFAULT '0',
  `qbsql_flag_voided` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qb_dataextdef`
--

DROP TABLE IF EXISTS `qb_dataextdef`;
CREATE TABLE `qb_dataextdef` (
  `qbsql_id` int(10) UNSIGNED NOT NULL,
  `qbsql_username_id` int(10) UNSIGNED DEFAULT NULL,
  `qbsql_external_id` int(10) UNSIGNED DEFAULT NULL,
  `OwnerID` text,
  `DataExtName` text,
  `DataExtType` varchar(40) DEFAULT NULL,
  `qbsql_discov_datetime` datetime DEFAULT NULL,
  `qbsql_resync_datetime` datetime DEFAULT NULL,
  `qbsql_modify_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `qbsql_last_hash` varchar(40) DEFAULT NULL,
  `qbsql_last_qbxml` text,
  `qbsql_last_errnum` varchar(32) DEFAULT NULL,
  `qbsql_last_errmsg` varchar(255) DEFAULT NULL,
  `qbsql_enqueue_datetime` datetime DEFAULT NULL,
  `qbsql_dequeue_datetime` datetime DEFAULT NULL,
  `qbsql_audit_amount` decimal(10,0) DEFAULT NULL,
  `qbsql_audit_modified` datetime DEFAULT NULL,
  `qbsql_to_sync` tinyint(1) DEFAULT '0',
  `qbsql_to_delete` tinyint(1) DEFAULT '0',
  `qbsql_to_skip` tinyint(1) DEFAULT '0',
  `qbsql_to_void` tinyint(1) DEFAULT '0',
  `qbsql_flag_deleted` tinyint(1) DEFAULT '0',
  `qbsql_flag_skipped` tinyint(1) DEFAULT '0',
  `qbsql_flag_voided` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qb_dataextdef_assigntoobject`
--

DROP TABLE IF EXISTS `qb_dataextdef_assigntoobject`;
CREATE TABLE `qb_dataextdef_assigntoobject` (
  `qbsql_id` int(10) UNSIGNED NOT NULL,
  `qbsql_username_id` int(10) UNSIGNED DEFAULT NULL,
  `qbsql_external_id` int(10) UNSIGNED DEFAULT NULL,
  `AssignToObject` varchar(40) DEFAULT NULL,
  `DataExtDef_OwnerID` varchar(40) DEFAULT NULL,
  `DataExtDef_DataExtName` varchar(40) DEFAULT NULL,
  `qbsql_discov_datetime` datetime DEFAULT NULL,
  `qbsql_resync_datetime` datetime DEFAULT NULL,
  `qbsql_modify_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `qbsql_last_hash` varchar(40) DEFAULT NULL,
  `qbsql_last_qbxml` text,
  `qbsql_last_errnum` varchar(32) DEFAULT NULL,
  `qbsql_last_errmsg` varchar(255) DEFAULT NULL,
  `qbsql_enqueue_datetime` datetime DEFAULT NULL,
  `qbsql_dequeue_datetime` datetime DEFAULT NULL,
  `qbsql_audit_amount` decimal(10,0) DEFAULT NULL,
  `qbsql_audit_modified` datetime DEFAULT NULL,
  `qbsql_to_sync` tinyint(1) DEFAULT '0',
  `qbsql_to_delete` tinyint(1) DEFAULT '0',
  `qbsql_to_skip` tinyint(1) DEFAULT '0',
  `qbsql_to_void` tinyint(1) DEFAULT '0',
  `qbsql_flag_deleted` tinyint(1) DEFAULT '0',
  `qbsql_flag_skipped` tinyint(1) DEFAULT '0',
  `qbsql_flag_voided` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qb_datedriventerms`
--

DROP TABLE IF EXISTS `qb_datedriventerms`;
CREATE TABLE `qb_datedriventerms` (
  `qbsql_id` int(10) UNSIGNED NOT NULL,
  `qbsql_username_id` int(10) UNSIGNED DEFAULT NULL,
  `qbsql_external_id` int(10) UNSIGNED DEFAULT NULL,
  `ListID` varchar(40) DEFAULT NULL,
  `TimeCreated` datetime DEFAULT NULL,
  `TimeModified` datetime DEFAULT NULL,
  `EditSequence` text,
  `Name` text,
  `IsActive` tinyint(1) DEFAULT '0',
  `DayOfMonthDue` int(10) UNSIGNED DEFAULT '0',
  `DueNextMonthDays` int(10) UNSIGNED DEFAULT '0',
  `DiscountDayOfMonth` int(10) UNSIGNED DEFAULT '0',
  `DiscountPct` decimal(12,5) DEFAULT NULL,
  `qbsql_discov_datetime` datetime DEFAULT NULL,
  `qbsql_resync_datetime` datetime DEFAULT NULL,
  `qbsql_modify_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `qbsql_last_hash` varchar(40) DEFAULT NULL,
  `qbsql_last_qbxml` text,
  `qbsql_last_errnum` varchar(32) DEFAULT NULL,
  `qbsql_last_errmsg` varchar(255) DEFAULT NULL,
  `qbsql_enqueue_datetime` datetime DEFAULT NULL,
  `qbsql_dequeue_datetime` datetime DEFAULT NULL,
  `qbsql_audit_amount` decimal(10,0) DEFAULT NULL,
  `qbsql_audit_modified` datetime DEFAULT NULL,
  `qbsql_to_sync` tinyint(1) DEFAULT '0',
  `qbsql_to_delete` tinyint(1) DEFAULT '0',
  `qbsql_to_skip` tinyint(1) DEFAULT '0',
  `qbsql_to_void` tinyint(1) DEFAULT '0',
  `qbsql_flag_deleted` tinyint(1) DEFAULT '0',
  `qbsql_flag_skipped` tinyint(1) DEFAULT '0',
  `qbsql_flag_voided` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qb_deposit`
--

DROP TABLE IF EXISTS `qb_deposit`;
CREATE TABLE `qb_deposit` (
  `qbsql_id` int(10) UNSIGNED NOT NULL,
  `qbsql_username_id` int(10) UNSIGNED DEFAULT NULL,
  `qbsql_external_id` int(10) UNSIGNED DEFAULT NULL,
  `TxnID` varchar(40) DEFAULT NULL,
  `TimeCreated` datetime DEFAULT NULL,
  `TimeModified` datetime DEFAULT NULL,
  `EditSequence` text,
  `TxnNumber` int(10) UNSIGNED DEFAULT '0',
  `TxnDate` date DEFAULT NULL,
  `DepositToAccount_ListID` varchar(40) DEFAULT NULL,
  `DepositToAccount_FullName` varchar(255) DEFAULT NULL,
  `Memo` text,
  `DepositTotal` decimal(10,2) DEFAULT NULL,
  `CashBackInfo_TxnLineID` varchar(40) DEFAULT NULL,
  `CashBackInfo_Account_ListID` varchar(40) DEFAULT NULL,
  `CashBackInfo_Account_FullName` varchar(255) DEFAULT NULL,
  `CashBackInfo_Memo` text,
  `CashBackInfo_Amount` decimal(10,2) DEFAULT NULL,
  `qbsql_discov_datetime` datetime DEFAULT NULL,
  `qbsql_resync_datetime` datetime DEFAULT NULL,
  `qbsql_modify_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `qbsql_last_hash` varchar(40) DEFAULT NULL,
  `qbsql_last_qbxml` text,
  `qbsql_last_errnum` varchar(32) DEFAULT NULL,
  `qbsql_last_errmsg` varchar(255) DEFAULT NULL,
  `qbsql_enqueue_datetime` datetime DEFAULT NULL,
  `qbsql_dequeue_datetime` datetime DEFAULT NULL,
  `qbsql_audit_amount` decimal(10,0) DEFAULT NULL,
  `qbsql_audit_modified` datetime DEFAULT NULL,
  `qbsql_to_sync` tinyint(1) DEFAULT '0',
  `qbsql_to_delete` tinyint(1) DEFAULT '0',
  `qbsql_to_skip` tinyint(1) DEFAULT '0',
  `qbsql_to_void` tinyint(1) DEFAULT '0',
  `qbsql_flag_deleted` tinyint(1) DEFAULT '0',
  `qbsql_flag_skipped` tinyint(1) DEFAULT '0',
  `qbsql_flag_voided` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qb_deposit_depositline`
--

DROP TABLE IF EXISTS `qb_deposit_depositline`;
CREATE TABLE `qb_deposit_depositline` (
  `qbsql_id` int(10) UNSIGNED NOT NULL,
  `qbsql_username_id` int(10) UNSIGNED DEFAULT NULL,
  `qbsql_external_id` int(10) UNSIGNED DEFAULT NULL,
  `Deposit_TxnID` varchar(40) DEFAULT NULL,
  `SortOrder` int(10) UNSIGNED DEFAULT '0',
  `TxnType` varchar(40) DEFAULT NULL,
  `TxnID` varchar(40) DEFAULT NULL,
  `TxnLineID` varchar(40) DEFAULT NULL,
  `PaymentTxnLineID` varchar(40) DEFAULT NULL,
  `Entity_ListID` varchar(40) DEFAULT NULL,
  `Entity_FullName` varchar(255) DEFAULT NULL,
  `Account_ListID` varchar(40) DEFAULT NULL,
  `Account_FullName` varchar(255) DEFAULT NULL,
  `Memo` text,
  `CheckNumber` text,
  `PaymentMethod_ListID` varchar(40) DEFAULT NULL,
  `PaymentMethod_FullName` varchar(255) DEFAULT NULL,
  `Class_ListID` varchar(40) DEFAULT NULL,
  `Class_FullName` varchar(255) DEFAULT NULL,
  `Amount` decimal(10,2) DEFAULT NULL,
  `qbsql_discov_datetime` datetime DEFAULT NULL,
  `qbsql_resync_datetime` datetime DEFAULT NULL,
  `qbsql_modify_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `qbsql_last_hash` varchar(40) DEFAULT NULL,
  `qbsql_last_qbxml` text,
  `qbsql_last_errnum` varchar(32) DEFAULT NULL,
  `qbsql_last_errmsg` varchar(255) DEFAULT NULL,
  `qbsql_enqueue_datetime` datetime DEFAULT NULL,
  `qbsql_dequeue_datetime` datetime DEFAULT NULL,
  `qbsql_audit_amount` decimal(10,0) DEFAULT NULL,
  `qbsql_audit_modified` datetime DEFAULT NULL,
  `qbsql_to_sync` tinyint(1) DEFAULT '0',
  `qbsql_to_delete` tinyint(1) DEFAULT '0',
  `qbsql_to_skip` tinyint(1) DEFAULT '0',
  `qbsql_to_void` tinyint(1) DEFAULT '0',
  `qbsql_flag_deleted` tinyint(1) DEFAULT '0',
  `qbsql_flag_skipped` tinyint(1) DEFAULT '0',
  `qbsql_flag_voided` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qb_employee`
--

DROP TABLE IF EXISTS `qb_employee`;
CREATE TABLE `qb_employee` (
  `qbsql_id` int(10) UNSIGNED NOT NULL,
  `qbsql_username_id` int(10) UNSIGNED DEFAULT NULL,
  `qbsql_external_id` int(10) UNSIGNED DEFAULT NULL,
  `ListID` varchar(40) DEFAULT NULL,
  `TimeCreated` datetime DEFAULT NULL,
  `TimeModified` datetime DEFAULT NULL,
  `EditSequence` text,
  `Name` text,
  `IsActive` tinyint(1) DEFAULT '0',
  `Salutation` varchar(15) DEFAULT NULL,
  `FirstName` varchar(25) DEFAULT NULL,
  `MiddleName` varchar(5) DEFAULT NULL,
  `LastName` varchar(25) DEFAULT NULL,
  `EmployeeAddress_Addr1` varchar(41) DEFAULT NULL,
  `EmployeeAddress_Addr2` varchar(41) DEFAULT NULL,
  `EmployeeAddress_City` varchar(31) DEFAULT NULL,
  `EmployeeAddress_State` varchar(21) DEFAULT NULL,
  `EmployeeAddress_PostalCode` varchar(13) DEFAULT NULL,
  `PrintAs` varchar(41) DEFAULT NULL,
  `Phone` varchar(21) DEFAULT NULL,
  `Mobile` varchar(21) DEFAULT NULL,
  `Pager` varchar(21) DEFAULT NULL,
  `PagerPIN` varchar(10) DEFAULT NULL,
  `AltPhone` varchar(21) DEFAULT NULL,
  `Fax` varchar(21) DEFAULT NULL,
  `SSN` varchar(15) DEFAULT NULL,
  `Email` text,
  `EmployeeType` varchar(40) DEFAULT NULL,
  `Gender` varchar(40) DEFAULT NULL,
  `HiredDate` date DEFAULT NULL,
  `ReleasedDate` date DEFAULT NULL,
  `BirthDate` date DEFAULT NULL,
  `AccountNumber` varchar(99) DEFAULT NULL,
  `Notes` text,
  `BillingRate_ListID` varchar(40) DEFAULT NULL,
  `BillingRate_FullName` varchar(255) DEFAULT NULL,
  `EmployeePayrollInfo_PayPeriod` varchar(40) DEFAULT NULL,
  `EmployeePayrollInfo_Class_ListID` varchar(40) DEFAULT NULL,
  `EmployeePayrollInfo_Class_FullName` varchar(255) DEFAULT NULL,
  `EmployeePayrollInfo_ClearEarnings` tinyint(1) DEFAULT NULL,
  `EmployeePayrollInfo_IsUsingTimeDataToCreatePaychecks` tinyint(1) DEFAULT NULL,
  `EmployeePayrollInfo_UseTimeDataToCreatePaychecks` varchar(40) DEFAULT NULL,
  `EmployeePayrollInfo_SickHours_HoursAvailable` text,
  `EmployeePayrollInfo_SickHours_AccrualPeriod` varchar(40) DEFAULT NULL,
  `EmployeePayrollInfo_SickHours_HoursAccrued` text,
  `EmployeePayrollInfo_SickHours_MaximumHours` text,
  `EmployeePayrollInfo_SickHours_IsResettingHoursEachNewYear` tinyint(1) DEFAULT NULL,
  `EmployeePayrollInfo_SickHours_HoursUsed` text,
  `EmployeePayrollInfo_SickHours_AccrualStartDate` date DEFAULT NULL,
  `EmployeePayrollInfo_VacationHours_HoursAvailable` text,
  `EmployeePayrollInfo_VacationHours_AccrualPeriod` varchar(40) DEFAULT NULL,
  `EmployeePayrollInfo_VacationHours_HoursAccrued` text,
  `EmployeePayrollInfo_VacationHours_MaximumHours` text,
  `EmployeePayrollInfo_VacationHours_IsResettingHoursEachNewYear` tinyint(1) DEFAULT NULL,
  `EmployeePayrollInfo_VacationHours_HoursUsed` text,
  `EmployeePayrollInfo_VacationHours_AccrualStartDate` date DEFAULT NULL,
  `qbsql_discov_datetime` datetime DEFAULT NULL,
  `qbsql_resync_datetime` datetime DEFAULT NULL,
  `qbsql_modify_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `qbsql_last_hash` varchar(40) DEFAULT NULL,
  `qbsql_last_qbxml` text,
  `qbsql_last_errnum` varchar(32) DEFAULT NULL,
  `qbsql_last_errmsg` varchar(255) DEFAULT NULL,
  `qbsql_enqueue_datetime` datetime DEFAULT NULL,
  `qbsql_dequeue_datetime` datetime DEFAULT NULL,
  `qbsql_audit_amount` decimal(10,0) DEFAULT NULL,
  `qbsql_audit_modified` datetime DEFAULT NULL,
  `qbsql_to_sync` tinyint(1) DEFAULT '0',
  `qbsql_to_delete` tinyint(1) DEFAULT '0',
  `qbsql_to_skip` tinyint(1) DEFAULT '0',
  `qbsql_to_void` tinyint(1) DEFAULT '0',
  `qbsql_flag_deleted` tinyint(1) DEFAULT '0',
  `qbsql_flag_skipped` tinyint(1) DEFAULT '0',
  `qbsql_flag_voided` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qb_employee_earnings`
--

DROP TABLE IF EXISTS `qb_employee_earnings`;
CREATE TABLE `qb_employee_earnings` (
  `qbsql_id` int(10) UNSIGNED NOT NULL,
  `qbsql_username_id` int(10) UNSIGNED DEFAULT NULL,
  `qbsql_external_id` int(10) UNSIGNED DEFAULT NULL,
  `Employee_ListID` varchar(40) DEFAULT NULL,
  `PayrollItemWage_ListID` varchar(40) DEFAULT NULL,
  `PayrollItemWage_FullName` varchar(255) DEFAULT NULL,
  `Rate` decimal(13,5) DEFAULT NULL,
  `RatePercent` decimal(12,5) DEFAULT NULL,
  `qbsql_discov_datetime` datetime DEFAULT NULL,
  `qbsql_resync_datetime` datetime DEFAULT NULL,
  `qbsql_modify_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `qbsql_last_hash` varchar(40) DEFAULT NULL,
  `qbsql_last_qbxml` text,
  `qbsql_last_errnum` varchar(32) DEFAULT NULL,
  `qbsql_last_errmsg` varchar(255) DEFAULT NULL,
  `qbsql_enqueue_datetime` datetime DEFAULT NULL,
  `qbsql_dequeue_datetime` datetime DEFAULT NULL,
  `qbsql_audit_amount` decimal(10,0) DEFAULT NULL,
  `qbsql_audit_modified` datetime DEFAULT NULL,
  `qbsql_to_sync` tinyint(1) DEFAULT '0',
  `qbsql_to_delete` tinyint(1) DEFAULT '0',
  `qbsql_to_skip` tinyint(1) DEFAULT '0',
  `qbsql_to_void` tinyint(1) DEFAULT '0',
  `qbsql_flag_deleted` tinyint(1) DEFAULT '0',
  `qbsql_flag_skipped` tinyint(1) DEFAULT '0',
  `qbsql_flag_voided` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qb_estimate`
--

DROP TABLE IF EXISTS `qb_estimate`;
CREATE TABLE `qb_estimate` (
  `qbsql_id` int(10) UNSIGNED NOT NULL,
  `qbsql_username_id` int(10) UNSIGNED DEFAULT NULL,
  `qbsql_external_id` int(10) UNSIGNED DEFAULT NULL,
  `TxnID` varchar(40) DEFAULT NULL,
  `TimeCreated` datetime DEFAULT NULL,
  `TimeModified` datetime DEFAULT NULL,
  `EditSequence` text,
  `TxnNumber` int(10) UNSIGNED DEFAULT '0',
  `Customer_ListID` varchar(40) DEFAULT NULL,
  `Customer_FullName` varchar(255) DEFAULT NULL,
  `Class_ListID` varchar(40) DEFAULT NULL,
  `Class_FullName` varchar(255) DEFAULT NULL,
  `Template_ListID` varchar(40) DEFAULT NULL,
  `Template_FullName` varchar(255) DEFAULT NULL,
  `TxnDate` date DEFAULT NULL,
  `RefNumber` varchar(11) DEFAULT NULL,
  `BillAddress_Addr1` varchar(41) DEFAULT NULL,
  `BillAddress_Addr2` varchar(41) DEFAULT NULL,
  `BillAddress_Addr3` varchar(41) DEFAULT NULL,
  `BillAddress_Addr4` varchar(41) DEFAULT NULL,
  `BillAddress_Addr5` varchar(41) DEFAULT NULL,
  `BillAddress_City` varchar(31) DEFAULT NULL,
  `BillAddress_State` varchar(21) DEFAULT NULL,
  `BillAddress_PostalCode` varchar(13) DEFAULT NULL,
  `BillAddress_Country` varchar(31) DEFAULT NULL,
  `BillAddress_Note` varchar(41) DEFAULT NULL,
  `BillAddressBlock_Addr1` text,
  `BillAddressBlock_Addr2` text,
  `BillAddressBlock_Addr3` text,
  `BillAddressBlock_Addr4` text,
  `BillAddressBlock_Addr5` text,
  `ShipAddress_Addr1` varchar(41) DEFAULT NULL,
  `ShipAddress_Addr2` varchar(41) DEFAULT NULL,
  `ShipAddress_Addr3` varchar(41) DEFAULT NULL,
  `ShipAddress_Addr4` varchar(41) DEFAULT NULL,
  `ShipAddress_Addr5` varchar(41) DEFAULT NULL,
  `ShipAddress_City` varchar(31) DEFAULT NULL,
  `ShipAddress_State` varchar(21) DEFAULT NULL,
  `ShipAddress_PostalCode` varchar(13) DEFAULT NULL,
  `ShipAddress_Country` varchar(31) DEFAULT NULL,
  `ShipAddress_Note` varchar(41) DEFAULT NULL,
  `ShipAddressBlock_Addr1` text,
  `ShipAddressBlock_Addr2` text,
  `ShipAddressBlock_Addr3` text,
  `ShipAddressBlock_Addr4` text,
  `ShipAddressBlock_Addr5` text,
  `IsActive` tinyint(1) DEFAULT '0',
  `PONumber` varchar(25) DEFAULT NULL,
  `Terms_ListID` varchar(40) DEFAULT NULL,
  `Terms_FullName` varchar(255) DEFAULT NULL,
  `DueDate` date DEFAULT NULL,
  `SalesRep_ListID` varchar(40) DEFAULT NULL,
  `SalesRep_FullName` varchar(255) DEFAULT NULL,
  `FOB` varchar(13) DEFAULT NULL,
  `Subtotal` decimal(10,2) DEFAULT NULL,
  `ItemSalesTax_ListID` varchar(40) DEFAULT NULL,
  `ItemSalesTax_FullName` varchar(255) DEFAULT NULL,
  `SalesTaxPercentage` decimal(12,5) DEFAULT NULL,
  `SalesTaxTotal` decimal(10,2) DEFAULT NULL,
  `TotalAmount` decimal(10,2) DEFAULT NULL,
  `Currency_ListID` varchar(40) DEFAULT NULL,
  `Currency_FullName` varchar(255) DEFAULT NULL,
  `ExchangeRate` text,
  `TotalAmountInHomeCurrency` decimal(10,2) DEFAULT NULL,
  `Memo` text,
  `CustomerMsg_ListID` varchar(40) DEFAULT NULL,
  `CustomerMsg_FullName` varchar(255) DEFAULT NULL,
  `IsToBeEmailed` tinyint(1) DEFAULT NULL,
  `CustomerSalesTaxCode_ListID` varchar(40) DEFAULT NULL,
  `CustomerSalesTaxCode_FullName` varchar(255) DEFAULT NULL,
  `Other` varchar(29) DEFAULT NULL,
  `qbsql_discov_datetime` datetime DEFAULT NULL,
  `qbsql_resync_datetime` datetime DEFAULT NULL,
  `qbsql_modify_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `qbsql_last_hash` varchar(40) DEFAULT NULL,
  `qbsql_last_qbxml` text,
  `qbsql_last_errnum` varchar(32) DEFAULT NULL,
  `qbsql_last_errmsg` varchar(255) DEFAULT NULL,
  `qbsql_enqueue_datetime` datetime DEFAULT NULL,
  `qbsql_dequeue_datetime` datetime DEFAULT NULL,
  `qbsql_audit_amount` decimal(10,0) DEFAULT NULL,
  `qbsql_audit_modified` datetime DEFAULT NULL,
  `qbsql_to_sync` tinyint(1) DEFAULT '0',
  `qbsql_to_delete` tinyint(1) DEFAULT '0',
  `qbsql_to_skip` tinyint(1) DEFAULT '0',
  `qbsql_to_void` tinyint(1) DEFAULT '0',
  `qbsql_flag_deleted` tinyint(1) DEFAULT '0',
  `qbsql_flag_skipped` tinyint(1) DEFAULT '0',
  `qbsql_flag_voided` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qb_estimate_estimateline`
--

DROP TABLE IF EXISTS `qb_estimate_estimateline`;
CREATE TABLE `qb_estimate_estimateline` (
  `qbsql_id` int(10) UNSIGNED NOT NULL,
  `qbsql_username_id` int(10) UNSIGNED DEFAULT NULL,
  `qbsql_external_id` int(10) UNSIGNED DEFAULT NULL,
  `Estimate_TxnID` varchar(40) DEFAULT NULL,
  `SortOrder` int(10) UNSIGNED DEFAULT '0',
  `TxnLineID` varchar(40) DEFAULT NULL,
  `Item_ListID` varchar(40) DEFAULT NULL,
  `Item_FullName` varchar(255) DEFAULT NULL,
  `Descrip` text,
  `Quantity` decimal(12,5) DEFAULT NULL,
  `UnitOfMeasure` text,
  `OverrideUOMSet_ListID` varchar(40) DEFAULT NULL,
  `OverrideUOMSet_FullName` varchar(255) DEFAULT NULL,
  `Rate` decimal(13,5) DEFAULT NULL,
  `RatePercent` decimal(12,5) DEFAULT NULL,
  `Class_ListID` varchar(40) DEFAULT NULL,
  `Class_FullName` varchar(255) DEFAULT NULL,
  `Amount` decimal(10,2) DEFAULT NULL,
  `InventorySite_ListID` varchar(40) DEFAULT NULL,
  `InventorySite_FullName` varchar(255) DEFAULT NULL,
  `SalesTaxCode_ListID` varchar(40) DEFAULT NULL,
  `SalesTaxCode_FullName` varchar(255) DEFAULT NULL,
  `MarkupRate` decimal(13,5) DEFAULT NULL,
  `MarkupRatePercent` decimal(12,5) DEFAULT NULL,
  `Other1` text,
  `Other2` text,
  `qbsql_discov_datetime` datetime DEFAULT NULL,
  `qbsql_resync_datetime` datetime DEFAULT NULL,
  `qbsql_modify_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `qbsql_last_hash` varchar(40) DEFAULT NULL,
  `qbsql_last_qbxml` text,
  `qbsql_last_errnum` varchar(32) DEFAULT NULL,
  `qbsql_last_errmsg` varchar(255) DEFAULT NULL,
  `qbsql_enqueue_datetime` datetime DEFAULT NULL,
  `qbsql_dequeue_datetime` datetime DEFAULT NULL,
  `qbsql_audit_amount` decimal(10,0) DEFAULT NULL,
  `qbsql_audit_modified` datetime DEFAULT NULL,
  `qbsql_to_sync` tinyint(1) DEFAULT '0',
  `qbsql_to_delete` tinyint(1) DEFAULT '0',
  `qbsql_to_skip` tinyint(1) DEFAULT '0',
  `qbsql_to_void` tinyint(1) DEFAULT '0',
  `qbsql_flag_deleted` tinyint(1) DEFAULT '0',
  `qbsql_flag_skipped` tinyint(1) DEFAULT '0',
  `qbsql_flag_voided` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qb_estimate_estimatelinegroup`
--

DROP TABLE IF EXISTS `qb_estimate_estimatelinegroup`;
CREATE TABLE `qb_estimate_estimatelinegroup` (
  `qbsql_id` int(10) UNSIGNED NOT NULL,
  `qbsql_username_id` int(10) UNSIGNED DEFAULT NULL,
  `qbsql_external_id` int(10) UNSIGNED DEFAULT NULL,
  `Estimate_TxnID` varchar(40) DEFAULT NULL,
  `SortOrder` int(10) UNSIGNED DEFAULT '0',
  `TxnLineID` varchar(40) DEFAULT NULL,
  `ItemGroup_ListID` varchar(40) DEFAULT NULL,
  `ItemGroup_FullName` varchar(255) DEFAULT NULL,
  `Descrip` text,
  `Quantity` decimal(12,5) DEFAULT '0.00000',
  `UnitOfMeasure` text,
  `OverrideUOMSet_ListID` varchar(40) DEFAULT NULL,
  `OverrideUOMSet_FullName` varchar(255) DEFAULT NULL,
  `IsPrintItemsInGroup` tinyint(1) DEFAULT '0',
  `TotalAmount` decimal(10,2) DEFAULT NULL,
  `qbsql_discov_datetime` datetime DEFAULT NULL,
  `qbsql_resync_datetime` datetime DEFAULT NULL,
  `qbsql_modify_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `qbsql_last_hash` varchar(40) DEFAULT NULL,
  `qbsql_last_qbxml` text,
  `qbsql_last_errnum` varchar(32) DEFAULT NULL,
  `qbsql_last_errmsg` varchar(255) DEFAULT NULL,
  `qbsql_enqueue_datetime` datetime DEFAULT NULL,
  `qbsql_dequeue_datetime` datetime DEFAULT NULL,
  `qbsql_audit_amount` decimal(10,0) DEFAULT NULL,
  `qbsql_audit_modified` datetime DEFAULT NULL,
  `qbsql_to_sync` tinyint(1) DEFAULT '0',
  `qbsql_to_delete` tinyint(1) DEFAULT '0',
  `qbsql_to_skip` tinyint(1) DEFAULT '0',
  `qbsql_to_void` tinyint(1) DEFAULT '0',
  `qbsql_flag_deleted` tinyint(1) DEFAULT '0',
  `qbsql_flag_skipped` tinyint(1) DEFAULT '0',
  `qbsql_flag_voided` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qb_estimate_estimatelinegroup_estimateline`
--

DROP TABLE IF EXISTS `qb_estimate_estimatelinegroup_estimateline`;
CREATE TABLE `qb_estimate_estimatelinegroup_estimateline` (
  `qbsql_id` int(10) UNSIGNED NOT NULL,
  `qbsql_username_id` int(10) UNSIGNED DEFAULT NULL,
  `qbsql_external_id` int(10) UNSIGNED DEFAULT NULL,
  `Estimate_TxnID` varchar(40) DEFAULT NULL,
  `Estimate_EstimateLineGroup_TxnLineID` text,
  `SortOrder` int(10) UNSIGNED DEFAULT '0',
  `TxnLineID` varchar(40) DEFAULT NULL,
  `Item_ListID` varchar(40) DEFAULT NULL,
  `Item_FullName` varchar(255) DEFAULT NULL,
  `Descrip` text,
  `Quantity` decimal(12,5) DEFAULT '0.00000',
  `UnitOfMeasure` text,
  `OverrideUOMSet_ListID` varchar(40) DEFAULT NULL,
  `OverrideUOMSet_FullName` varchar(255) DEFAULT NULL,
  `Rate` decimal(13,5) DEFAULT NULL,
  `RatePercent` decimal(12,5) DEFAULT NULL,
  `Class_ListID` varchar(40) DEFAULT NULL,
  `Class_FullName` varchar(255) DEFAULT NULL,
  `Amount` decimal(10,2) DEFAULT NULL,
  `SalesTaxCode_ListID` varchar(40) DEFAULT NULL,
  `SalesTaxCode_FullName` varchar(255) DEFAULT NULL,
  `MarkupRate` decimal(13,5) DEFAULT NULL,
  `MarkupRatePercent` decimal(12,5) DEFAULT NULL,
  `Other1` text,
  `Other2` text,
  `qbsql_discov_datetime` datetime DEFAULT NULL,
  `qbsql_resync_datetime` datetime DEFAULT NULL,
  `qbsql_modify_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `qbsql_last_hash` varchar(40) DEFAULT NULL,
  `qbsql_last_qbxml` text,
  `qbsql_last_errnum` varchar(32) DEFAULT NULL,
  `qbsql_last_errmsg` varchar(255) DEFAULT NULL,
  `qbsql_enqueue_datetime` datetime DEFAULT NULL,
  `qbsql_dequeue_datetime` datetime DEFAULT NULL,
  `qbsql_audit_amount` decimal(10,0) DEFAULT NULL,
  `qbsql_audit_modified` datetime DEFAULT NULL,
  `qbsql_to_sync` tinyint(1) DEFAULT '0',
  `qbsql_to_delete` tinyint(1) DEFAULT '0',
  `qbsql_to_skip` tinyint(1) DEFAULT '0',
  `qbsql_to_void` tinyint(1) DEFAULT '0',
  `qbsql_flag_deleted` tinyint(1) DEFAULT '0',
  `qbsql_flag_skipped` tinyint(1) DEFAULT '0',
  `qbsql_flag_voided` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qb_estimate_linkedtxn`
--

DROP TABLE IF EXISTS `qb_estimate_linkedtxn`;
CREATE TABLE `qb_estimate_linkedtxn` (
  `qbsql_id` int(10) UNSIGNED NOT NULL,
  `qbsql_username_id` int(10) UNSIGNED DEFAULT NULL,
  `qbsql_external_id` int(10) UNSIGNED DEFAULT NULL,
  `FromTxnID` varchar(40) DEFAULT NULL,
  `Estimate_TxnID` varchar(40) DEFAULT NULL,
  `LinkType` text,
  `ToTxnID` varchar(40) DEFAULT NULL,
  `TxnType` varchar(40) DEFAULT NULL,
  `TxnDate` date DEFAULT NULL,
  `RefNumber` text,
  `Amount` decimal(10,2) DEFAULT NULL,
  `qbsql_discov_datetime` datetime DEFAULT NULL,
  `qbsql_resync_datetime` datetime DEFAULT NULL,
  `qbsql_modify_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `qbsql_last_hash` varchar(40) DEFAULT NULL,
  `qbsql_last_qbxml` text,
  `qbsql_last_errnum` varchar(32) DEFAULT NULL,
  `qbsql_last_errmsg` varchar(255) DEFAULT NULL,
  `qbsql_enqueue_datetime` datetime DEFAULT NULL,
  `qbsql_dequeue_datetime` datetime DEFAULT NULL,
  `qbsql_audit_amount` decimal(10,0) DEFAULT NULL,
  `qbsql_audit_modified` datetime DEFAULT NULL,
  `qbsql_to_sync` tinyint(1) DEFAULT '0',
  `qbsql_to_delete` tinyint(1) DEFAULT '0',
  `qbsql_to_skip` tinyint(1) DEFAULT '0',
  `qbsql_to_void` tinyint(1) DEFAULT '0',
  `qbsql_flag_deleted` tinyint(1) DEFAULT '0',
  `qbsql_flag_skipped` tinyint(1) DEFAULT '0',
  `qbsql_flag_voided` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qb_host`
--

DROP TABLE IF EXISTS `qb_host`;
CREATE TABLE `qb_host` (
  `qbsql_id` int(10) UNSIGNED NOT NULL,
  `qbsql_username_id` int(10) UNSIGNED DEFAULT NULL,
  `qbsql_external_id` int(10) UNSIGNED DEFAULT NULL,
  `ProductName` text,
  `MajorVersion` text,
  `MinorVersion` text,
  `Country` text,
  `SupportedQBXMLVersion` text,
  `IsAutomaticLogin` tinyint(1) DEFAULT '0',
  `QBFileMode` varchar(40) DEFAULT NULL,
  `ListMetaData` text,
  `qbsql_discov_datetime` datetime DEFAULT NULL,
  `qbsql_resync_datetime` datetime DEFAULT NULL,
  `qbsql_modify_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `qbsql_last_hash` varchar(40) DEFAULT NULL,
  `qbsql_last_qbxml` text,
  `qbsql_last_errnum` varchar(32) DEFAULT NULL,
  `qbsql_last_errmsg` varchar(255) DEFAULT NULL,
  `qbsql_enqueue_datetime` datetime DEFAULT NULL,
  `qbsql_dequeue_datetime` datetime DEFAULT NULL,
  `qbsql_audit_amount` decimal(10,0) DEFAULT NULL,
  `qbsql_audit_modified` datetime DEFAULT NULL,
  `qbsql_to_sync` tinyint(1) DEFAULT '0',
  `qbsql_to_delete` tinyint(1) DEFAULT '0',
  `qbsql_to_skip` tinyint(1) DEFAULT '0',
  `qbsql_to_void` tinyint(1) DEFAULT '0',
  `qbsql_flag_deleted` tinyint(1) DEFAULT '0',
  `qbsql_flag_skipped` tinyint(1) DEFAULT '0',
  `qbsql_flag_voided` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qb_inventoryadjustment`
--

DROP TABLE IF EXISTS `qb_inventoryadjustment`;
CREATE TABLE `qb_inventoryadjustment` (
  `qbsql_id` int(10) UNSIGNED NOT NULL,
  `qbsql_username_id` int(10) UNSIGNED DEFAULT NULL,
  `qbsql_external_id` int(10) UNSIGNED DEFAULT NULL,
  `TxnID` varchar(40) DEFAULT NULL,
  `TimeCreated` datetime DEFAULT NULL,
  `TimeModified` datetime DEFAULT NULL,
  `EditSequence` text,
  `TxnNumber` int(10) UNSIGNED DEFAULT '0',
  `Account_ListID` varchar(40) DEFAULT NULL,
  `Account_FullName` varchar(255) DEFAULT NULL,
  `TxnDate` date DEFAULT NULL,
  `RefNumber` varchar(11) DEFAULT NULL,
  `Customer_ListID` varchar(40) DEFAULT NULL,
  `Customer_FullName` varchar(255) DEFAULT NULL,
  `Class_ListID` varchar(40) DEFAULT NULL,
  `Class_FullName` varchar(255) DEFAULT NULL,
  `Memo` text,
  `qbsql_discov_datetime` datetime DEFAULT NULL,
  `qbsql_resync_datetime` datetime DEFAULT NULL,
  `qbsql_modify_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `qbsql_last_hash` varchar(40) DEFAULT NULL,
  `qbsql_last_qbxml` text,
  `qbsql_last_errnum` varchar(32) DEFAULT NULL,
  `qbsql_last_errmsg` varchar(255) DEFAULT NULL,
  `qbsql_enqueue_datetime` datetime DEFAULT NULL,
  `qbsql_dequeue_datetime` datetime DEFAULT NULL,
  `qbsql_audit_amount` decimal(10,0) DEFAULT NULL,
  `qbsql_audit_modified` datetime DEFAULT NULL,
  `qbsql_to_sync` tinyint(1) DEFAULT '0',
  `qbsql_to_delete` tinyint(1) DEFAULT '0',
  `qbsql_to_skip` tinyint(1) DEFAULT '0',
  `qbsql_to_void` tinyint(1) DEFAULT '0',
  `qbsql_flag_deleted` tinyint(1) DEFAULT '0',
  `qbsql_flag_skipped` tinyint(1) DEFAULT '0',
  `qbsql_flag_voided` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qb_inventoryadjustment_inventoryadjustmentline`
--

DROP TABLE IF EXISTS `qb_inventoryadjustment_inventoryadjustmentline`;
CREATE TABLE `qb_inventoryadjustment_inventoryadjustmentline` (
  `qbsql_id` int(10) UNSIGNED NOT NULL,
  `qbsql_username_id` int(10) UNSIGNED DEFAULT NULL,
  `qbsql_external_id` int(10) UNSIGNED DEFAULT NULL,
  `InventoryAdjustment_TxnID` varchar(40) DEFAULT NULL,
  `SortOrder` int(10) UNSIGNED DEFAULT '0',
  `TxnLineID` varchar(40) DEFAULT NULL,
  `Item_ListID` varchar(40) DEFAULT NULL,
  `Item_FullName` varchar(255) DEFAULT NULL,
  `QuantityDifference` decimal(12,5) DEFAULT '0.00000',
  `ValueDifference` decimal(10,2) DEFAULT NULL,
  `QuantityAdjustment_NewQuantity` decimal(12,5) DEFAULT NULL,
  `QuantityAdjustment_QuantityDifference` decimal(12,5) DEFAULT NULL,
  `ValueAdjustment_NewQuantity` decimal(12,5) DEFAULT NULL,
  `ValueAdjustment_QuantityDifference` decimal(12,5) DEFAULT NULL,
  `ValueAdjustment_NewValue` decimal(10,2) DEFAULT NULL,
  `ValueAdjustment_ValueDifference` decimal(10,2) DEFAULT NULL,
  `qbsql_discov_datetime` datetime DEFAULT NULL,
  `qbsql_resync_datetime` datetime DEFAULT NULL,
  `qbsql_modify_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `qbsql_last_hash` varchar(40) DEFAULT NULL,
  `qbsql_last_qbxml` text,
  `qbsql_last_errnum` varchar(32) DEFAULT NULL,
  `qbsql_last_errmsg` varchar(255) DEFAULT NULL,
  `qbsql_enqueue_datetime` datetime DEFAULT NULL,
  `qbsql_dequeue_datetime` datetime DEFAULT NULL,
  `qbsql_audit_amount` decimal(10,0) DEFAULT NULL,
  `qbsql_audit_modified` datetime DEFAULT NULL,
  `qbsql_to_sync` tinyint(1) DEFAULT '0',
  `qbsql_to_delete` tinyint(1) DEFAULT '0',
  `qbsql_to_skip` tinyint(1) DEFAULT '0',
  `qbsql_to_void` tinyint(1) DEFAULT '0',
  `qbsql_flag_deleted` tinyint(1) DEFAULT '0',
  `qbsql_flag_skipped` tinyint(1) DEFAULT '0',
  `qbsql_flag_voided` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qb_invoice`
--

DROP TABLE IF EXISTS `qb_invoice`;
CREATE TABLE `qb_invoice` (
  `qbsql_id` int(10) UNSIGNED NOT NULL,
  `qbsql_username_id` int(10) UNSIGNED DEFAULT NULL,
  `qbsql_external_id` int(10) UNSIGNED DEFAULT NULL,
  `TxnID` varchar(40) DEFAULT NULL,
  `TimeCreated` datetime DEFAULT NULL,
  `TimeModified` datetime DEFAULT NULL,
  `EditSequence` text,
  `TxnNumber` int(10) UNSIGNED DEFAULT '0',
  `Customer_ListID` varchar(40) DEFAULT NULL,
  `Customer_FullName` varchar(255) DEFAULT NULL,
  `Class_ListID` varchar(40) DEFAULT NULL,
  `Class_FullName` varchar(255) DEFAULT NULL,
  `ARAccount_ListID` varchar(40) DEFAULT NULL,
  `ARAccount_FullName` varchar(255) DEFAULT NULL,
  `Template_ListID` varchar(40) DEFAULT NULL,
  `Template_FullName` varchar(255) DEFAULT NULL,
  `TxnDate` date DEFAULT NULL,
  `RefNumber` varchar(11) DEFAULT NULL,
  `BillAddress_Addr1` varchar(41) DEFAULT NULL,
  `BillAddress_Addr2` varchar(41) DEFAULT NULL,
  `BillAddress_Addr3` varchar(41) DEFAULT NULL,
  `BillAddress_Addr4` varchar(41) DEFAULT NULL,
  `BillAddress_Addr5` varchar(41) DEFAULT NULL,
  `BillAddress_City` varchar(31) DEFAULT NULL,
  `BillAddress_State` varchar(21) DEFAULT NULL,
  `BillAddress_PostalCode` varchar(13) DEFAULT NULL,
  `BillAddress_Country` varchar(31) DEFAULT NULL,
  `BillAddress_Note` varchar(41) DEFAULT NULL,
  `BillAddressBlock_Addr1` text,
  `BillAddressBlock_Addr2` text,
  `BillAddressBlock_Addr3` text,
  `BillAddressBlock_Addr4` text,
  `BillAddressBlock_Addr5` text,
  `ShipAddress_Addr1` varchar(41) DEFAULT NULL,
  `ShipAddress_Addr2` varchar(41) DEFAULT NULL,
  `ShipAddress_Addr3` varchar(41) DEFAULT NULL,
  `ShipAddress_Addr4` varchar(41) DEFAULT NULL,
  `ShipAddress_Addr5` varchar(41) DEFAULT NULL,
  `ShipAddress_City` varchar(31) DEFAULT NULL,
  `ShipAddress_State` varchar(21) DEFAULT NULL,
  `ShipAddress_PostalCode` varchar(13) DEFAULT NULL,
  `ShipAddress_Country` varchar(31) DEFAULT NULL,
  `ShipAddress_Note` varchar(41) DEFAULT NULL,
  `ShipAddressBlock_Addr1` text,
  `ShipAddressBlock_Addr2` text,
  `ShipAddressBlock_Addr3` text,
  `ShipAddressBlock_Addr4` text,
  `ShipAddressBlock_Addr5` text,
  `IsPending` tinyint(1) DEFAULT NULL,
  `IsFinanceCharge` tinyint(1) DEFAULT NULL,
  `PONumber` varchar(25) DEFAULT NULL,
  `Terms_ListID` varchar(40) DEFAULT NULL,
  `Terms_FullName` varchar(255) DEFAULT NULL,
  `DueDate` date DEFAULT NULL,
  `SalesRep_ListID` varchar(40) DEFAULT NULL,
  `SalesRep_FullName` varchar(255) DEFAULT NULL,
  `FOB` varchar(13) DEFAULT NULL,
  `ShipDate` date DEFAULT NULL,
  `ShipMethod_ListID` varchar(40) DEFAULT NULL,
  `ShipMethod_FullName` varchar(255) DEFAULT NULL,
  `Subtotal` decimal(10,2) DEFAULT NULL,
  `ItemSalesTax_ListID` varchar(40) DEFAULT NULL,
  `ItemSalesTax_FullName` varchar(255) DEFAULT NULL,
  `SalesTaxPercentage` decimal(12,5) DEFAULT NULL,
  `SalesTaxTotal` decimal(10,2) DEFAULT NULL,
  `AppliedAmount` decimal(10,2) DEFAULT NULL,
  `BalanceRemaining` decimal(10,2) DEFAULT NULL,
  `Memo` text,
  `IsPaid` tinyint(1) DEFAULT NULL,
  `Currency_ListID` varchar(40) DEFAULT NULL,
  `Currency_FullName` varchar(255) DEFAULT NULL,
  `ExchangeRate` text,
  `BalanceRemainingInHomeCurrency` decimal(10,2) DEFAULT NULL,
  `CustomerMsg_ListID` varchar(40) DEFAULT NULL,
  `CustomerMsg_FullName` varchar(255) DEFAULT NULL,
  `IsToBePrinted` tinyint(1) DEFAULT NULL,
  `IsToBeEmailed` tinyint(1) DEFAULT NULL,
  `CustomerSalesTaxCode_ListID` varchar(40) DEFAULT NULL,
  `CustomerSalesTaxCode_FullName` varchar(255) DEFAULT NULL,
  `SuggestedDiscountAmount` decimal(10,2) DEFAULT NULL,
  `SuggestedDiscountDate` date DEFAULT NULL,
  `Other` varchar(29) DEFAULT NULL,
  `qbsql_discov_datetime` datetime DEFAULT NULL,
  `qbsql_resync_datetime` datetime DEFAULT NULL,
  `qbsql_modify_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `qbsql_last_hash` varchar(40) DEFAULT NULL,
  `qbsql_last_qbxml` text,
  `qbsql_last_errnum` varchar(32) DEFAULT NULL,
  `qbsql_last_errmsg` varchar(255) DEFAULT NULL,
  `qbsql_enqueue_datetime` datetime DEFAULT NULL,
  `qbsql_dequeue_datetime` datetime DEFAULT NULL,
  `qbsql_audit_amount` decimal(10,0) DEFAULT NULL,
  `qbsql_audit_modified` datetime DEFAULT NULL,
  `qbsql_to_sync` tinyint(1) DEFAULT '0',
  `qbsql_to_delete` tinyint(1) DEFAULT '0',
  `qbsql_to_skip` tinyint(1) DEFAULT '0',
  `qbsql_to_void` tinyint(1) DEFAULT '0',
  `qbsql_flag_deleted` tinyint(1) DEFAULT '0',
  `qbsql_flag_skipped` tinyint(1) DEFAULT '0',
  `qbsql_flag_voided` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qb_invoice_invoiceline`
--

DROP TABLE IF EXISTS `qb_invoice_invoiceline`;
CREATE TABLE `qb_invoice_invoiceline` (
  `qbsql_id` int(10) UNSIGNED NOT NULL,
  `qbsql_username_id` int(10) UNSIGNED DEFAULT NULL,
  `qbsql_external_id` int(10) UNSIGNED DEFAULT NULL,
  `Invoice_TxnID` varchar(40) DEFAULT NULL,
  `SortOrder` int(10) UNSIGNED DEFAULT '0',
  `TxnLineID` varchar(40) DEFAULT NULL,
  `Item_ListID` varchar(40) DEFAULT NULL,
  `Item_FullName` varchar(255) DEFAULT NULL,
  `Descrip` text,
  `Quantity` decimal(12,5) DEFAULT NULL,
  `UnitOfMeasure` text,
  `OverrideUOMSet_ListID` varchar(40) DEFAULT NULL,
  `OverrideUOMSet_FullName` varchar(255) DEFAULT NULL,
  `Rate` decimal(13,5) DEFAULT NULL,
  `RatePercent` decimal(12,5) DEFAULT NULL,
  `Class_ListID` varchar(40) DEFAULT NULL,
  `Class_FullName` varchar(255) DEFAULT NULL,
  `Amount` decimal(10,2) DEFAULT NULL,
  `InventorySite_ListID` varchar(40) DEFAULT NULL,
  `InventorySite_FullName` varchar(255) DEFAULT NULL,
  `SerialNumber` text,
  `LotNumber` text,
  `ServiceDate` date DEFAULT NULL,
  `SalesTaxCode_ListID` varchar(40) DEFAULT NULL,
  `SalesTaxCode_FullName` varchar(255) DEFAULT NULL,
  `Other1` text,
  `Other2` text,
  `qbsql_discov_datetime` datetime DEFAULT NULL,
  `qbsql_resync_datetime` datetime DEFAULT NULL,
  `qbsql_modify_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `qbsql_last_hash` varchar(40) DEFAULT NULL,
  `qbsql_last_qbxml` text,
  `qbsql_last_errnum` varchar(32) DEFAULT NULL,
  `qbsql_last_errmsg` varchar(255) DEFAULT NULL,
  `qbsql_enqueue_datetime` datetime DEFAULT NULL,
  `qbsql_dequeue_datetime` datetime DEFAULT NULL,
  `qbsql_audit_amount` decimal(10,0) DEFAULT NULL,
  `qbsql_audit_modified` datetime DEFAULT NULL,
  `qbsql_to_sync` tinyint(1) DEFAULT '0',
  `qbsql_to_delete` tinyint(1) DEFAULT '0',
  `qbsql_to_skip` tinyint(1) DEFAULT '0',
  `qbsql_to_void` tinyint(1) DEFAULT '0',
  `qbsql_flag_deleted` tinyint(1) DEFAULT '0',
  `qbsql_flag_skipped` tinyint(1) DEFAULT '0',
  `qbsql_flag_voided` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qb_invoice_invoicelinegroup`
--

DROP TABLE IF EXISTS `qb_invoice_invoicelinegroup`;
CREATE TABLE `qb_invoice_invoicelinegroup` (
  `qbsql_id` int(10) UNSIGNED NOT NULL,
  `qbsql_username_id` int(10) UNSIGNED DEFAULT NULL,
  `qbsql_external_id` int(10) UNSIGNED DEFAULT NULL,
  `Invoice_TxnID` varchar(40) DEFAULT NULL,
  `SortOrder` int(10) UNSIGNED DEFAULT '0',
  `TxnLineID` varchar(40) DEFAULT NULL,
  `ItemGroup_ListID` varchar(40) DEFAULT NULL,
  `ItemGroup_FullName` varchar(255) DEFAULT NULL,
  `Descrip` text,
  `Quantity` decimal(12,5) DEFAULT '0.00000',
  `UnitOfMeasure` text,
  `OverrideUOMSet_ListID` varchar(40) DEFAULT NULL,
  `OverrideUOMSet_FullName` varchar(255) DEFAULT NULL,
  `IsPrintItemsInGroup` tinyint(1) DEFAULT '0',
  `TotalAmount` decimal(10,2) DEFAULT NULL,
  `qbsql_discov_datetime` datetime DEFAULT NULL,
  `qbsql_resync_datetime` datetime DEFAULT NULL,
  `qbsql_modify_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `qbsql_last_hash` varchar(40) DEFAULT NULL,
  `qbsql_last_qbxml` text,
  `qbsql_last_errnum` varchar(32) DEFAULT NULL,
  `qbsql_last_errmsg` varchar(255) DEFAULT NULL,
  `qbsql_enqueue_datetime` datetime DEFAULT NULL,
  `qbsql_dequeue_datetime` datetime DEFAULT NULL,
  `qbsql_audit_amount` decimal(10,0) DEFAULT NULL,
  `qbsql_audit_modified` datetime DEFAULT NULL,
  `qbsql_to_sync` tinyint(1) DEFAULT '0',
  `qbsql_to_delete` tinyint(1) DEFAULT '0',
  `qbsql_to_skip` tinyint(1) DEFAULT '0',
  `qbsql_to_void` tinyint(1) DEFAULT '0',
  `qbsql_flag_deleted` tinyint(1) DEFAULT '0',
  `qbsql_flag_skipped` tinyint(1) DEFAULT '0',
  `qbsql_flag_voided` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qb_invoice_invoicelinegroup_invoiceline`
--

DROP TABLE IF EXISTS `qb_invoice_invoicelinegroup_invoiceline`;
CREATE TABLE `qb_invoice_invoicelinegroup_invoiceline` (
  `qbsql_id` int(10) UNSIGNED NOT NULL,
  `qbsql_username_id` int(10) UNSIGNED DEFAULT NULL,
  `qbsql_external_id` int(10) UNSIGNED DEFAULT NULL,
  `Invoice_TxnID` varchar(40) DEFAULT NULL,
  `Invoice_InvoiceLineGroup_TxnLineID` text,
  `SortOrder` int(10) UNSIGNED DEFAULT '0',
  `TxnLineID` varchar(40) DEFAULT NULL,
  `Item_ListID` varchar(40) DEFAULT NULL,
  `Item_FullName` varchar(255) DEFAULT NULL,
  `Descrip` text,
  `Quantity` decimal(12,5) DEFAULT '0.00000',
  `UnitOfMeasure` text,
  `OverrideUOMSet_ListID` varchar(40) DEFAULT NULL,
  `OverrideUOMSet_FullName` varchar(255) DEFAULT NULL,
  `Rate` decimal(13,5) DEFAULT NULL,
  `RatePercent` decimal(12,5) DEFAULT NULL,
  `Class_ListID` varchar(40) DEFAULT NULL,
  `Class_FullName` varchar(255) DEFAULT NULL,
  `Amount` decimal(10,2) DEFAULT NULL,
  `ServiceDate` date DEFAULT NULL,
  `SalesTaxCode_ListID` varchar(40) DEFAULT NULL,
  `SalesTaxCode_FullName` varchar(255) DEFAULT NULL,
  `Other1` text,
  `Other2` text,
  `qbsql_discov_datetime` datetime DEFAULT NULL,
  `qbsql_resync_datetime` datetime DEFAULT NULL,
  `qbsql_modify_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `qbsql_last_hash` varchar(40) DEFAULT NULL,
  `qbsql_last_qbxml` text,
  `qbsql_last_errnum` varchar(32) DEFAULT NULL,
  `qbsql_last_errmsg` varchar(255) DEFAULT NULL,
  `qbsql_enqueue_datetime` datetime DEFAULT NULL,
  `qbsql_dequeue_datetime` datetime DEFAULT NULL,
  `qbsql_audit_amount` decimal(10,0) DEFAULT NULL,
  `qbsql_audit_modified` datetime DEFAULT NULL,
  `qbsql_to_sync` tinyint(1) DEFAULT '0',
  `qbsql_to_delete` tinyint(1) DEFAULT '0',
  `qbsql_to_skip` tinyint(1) DEFAULT '0',
  `qbsql_to_void` tinyint(1) DEFAULT '0',
  `qbsql_flag_deleted` tinyint(1) DEFAULT '0',
  `qbsql_flag_skipped` tinyint(1) DEFAULT '0',
  `qbsql_flag_voided` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qb_invoice_linkedtxn`
--

DROP TABLE IF EXISTS `qb_invoice_linkedtxn`;
CREATE TABLE `qb_invoice_linkedtxn` (
  `qbsql_id` int(10) UNSIGNED NOT NULL,
  `qbsql_username_id` int(10) UNSIGNED DEFAULT NULL,
  `qbsql_external_id` int(10) UNSIGNED DEFAULT NULL,
  `FromTxnID` varchar(40) DEFAULT NULL,
  `Invoice_TxnID` varchar(40) DEFAULT NULL,
  `LinkType` text,
  `ToTxnID` varchar(40) DEFAULT NULL,
  `TxnType` varchar(40) DEFAULT NULL,
  `TxnDate` date DEFAULT NULL,
  `RefNumber` text,
  `Amount` decimal(10,2) DEFAULT NULL,
  `qbsql_discov_datetime` datetime DEFAULT NULL,
  `qbsql_resync_datetime` datetime DEFAULT NULL,
  `qbsql_modify_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `qbsql_last_hash` varchar(40) DEFAULT NULL,
  `qbsql_last_qbxml` text,
  `qbsql_last_errnum` varchar(32) DEFAULT NULL,
  `qbsql_last_errmsg` varchar(255) DEFAULT NULL,
  `qbsql_enqueue_datetime` datetime DEFAULT NULL,
  `qbsql_dequeue_datetime` datetime DEFAULT NULL,
  `qbsql_audit_amount` decimal(10,0) DEFAULT NULL,
  `qbsql_audit_modified` datetime DEFAULT NULL,
  `qbsql_to_sync` tinyint(1) DEFAULT '0',
  `qbsql_to_delete` tinyint(1) DEFAULT '0',
  `qbsql_to_skip` tinyint(1) DEFAULT '0',
  `qbsql_to_void` tinyint(1) DEFAULT '0',
  `qbsql_flag_deleted` tinyint(1) DEFAULT '0',
  `qbsql_flag_skipped` tinyint(1) DEFAULT '0',
  `qbsql_flag_voided` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qb_itemdiscount`
--

DROP TABLE IF EXISTS `qb_itemdiscount`;
CREATE TABLE `qb_itemdiscount` (
  `qbsql_id` int(10) UNSIGNED NOT NULL,
  `qbsql_username_id` int(10) UNSIGNED DEFAULT NULL,
  `qbsql_external_id` int(10) UNSIGNED DEFAULT NULL,
  `ListID` varchar(40) DEFAULT NULL,
  `TimeCreated` datetime DEFAULT NULL,
  `TimeModified` datetime DEFAULT NULL,
  `EditSequence` text,
  `Name` varchar(31) DEFAULT NULL,
  `FullName` varchar(255) DEFAULT NULL,
  `IsActive` tinyint(1) DEFAULT '0',
  `Parent_ListID` varchar(40) DEFAULT NULL,
  `Parent_FullName` varchar(255) DEFAULT NULL,
  `Sublevel` int(10) UNSIGNED DEFAULT '0',
  `ItemDesc` text,
  `SalesTaxCode_ListID` varchar(40) DEFAULT NULL,
  `SalesTaxCode_FullName` varchar(255) DEFAULT NULL,
  `DiscountRate` decimal(13,5) DEFAULT NULL,
  `DiscountRatePercent` decimal(12,5) DEFAULT NULL,
  `Account_ListID` varchar(40) DEFAULT NULL,
  `Account_FullName` varchar(255) DEFAULT NULL,
  `qbsql_discov_datetime` datetime DEFAULT NULL,
  `qbsql_resync_datetime` datetime DEFAULT NULL,
  `qbsql_modify_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `qbsql_last_hash` varchar(40) DEFAULT NULL,
  `qbsql_last_qbxml` text,
  `qbsql_last_errnum` varchar(32) DEFAULT NULL,
  `qbsql_last_errmsg` varchar(255) DEFAULT NULL,
  `qbsql_enqueue_datetime` datetime DEFAULT NULL,
  `qbsql_dequeue_datetime` datetime DEFAULT NULL,
  `qbsql_audit_amount` decimal(10,0) DEFAULT NULL,
  `qbsql_audit_modified` datetime DEFAULT NULL,
  `qbsql_to_sync` tinyint(1) DEFAULT '0',
  `qbsql_to_delete` tinyint(1) DEFAULT '0',
  `qbsql_to_skip` tinyint(1) DEFAULT '0',
  `qbsql_to_void` tinyint(1) DEFAULT '0',
  `qbsql_flag_deleted` tinyint(1) DEFAULT '0',
  `qbsql_flag_skipped` tinyint(1) DEFAULT '0',
  `qbsql_flag_voided` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qb_itemfixedasset`
--

DROP TABLE IF EXISTS `qb_itemfixedasset`;
CREATE TABLE `qb_itemfixedasset` (
  `qbsql_id` int(10) UNSIGNED NOT NULL,
  `qbsql_username_id` int(10) UNSIGNED DEFAULT NULL,
  `qbsql_external_id` int(10) UNSIGNED DEFAULT NULL,
  `ListID` varchar(40) DEFAULT NULL,
  `TimeCreated` datetime DEFAULT NULL,
  `TimeModified` datetime DEFAULT NULL,
  `EditSequence` text,
  `Name` varchar(31) DEFAULT NULL,
  `IsActive` tinyint(1) DEFAULT '0',
  `AcquiredAs` varchar(40) DEFAULT NULL,
  `PurchaseDesc` varchar(50) DEFAULT NULL,
  `PurchaseDate` date DEFAULT NULL,
  `PurchaseCost` decimal(13,5) DEFAULT NULL,
  `VendorOrPayeeName` varchar(50) DEFAULT NULL,
  `AssetAccount_ListID` varchar(40) DEFAULT NULL,
  `AssetAccount_FullName` varchar(255) DEFAULT NULL,
  `FixedAssetSalesInfo_SalesDesc` varchar(50) DEFAULT NULL,
  `FixedAssetSalesInfo_SalesDate` date DEFAULT NULL,
  `FixedAssetSalesInfo_SalesPrice` decimal(13,5) DEFAULT NULL,
  `FixedAssetSalesInfo_SalesExpense` decimal(13,5) DEFAULT NULL,
  `AssetDesc` varchar(50) DEFAULT NULL,
  `Location` varchar(50) DEFAULT NULL,
  `PONumber` varchar(30) DEFAULT NULL,
  `SerialNumber` varchar(30) DEFAULT NULL,
  `WarrantyExpDate` date DEFAULT NULL,
  `Notes` text,
  `AssetNumber` varchar(10) DEFAULT NULL,
  `CostBasis` decimal(10,2) DEFAULT NULL,
  `YearEndAccumulatedDepreciation` decimal(10,2) DEFAULT NULL,
  `YearEndBookValue` decimal(10,2) DEFAULT NULL,
  `qbsql_discov_datetime` datetime DEFAULT NULL,
  `qbsql_resync_datetime` datetime DEFAULT NULL,
  `qbsql_modify_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `qbsql_last_hash` varchar(40) DEFAULT NULL,
  `qbsql_last_qbxml` text,
  `qbsql_last_errnum` varchar(32) DEFAULT NULL,
  `qbsql_last_errmsg` varchar(255) DEFAULT NULL,
  `qbsql_enqueue_datetime` datetime DEFAULT NULL,
  `qbsql_dequeue_datetime` datetime DEFAULT NULL,
  `qbsql_audit_amount` decimal(10,0) DEFAULT NULL,
  `qbsql_audit_modified` datetime DEFAULT NULL,
  `qbsql_to_sync` tinyint(1) DEFAULT '0',
  `qbsql_to_delete` tinyint(1) DEFAULT '0',
  `qbsql_to_skip` tinyint(1) DEFAULT '0',
  `qbsql_to_void` tinyint(1) DEFAULT '0',
  `qbsql_flag_deleted` tinyint(1) DEFAULT '0',
  `qbsql_flag_skipped` tinyint(1) DEFAULT '0',
  `qbsql_flag_voided` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qb_itemgroup`
--

DROP TABLE IF EXISTS `qb_itemgroup`;
CREATE TABLE `qb_itemgroup` (
  `qbsql_id` int(10) UNSIGNED NOT NULL,
  `qbsql_username_id` int(10) UNSIGNED DEFAULT NULL,
  `qbsql_external_id` int(10) UNSIGNED DEFAULT NULL,
  `ListID` varchar(40) DEFAULT NULL,
  `TimeCreated` datetime DEFAULT NULL,
  `TimeModified` datetime DEFAULT NULL,
  `EditSequence` text,
  `Name` varchar(31) DEFAULT NULL,
  `IsActive` tinyint(1) DEFAULT '0',
  `ItemDesc` text,
  `UnitOfMeasureSet_ListID` varchar(40) DEFAULT NULL,
  `UnitOfMeasureSet_FullName` varchar(255) DEFAULT NULL,
  `IsPrintItemsInGroup` tinyint(1) DEFAULT '0',
  `SpecialItemType` varchar(40) DEFAULT NULL,
  `qbsql_discov_datetime` datetime DEFAULT NULL,
  `qbsql_resync_datetime` datetime DEFAULT NULL,
  `qbsql_modify_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `qbsql_last_hash` varchar(40) DEFAULT NULL,
  `qbsql_last_qbxml` text,
  `qbsql_last_errnum` varchar(32) DEFAULT NULL,
  `qbsql_last_errmsg` varchar(255) DEFAULT NULL,
  `qbsql_enqueue_datetime` datetime DEFAULT NULL,
  `qbsql_dequeue_datetime` datetime DEFAULT NULL,
  `qbsql_audit_amount` decimal(10,0) DEFAULT NULL,
  `qbsql_audit_modified` datetime DEFAULT NULL,
  `qbsql_to_sync` tinyint(1) DEFAULT '0',
  `qbsql_to_delete` tinyint(1) DEFAULT '0',
  `qbsql_to_skip` tinyint(1) DEFAULT '0',
  `qbsql_to_void` tinyint(1) DEFAULT '0',
  `qbsql_flag_deleted` tinyint(1) DEFAULT '0',
  `qbsql_flag_skipped` tinyint(1) DEFAULT '0',
  `qbsql_flag_voided` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qb_itemgroup_itemgroupline`
--

DROP TABLE IF EXISTS `qb_itemgroup_itemgroupline`;
CREATE TABLE `qb_itemgroup_itemgroupline` (
  `qbsql_id` int(10) UNSIGNED NOT NULL,
  `qbsql_username_id` int(10) UNSIGNED DEFAULT NULL,
  `qbsql_external_id` int(10) UNSIGNED DEFAULT NULL,
  `ItemGroup_ListID` varchar(40) DEFAULT NULL,
  `SortOrder` int(10) UNSIGNED DEFAULT '0',
  `Item_ListID` varchar(40) DEFAULT NULL,
  `Item_FullName` varchar(255) DEFAULT NULL,
  `Quantity` decimal(12,5) DEFAULT '0.00000',
  `UnitOfMeasure` text,
  `qbsql_discov_datetime` datetime DEFAULT NULL,
  `qbsql_resync_datetime` datetime DEFAULT NULL,
  `qbsql_modify_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `qbsql_last_hash` varchar(40) DEFAULT NULL,
  `qbsql_last_qbxml` text,
  `qbsql_last_errnum` varchar(32) DEFAULT NULL,
  `qbsql_last_errmsg` varchar(255) DEFAULT NULL,
  `qbsql_enqueue_datetime` datetime DEFAULT NULL,
  `qbsql_dequeue_datetime` datetime DEFAULT NULL,
  `qbsql_audit_amount` decimal(10,0) DEFAULT NULL,
  `qbsql_audit_modified` datetime DEFAULT NULL,
  `qbsql_to_sync` tinyint(1) DEFAULT '0',
  `qbsql_to_delete` tinyint(1) DEFAULT '0',
  `qbsql_to_skip` tinyint(1) DEFAULT '0',
  `qbsql_to_void` tinyint(1) DEFAULT '0',
  `qbsql_flag_deleted` tinyint(1) DEFAULT '0',
  `qbsql_flag_skipped` tinyint(1) DEFAULT '0',
  `qbsql_flag_voided` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qb_iteminventory`
--

DROP TABLE IF EXISTS `qb_iteminventory`;
CREATE TABLE `qb_iteminventory` (
  `qbsql_id` int(10) UNSIGNED NOT NULL,
  `qbsql_username_id` int(10) UNSIGNED DEFAULT NULL,
  `qbsql_external_id` int(10) UNSIGNED DEFAULT NULL,
  `ListID` varchar(40) DEFAULT NULL,
  `TimeCreated` datetime DEFAULT NULL,
  `TimeModified` datetime DEFAULT NULL,
  `EditSequence` text,
  `Name` varchar(31) DEFAULT NULL,
  `FullName` varchar(255) DEFAULT NULL,
  `IsActive` tinyint(1) DEFAULT '0',
  `Parent_ListID` varchar(40) DEFAULT NULL,
  `Parent_FullName` varchar(255) DEFAULT NULL,
  `Sublevel` int(10) UNSIGNED DEFAULT '0',
  `ManufacturerPartNumber` varchar(31) DEFAULT NULL,
  `UnitOfMeasureSet_ListID` varchar(40) DEFAULT NULL,
  `UnitOfMeasureSet_FullName` varchar(255) DEFAULT NULL,
  `SalesTaxCode_ListID` varchar(40) DEFAULT NULL,
  `SalesTaxCode_FullName` varchar(255) DEFAULT NULL,
  `SalesDesc` text,
  `SalesPrice` decimal(13,5) DEFAULT NULL,
  `IncomeAccount_ListID` varchar(40) DEFAULT NULL,
  `IncomeAccount_FullName` varchar(255) DEFAULT NULL,
  `PurchaseDesc` text,
  `PurchaseCost` decimal(13,5) DEFAULT NULL,
  `COGSAccount_ListID` varchar(40) DEFAULT NULL,
  `COGSAccount_FullName` varchar(255) DEFAULT NULL,
  `PrefVendor_ListID` varchar(40) DEFAULT NULL,
  `PrefVendor_FullName` varchar(255) DEFAULT NULL,
  `AssetAccount_ListID` varchar(40) DEFAULT NULL,
  `AssetAccount_FullName` varchar(255) DEFAULT NULL,
  `ReorderPoint` decimal(12,5) DEFAULT '0.00000',
  `QuantityOnHand` decimal(12,5) DEFAULT '0.00000',
  `AverageCost` decimal(13,5) DEFAULT NULL,
  `QuantityOnOrder` decimal(12,5) DEFAULT '0.00000',
  `QuantityOnSalesOrder` decimal(12,5) DEFAULT '0.00000',
  `qbsql_discov_datetime` datetime DEFAULT NULL,
  `qbsql_resync_datetime` datetime DEFAULT NULL,
  `qbsql_modify_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `qbsql_last_hash` varchar(40) DEFAULT NULL,
  `qbsql_last_qbxml` text,
  `qbsql_last_errnum` varchar(32) DEFAULT NULL,
  `qbsql_last_errmsg` varchar(255) DEFAULT NULL,
  `qbsql_enqueue_datetime` datetime DEFAULT NULL,
  `qbsql_dequeue_datetime` datetime DEFAULT NULL,
  `qbsql_audit_amount` decimal(10,0) DEFAULT NULL,
  `qbsql_audit_modified` datetime DEFAULT NULL,
  `qbsql_to_sync` tinyint(1) DEFAULT '0',
  `qbsql_to_delete` tinyint(1) DEFAULT '0',
  `qbsql_to_skip` tinyint(1) DEFAULT '0',
  `qbsql_to_void` tinyint(1) DEFAULT '0',
  `qbsql_flag_deleted` tinyint(1) DEFAULT '0',
  `qbsql_flag_skipped` tinyint(1) DEFAULT '0',
  `qbsql_flag_voided` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qb_iteminventoryassembly`
--

DROP TABLE IF EXISTS `qb_iteminventoryassembly`;
CREATE TABLE `qb_iteminventoryassembly` (
  `qbsql_id` int(10) UNSIGNED NOT NULL,
  `qbsql_username_id` int(10) UNSIGNED DEFAULT NULL,
  `qbsql_external_id` int(10) UNSIGNED DEFAULT NULL,
  `ListID` varchar(40) DEFAULT NULL,
  `TimeCreated` datetime DEFAULT NULL,
  `TimeModified` datetime DEFAULT NULL,
  `EditSequence` text,
  `Name` text,
  `FullName` varchar(255) DEFAULT NULL,
  `IsActive` tinyint(1) DEFAULT '0',
  `Parent_ListID` varchar(40) DEFAULT NULL,
  `Parent_FullName` varchar(255) DEFAULT NULL,
  `Sublevel` int(10) UNSIGNED DEFAULT '0',
  `UnitOfMeasureSet_ListID` varchar(40) DEFAULT NULL,
  `UnitOfMeasureSet_FullName` varchar(255) DEFAULT NULL,
  `SalesTaxCode_ListID` varchar(40) DEFAULT NULL,
  `SalesTaxCode_FullName` varchar(255) DEFAULT NULL,
  `SalesDesc` text,
  `SalesPrice` decimal(13,5) DEFAULT NULL,
  `IncomeAccount_ListID` varchar(40) DEFAULT NULL,
  `IncomeAccount_FullName` varchar(255) DEFAULT NULL,
  `PurchaseDesc` text,
  `PurchaseCost` decimal(13,5) DEFAULT NULL,
  `COGSAccount_ListID` varchar(40) DEFAULT NULL,
  `COGSAccount_FullName` varchar(255) DEFAULT NULL,
  `PrefVendor_ListID` varchar(40) DEFAULT NULL,
  `PrefVendor_FullName` varchar(255) DEFAULT NULL,
  `AssetAccount_ListID` varchar(40) DEFAULT NULL,
  `AssetAccount_FullName` varchar(255) DEFAULT NULL,
  `BuildPoint` decimal(12,5) DEFAULT '0.00000',
  `QuantityOnHand` decimal(12,5) DEFAULT '0.00000',
  `AverageCost` decimal(13,5) DEFAULT NULL,
  `QuantityOnOrder` decimal(12,5) DEFAULT '0.00000',
  `QuantityOnSalesOrder` decimal(12,5) DEFAULT '0.00000',
  `qbsql_discov_datetime` datetime DEFAULT NULL,
  `qbsql_resync_datetime` datetime DEFAULT NULL,
  `qbsql_modify_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `qbsql_last_hash` varchar(40) DEFAULT NULL,
  `qbsql_last_qbxml` text,
  `qbsql_last_errnum` varchar(32) DEFAULT NULL,
  `qbsql_last_errmsg` varchar(255) DEFAULT NULL,
  `qbsql_enqueue_datetime` datetime DEFAULT NULL,
  `qbsql_dequeue_datetime` datetime DEFAULT NULL,
  `qbsql_audit_amount` decimal(10,0) DEFAULT NULL,
  `qbsql_audit_modified` datetime DEFAULT NULL,
  `qbsql_to_sync` tinyint(1) DEFAULT '0',
  `qbsql_to_delete` tinyint(1) DEFAULT '0',
  `qbsql_to_skip` tinyint(1) DEFAULT '0',
  `qbsql_to_void` tinyint(1) DEFAULT '0',
  `qbsql_flag_deleted` tinyint(1) DEFAULT '0',
  `qbsql_flag_skipped` tinyint(1) DEFAULT '0',
  `qbsql_flag_voided` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qb_iteminventoryassembly_iteminventoryassemblyline`
--

DROP TABLE IF EXISTS `qb_iteminventoryassembly_iteminventoryassemblyline`;
CREATE TABLE `qb_iteminventoryassembly_iteminventoryassemblyline` (
  `qbsql_id` int(10) UNSIGNED NOT NULL,
  `qbsql_username_id` int(10) UNSIGNED DEFAULT NULL,
  `qbsql_external_id` int(10) UNSIGNED DEFAULT NULL,
  `ItemInventoryAssembly_ListID` varchar(40) DEFAULT NULL,
  `SortOrder` int(10) UNSIGNED DEFAULT '0',
  `ItemInventory_ListID` varchar(40) DEFAULT NULL,
  `ItemInventory_FullName` varchar(255) DEFAULT NULL,
  `Quantity` decimal(12,5) DEFAULT '0.00000',
  `qbsql_discov_datetime` datetime DEFAULT NULL,
  `qbsql_resync_datetime` datetime DEFAULT NULL,
  `qbsql_modify_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `qbsql_last_hash` varchar(40) DEFAULT NULL,
  `qbsql_last_qbxml` text,
  `qbsql_last_errnum` varchar(32) DEFAULT NULL,
  `qbsql_last_errmsg` varchar(255) DEFAULT NULL,
  `qbsql_enqueue_datetime` datetime DEFAULT NULL,
  `qbsql_dequeue_datetime` datetime DEFAULT NULL,
  `qbsql_audit_amount` decimal(10,0) DEFAULT NULL,
  `qbsql_audit_modified` datetime DEFAULT NULL,
  `qbsql_to_sync` tinyint(1) DEFAULT '0',
  `qbsql_to_delete` tinyint(1) DEFAULT '0',
  `qbsql_to_skip` tinyint(1) DEFAULT '0',
  `qbsql_to_void` tinyint(1) DEFAULT '0',
  `qbsql_flag_deleted` tinyint(1) DEFAULT '0',
  `qbsql_flag_skipped` tinyint(1) DEFAULT '0',
  `qbsql_flag_voided` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qb_itemnoninventory`
--

DROP TABLE IF EXISTS `qb_itemnoninventory`;
CREATE TABLE `qb_itemnoninventory` (
  `qbsql_id` int(10) UNSIGNED NOT NULL,
  `qbsql_username_id` int(10) UNSIGNED DEFAULT NULL,
  `qbsql_external_id` int(10) UNSIGNED DEFAULT NULL,
  `ListID` varchar(40) DEFAULT NULL,
  `TimeCreated` datetime DEFAULT NULL,
  `TimeModified` datetime DEFAULT NULL,
  `EditSequence` text,
  `Name` varchar(31) DEFAULT NULL,
  `FullName` varchar(255) DEFAULT NULL,
  `IsActive` tinyint(1) DEFAULT '0',
  `Parent_ListID` varchar(40) DEFAULT NULL,
  `Parent_FullName` varchar(255) DEFAULT NULL,
  `Sublevel` int(10) UNSIGNED DEFAULT '0',
  `ManufacturerPartNumber` varchar(31) DEFAULT NULL,
  `UnitOfMeasureSet_ListID` varchar(40) DEFAULT NULL,
  `UnitOfMeasureSet_FullName` varchar(255) DEFAULT NULL,
  `SalesTaxCode_ListID` varchar(40) DEFAULT NULL,
  `SalesTaxCode_FullName` varchar(255) DEFAULT NULL,
  `SalesOrPurchase_Desc` text,
  `SalesOrPurchase_Price` decimal(13,5) DEFAULT NULL,
  `SalesOrPurchase_PricePercent` decimal(12,5) DEFAULT NULL,
  `SalesOrPurchase_Account_ListID` varchar(40) DEFAULT NULL,
  `SalesOrPurchase_Account_FullName` varchar(255) DEFAULT NULL,
  `SalesAndPurchase_SalesDesc` text,
  `SalesAndPurchase_SalesPrice` decimal(13,5) DEFAULT NULL,
  `SalesAndPurchase_IncomeAccount_ListID` varchar(40) DEFAULT NULL,
  `SalesAndPurchase_IncomeAccount_FullName` varchar(255) DEFAULT NULL,
  `SalesAndPurchase_PurchaseDesc` text,
  `SalesAndPurchase_PurchaseCost` decimal(13,5) DEFAULT NULL,
  `SalesAndPurchase_ExpenseAccount_ListID` varchar(40) DEFAULT NULL,
  `SalesAndPurchase_ExpenseAccount_FullName` varchar(255) DEFAULT NULL,
  `SalesAndPurchase_PrefVendor_ListID` varchar(40) DEFAULT NULL,
  `SalesAndPurchase_PrefVendor_FullName` varchar(255) DEFAULT NULL,
  `qbsql_discov_datetime` datetime DEFAULT NULL,
  `qbsql_resync_datetime` datetime DEFAULT NULL,
  `qbsql_modify_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `qbsql_last_hash` varchar(40) DEFAULT NULL,
  `qbsql_last_qbxml` text,
  `qbsql_last_errnum` varchar(32) DEFAULT NULL,
  `qbsql_last_errmsg` varchar(255) DEFAULT NULL,
  `qbsql_enqueue_datetime` datetime DEFAULT NULL,
  `qbsql_dequeue_datetime` datetime DEFAULT NULL,
  `qbsql_audit_amount` decimal(10,0) DEFAULT NULL,
  `qbsql_audit_modified` datetime DEFAULT NULL,
  `qbsql_to_sync` tinyint(1) DEFAULT '0',
  `qbsql_to_delete` tinyint(1) DEFAULT '0',
  `qbsql_to_skip` tinyint(1) DEFAULT '0',
  `qbsql_to_void` tinyint(1) DEFAULT '0',
  `qbsql_flag_deleted` tinyint(1) DEFAULT '0',
  `qbsql_flag_skipped` tinyint(1) DEFAULT '0',
  `qbsql_flag_voided` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qb_itemothercharge`
--

DROP TABLE IF EXISTS `qb_itemothercharge`;
CREATE TABLE `qb_itemothercharge` (
  `qbsql_id` int(10) UNSIGNED NOT NULL,
  `qbsql_username_id` int(10) UNSIGNED DEFAULT NULL,
  `qbsql_external_id` int(10) UNSIGNED DEFAULT NULL,
  `ListID` varchar(40) DEFAULT NULL,
  `TimeCreated` datetime DEFAULT NULL,
  `TimeModified` datetime DEFAULT NULL,
  `EditSequence` text,
  `Name` varchar(31) DEFAULT NULL,
  `FullName` varchar(255) DEFAULT NULL,
  `IsActive` tinyint(1) DEFAULT '0',
  `Parent_ListID` varchar(40) DEFAULT NULL,
  `Parent_FullName` varchar(255) DEFAULT NULL,
  `Sublevel` int(10) UNSIGNED DEFAULT '0',
  `SalesTaxCode_ListID` varchar(40) DEFAULT NULL,
  `SalesTaxCode_FullName` varchar(255) DEFAULT NULL,
  `SalesOrPurchase_Desc` text,
  `SalesOrPurchase_Price` decimal(13,5) DEFAULT NULL,
  `SalesOrPurchase_PricePercent` decimal(12,5) DEFAULT NULL,
  `SalesOrPurchase_Account_ListID` varchar(40) DEFAULT NULL,
  `SalesOrPurchase_Account_FullName` varchar(255) DEFAULT NULL,
  `SalesAndPurchase_SalesDesc` text,
  `SalesAndPurchase_SalesPrice` decimal(13,5) DEFAULT NULL,
  `SalesAndPurchase_IncomeAccount_ListID` varchar(40) DEFAULT NULL,
  `SalesAndPurchase_IncomeAccount_FullName` varchar(255) DEFAULT NULL,
  `SalesAndPurchase_PurchaseDesc` text,
  `SalesAndPurchase_PurchaseCost` decimal(13,5) DEFAULT NULL,
  `SalesAndPurchase_ExpenseAccount_ListID` varchar(40) DEFAULT NULL,
  `SalesAndPurchase_ExpenseAccount_FullName` varchar(255) DEFAULT NULL,
  `SalesAndPurchase_PrefVendor_ListID` varchar(40) DEFAULT NULL,
  `SalesAndPurchase_PrefVendor_FullName` varchar(255) DEFAULT NULL,
  `SpecialItemType` varchar(40) DEFAULT NULL,
  `qbsql_discov_datetime` datetime DEFAULT NULL,
  `qbsql_resync_datetime` datetime DEFAULT NULL,
  `qbsql_modify_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `qbsql_last_hash` varchar(40) DEFAULT NULL,
  `qbsql_last_qbxml` text,
  `qbsql_last_errnum` varchar(32) DEFAULT NULL,
  `qbsql_last_errmsg` varchar(255) DEFAULT NULL,
  `qbsql_enqueue_datetime` datetime DEFAULT NULL,
  `qbsql_dequeue_datetime` datetime DEFAULT NULL,
  `qbsql_audit_amount` decimal(10,0) DEFAULT NULL,
  `qbsql_audit_modified` datetime DEFAULT NULL,
  `qbsql_to_sync` tinyint(1) DEFAULT '0',
  `qbsql_to_delete` tinyint(1) DEFAULT '0',
  `qbsql_to_skip` tinyint(1) DEFAULT '0',
  `qbsql_to_void` tinyint(1) DEFAULT '0',
  `qbsql_flag_deleted` tinyint(1) DEFAULT '0',
  `qbsql_flag_skipped` tinyint(1) DEFAULT '0',
  `qbsql_flag_voided` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qb_itempayment`
--

DROP TABLE IF EXISTS `qb_itempayment`;
CREATE TABLE `qb_itempayment` (
  `qbsql_id` int(10) UNSIGNED NOT NULL,
  `qbsql_username_id` int(10) UNSIGNED DEFAULT NULL,
  `qbsql_external_id` int(10) UNSIGNED DEFAULT NULL,
  `ListID` varchar(40) DEFAULT NULL,
  `TimeCreated` datetime DEFAULT NULL,
  `TimeModified` datetime DEFAULT NULL,
  `EditSequence` text,
  `Name` varchar(31) DEFAULT NULL,
  `IsActive` tinyint(1) DEFAULT '0',
  `ItemDesc` text,
  `DepositToAccount_ListID` varchar(40) DEFAULT NULL,
  `DepositToAccount_FullName` varchar(255) DEFAULT NULL,
  `PaymentMethod_ListID` varchar(40) DEFAULT NULL,
  `PaymentMethod_FullName` varchar(255) DEFAULT NULL,
  `qbsql_discov_datetime` datetime DEFAULT NULL,
  `qbsql_resync_datetime` datetime DEFAULT NULL,
  `qbsql_modify_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `qbsql_last_hash` varchar(40) DEFAULT NULL,
  `qbsql_last_qbxml` text,
  `qbsql_last_errnum` varchar(32) DEFAULT NULL,
  `qbsql_last_errmsg` varchar(255) DEFAULT NULL,
  `qbsql_enqueue_datetime` datetime DEFAULT NULL,
  `qbsql_dequeue_datetime` datetime DEFAULT NULL,
  `qbsql_audit_amount` decimal(10,0) DEFAULT NULL,
  `qbsql_audit_modified` datetime DEFAULT NULL,
  `qbsql_to_sync` tinyint(1) DEFAULT '0',
  `qbsql_to_delete` tinyint(1) DEFAULT '0',
  `qbsql_to_skip` tinyint(1) DEFAULT '0',
  `qbsql_to_void` tinyint(1) DEFAULT '0',
  `qbsql_flag_deleted` tinyint(1) DEFAULT '0',
  `qbsql_flag_skipped` tinyint(1) DEFAULT '0',
  `qbsql_flag_voided` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qb_itemreceipt`
--

DROP TABLE IF EXISTS `qb_itemreceipt`;
CREATE TABLE `qb_itemreceipt` (
  `qbsql_id` int(10) UNSIGNED NOT NULL,
  `qbsql_username_id` int(10) UNSIGNED DEFAULT NULL,
  `qbsql_external_id` int(10) UNSIGNED DEFAULT NULL,
  `TxnID` varchar(40) DEFAULT NULL,
  `TimeCreated` datetime DEFAULT NULL,
  `TimeModified` datetime DEFAULT NULL,
  `EditSequence` text,
  `TxnNumber` int(10) UNSIGNED DEFAULT '0',
  `Vendor_ListID` varchar(40) DEFAULT NULL,
  `Vendor_FullName` varchar(255) DEFAULT NULL,
  `APAccount_ListID` varchar(40) DEFAULT NULL,
  `APAccount_FullName` varchar(255) DEFAULT NULL,
  `TxnDate` date DEFAULT NULL,
  `TotalAmount` decimal(10,2) DEFAULT NULL,
  `RefNumber` varchar(20) DEFAULT NULL,
  `Memo` text,
  `qbsql_discov_datetime` datetime DEFAULT NULL,
  `qbsql_resync_datetime` datetime DEFAULT NULL,
  `qbsql_modify_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `qbsql_last_hash` varchar(40) DEFAULT NULL,
  `qbsql_last_qbxml` text,
  `qbsql_last_errnum` varchar(32) DEFAULT NULL,
  `qbsql_last_errmsg` varchar(255) DEFAULT NULL,
  `qbsql_enqueue_datetime` datetime DEFAULT NULL,
  `qbsql_dequeue_datetime` datetime DEFAULT NULL,
  `qbsql_audit_amount` decimal(10,0) DEFAULT NULL,
  `qbsql_audit_modified` datetime DEFAULT NULL,
  `qbsql_to_sync` tinyint(1) DEFAULT '0',
  `qbsql_to_delete` tinyint(1) DEFAULT '0',
  `qbsql_to_skip` tinyint(1) DEFAULT '0',
  `qbsql_to_void` tinyint(1) DEFAULT '0',
  `qbsql_flag_deleted` tinyint(1) DEFAULT '0',
  `qbsql_flag_skipped` tinyint(1) DEFAULT '0',
  `qbsql_flag_voided` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qb_itemreceipt_expenseline`
--

DROP TABLE IF EXISTS `qb_itemreceipt_expenseline`;
CREATE TABLE `qb_itemreceipt_expenseline` (
  `qbsql_id` int(10) UNSIGNED NOT NULL,
  `qbsql_username_id` int(10) UNSIGNED DEFAULT NULL,
  `qbsql_external_id` int(10) UNSIGNED DEFAULT NULL,
  `ItemReceipt_TxnID` varchar(40) DEFAULT NULL,
  `SortOrder` int(10) UNSIGNED DEFAULT '0',
  `TxnLineID` varchar(40) DEFAULT NULL,
  `Account_ListID` varchar(40) DEFAULT NULL,
  `Account_FullName` varchar(255) DEFAULT NULL,
  `Amount` decimal(10,2) DEFAULT NULL,
  `Memo` text,
  `Customer_ListID` varchar(40) DEFAULT NULL,
  `Customer_FullName` varchar(255) DEFAULT NULL,
  `Class_ListID` varchar(40) DEFAULT NULL,
  `Class_FullName` varchar(255) DEFAULT NULL,
  `BillableStatus` varchar(40) DEFAULT NULL,
  `qbsql_discov_datetime` datetime DEFAULT NULL,
  `qbsql_resync_datetime` datetime DEFAULT NULL,
  `qbsql_modify_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `qbsql_last_hash` varchar(40) DEFAULT NULL,
  `qbsql_last_qbxml` text,
  `qbsql_last_errnum` varchar(32) DEFAULT NULL,
  `qbsql_last_errmsg` varchar(255) DEFAULT NULL,
  `qbsql_enqueue_datetime` datetime DEFAULT NULL,
  `qbsql_dequeue_datetime` datetime DEFAULT NULL,
  `qbsql_audit_amount` decimal(10,0) DEFAULT NULL,
  `qbsql_audit_modified` datetime DEFAULT NULL,
  `qbsql_to_sync` tinyint(1) DEFAULT '0',
  `qbsql_to_delete` tinyint(1) DEFAULT '0',
  `qbsql_to_skip` tinyint(1) DEFAULT '0',
  `qbsql_to_void` tinyint(1) DEFAULT '0',
  `qbsql_flag_deleted` tinyint(1) DEFAULT '0',
  `qbsql_flag_skipped` tinyint(1) DEFAULT '0',
  `qbsql_flag_voided` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qb_itemreceipt_itemgroupline`
--

DROP TABLE IF EXISTS `qb_itemreceipt_itemgroupline`;
CREATE TABLE `qb_itemreceipt_itemgroupline` (
  `qbsql_id` int(10) UNSIGNED NOT NULL,
  `qbsql_username_id` int(10) UNSIGNED DEFAULT NULL,
  `qbsql_external_id` int(10) UNSIGNED DEFAULT NULL,
  `ItemReceipt_TxnID` varchar(40) DEFAULT NULL,
  `SortOrder` int(10) UNSIGNED DEFAULT '0',
  `TxnLineID` varchar(40) DEFAULT NULL,
  `ItemGroup_ListID` varchar(40) DEFAULT NULL,
  `ItemGroup_FullName` varchar(255) DEFAULT NULL,
  `Descrip` text,
  `Quantity` decimal(12,5) DEFAULT '0.00000',
  `UnitOfMeasure` text,
  `OverrideUOMSet_ListID` varchar(40) DEFAULT NULL,
  `OverrideUOMSet_FullName` varchar(255) DEFAULT NULL,
  `TotalAmount` decimal(10,2) DEFAULT NULL,
  `qbsql_discov_datetime` datetime DEFAULT NULL,
  `qbsql_resync_datetime` datetime DEFAULT NULL,
  `qbsql_modify_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `qbsql_last_hash` varchar(40) DEFAULT NULL,
  `qbsql_last_qbxml` text,
  `qbsql_last_errnum` varchar(32) DEFAULT NULL,
  `qbsql_last_errmsg` varchar(255) DEFAULT NULL,
  `qbsql_enqueue_datetime` datetime DEFAULT NULL,
  `qbsql_dequeue_datetime` datetime DEFAULT NULL,
  `qbsql_audit_amount` decimal(10,0) DEFAULT NULL,
  `qbsql_audit_modified` datetime DEFAULT NULL,
  `qbsql_to_sync` tinyint(1) DEFAULT '0',
  `qbsql_to_delete` tinyint(1) DEFAULT '0',
  `qbsql_to_skip` tinyint(1) DEFAULT '0',
  `qbsql_to_void` tinyint(1) DEFAULT '0',
  `qbsql_flag_deleted` tinyint(1) DEFAULT '0',
  `qbsql_flag_skipped` tinyint(1) DEFAULT '0',
  `qbsql_flag_voided` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qb_itemreceipt_itemgroupline_itemline`
--

DROP TABLE IF EXISTS `qb_itemreceipt_itemgroupline_itemline`;
CREATE TABLE `qb_itemreceipt_itemgroupline_itemline` (
  `qbsql_id` int(10) UNSIGNED NOT NULL,
  `qbsql_username_id` int(10) UNSIGNED DEFAULT NULL,
  `qbsql_external_id` int(10) UNSIGNED DEFAULT NULL,
  `ItemReceipt_TxnID` varchar(40) DEFAULT NULL,
  `ItemReceipt_ItemGroupLine_TxnLineID` text,
  `SortOrder` int(10) UNSIGNED DEFAULT '0',
  `TxnLineID` varchar(40) DEFAULT NULL,
  `Item_ListID` varchar(40) DEFAULT NULL,
  `Item_FullName` varchar(255) DEFAULT NULL,
  `Descrip` text,
  `Quantity` decimal(12,5) DEFAULT '0.00000',
  `UnitOfMeasure` text,
  `OverrideUOMSet_ListID` varchar(40) DEFAULT NULL,
  `OverrideUOMSet_FullName` varchar(255) DEFAULT NULL,
  `Cost` decimal(13,5) DEFAULT NULL,
  `Amount` decimal(10,2) DEFAULT NULL,
  `Customer_ListID` varchar(40) DEFAULT NULL,
  `Customer_FullName` varchar(255) DEFAULT NULL,
  `Class_ListID` varchar(40) DEFAULT NULL,
  `Class_FullName` varchar(255) DEFAULT NULL,
  `BillableStatus` varchar(40) DEFAULT NULL,
  `qbsql_discov_datetime` datetime DEFAULT NULL,
  `qbsql_resync_datetime` datetime DEFAULT NULL,
  `qbsql_modify_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `qbsql_last_hash` varchar(40) DEFAULT NULL,
  `qbsql_last_qbxml` text,
  `qbsql_last_errnum` varchar(32) DEFAULT NULL,
  `qbsql_last_errmsg` varchar(255) DEFAULT NULL,
  `qbsql_enqueue_datetime` datetime DEFAULT NULL,
  `qbsql_dequeue_datetime` datetime DEFAULT NULL,
  `qbsql_audit_amount` decimal(10,0) DEFAULT NULL,
  `qbsql_audit_modified` datetime DEFAULT NULL,
  `qbsql_to_sync` tinyint(1) DEFAULT '0',
  `qbsql_to_delete` tinyint(1) DEFAULT '0',
  `qbsql_to_skip` tinyint(1) DEFAULT '0',
  `qbsql_to_void` tinyint(1) DEFAULT '0',
  `qbsql_flag_deleted` tinyint(1) DEFAULT '0',
  `qbsql_flag_skipped` tinyint(1) DEFAULT '0',
  `qbsql_flag_voided` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qb_itemreceipt_itemline`
--

DROP TABLE IF EXISTS `qb_itemreceipt_itemline`;
CREATE TABLE `qb_itemreceipt_itemline` (
  `qbsql_id` int(10) UNSIGNED NOT NULL,
  `qbsql_username_id` int(10) UNSIGNED DEFAULT NULL,
  `qbsql_external_id` int(10) UNSIGNED DEFAULT NULL,
  `ItemReceipt_TxnID` varchar(40) DEFAULT NULL,
  `SortOrder` int(10) UNSIGNED DEFAULT '0',
  `TxnLineID` varchar(40) DEFAULT NULL,
  `Item_ListID` varchar(40) DEFAULT NULL,
  `Item_FullName` varchar(255) DEFAULT NULL,
  `Descrip` text,
  `Quantity` decimal(12,5) DEFAULT '0.00000',
  `UnitOfMeasure` text,
  `OverrideUOMSet_ListID` varchar(40) DEFAULT NULL,
  `OverrideUOMSet_FullName` varchar(255) DEFAULT NULL,
  `Cost` decimal(13,5) DEFAULT NULL,
  `Amount` decimal(10,2) DEFAULT NULL,
  `Customer_ListID` varchar(40) DEFAULT NULL,
  `Customer_FullName` varchar(255) DEFAULT NULL,
  `Class_ListID` varchar(40) DEFAULT NULL,
  `Class_FullName` varchar(255) DEFAULT NULL,
  `BillableStatus` varchar(40) DEFAULT NULL,
  `qbsql_discov_datetime` datetime DEFAULT NULL,
  `qbsql_resync_datetime` datetime DEFAULT NULL,
  `qbsql_modify_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `qbsql_last_hash` varchar(40) DEFAULT NULL,
  `qbsql_last_qbxml` text,
  `qbsql_last_errnum` varchar(32) DEFAULT NULL,
  `qbsql_last_errmsg` varchar(255) DEFAULT NULL,
  `qbsql_enqueue_datetime` datetime DEFAULT NULL,
  `qbsql_dequeue_datetime` datetime DEFAULT NULL,
  `qbsql_audit_amount` decimal(10,0) DEFAULT NULL,
  `qbsql_audit_modified` datetime DEFAULT NULL,
  `qbsql_to_sync` tinyint(1) DEFAULT '0',
  `qbsql_to_delete` tinyint(1) DEFAULT '0',
  `qbsql_to_skip` tinyint(1) DEFAULT '0',
  `qbsql_to_void` tinyint(1) DEFAULT '0',
  `qbsql_flag_deleted` tinyint(1) DEFAULT '0',
  `qbsql_flag_skipped` tinyint(1) DEFAULT '0',
  `qbsql_flag_voided` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qb_itemreceipt_linkedtxn`
--

DROP TABLE IF EXISTS `qb_itemreceipt_linkedtxn`;
CREATE TABLE `qb_itemreceipt_linkedtxn` (
  `qbsql_id` int(10) UNSIGNED NOT NULL,
  `qbsql_username_id` int(10) UNSIGNED DEFAULT NULL,
  `qbsql_external_id` int(10) UNSIGNED DEFAULT NULL,
  `FromTxnID` varchar(40) DEFAULT NULL,
  `ItemReceipt_TxnID` varchar(40) DEFAULT NULL,
  `LinkType` text,
  `ToTxnID` varchar(40) DEFAULT NULL,
  `TxnType` varchar(40) DEFAULT NULL,
  `TxnDate` date DEFAULT NULL,
  `RefNumber` text,
  `Amount` decimal(10,2) DEFAULT NULL,
  `qbsql_discov_datetime` datetime DEFAULT NULL,
  `qbsql_resync_datetime` datetime DEFAULT NULL,
  `qbsql_modify_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `qbsql_last_hash` varchar(40) DEFAULT NULL,
  `qbsql_last_qbxml` text,
  `qbsql_last_errnum` varchar(32) DEFAULT NULL,
  `qbsql_last_errmsg` varchar(255) DEFAULT NULL,
  `qbsql_enqueue_datetime` datetime DEFAULT NULL,
  `qbsql_dequeue_datetime` datetime DEFAULT NULL,
  `qbsql_audit_amount` decimal(10,0) DEFAULT NULL,
  `qbsql_audit_modified` datetime DEFAULT NULL,
  `qbsql_to_sync` tinyint(1) DEFAULT '0',
  `qbsql_to_delete` tinyint(1) DEFAULT '0',
  `qbsql_to_skip` tinyint(1) DEFAULT '0',
  `qbsql_to_void` tinyint(1) DEFAULT '0',
  `qbsql_flag_deleted` tinyint(1) DEFAULT '0',
  `qbsql_flag_skipped` tinyint(1) DEFAULT '0',
  `qbsql_flag_voided` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qb_itemsalestax`
--

DROP TABLE IF EXISTS `qb_itemsalestax`;
CREATE TABLE `qb_itemsalestax` (
  `qbsql_id` int(10) UNSIGNED NOT NULL,
  `qbsql_username_id` int(10) UNSIGNED DEFAULT NULL,
  `qbsql_external_id` int(10) UNSIGNED DEFAULT NULL,
  `ListID` varchar(40) DEFAULT NULL,
  `TimeCreated` datetime DEFAULT NULL,
  `TimeModified` datetime DEFAULT NULL,
  `EditSequence` text,
  `Name` varchar(31) DEFAULT NULL,
  `IsActive` tinyint(1) DEFAULT '0',
  `ItemDesc` text,
  `TaxRate` decimal(12,5) DEFAULT NULL,
  `TaxVendor_ListID` varchar(40) DEFAULT NULL,
  `TaxVendor_FullName` varchar(255) DEFAULT NULL,
  `qbsql_discov_datetime` datetime DEFAULT NULL,
  `qbsql_resync_datetime` datetime DEFAULT NULL,
  `qbsql_modify_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `qbsql_last_hash` varchar(40) DEFAULT NULL,
  `qbsql_last_qbxml` text,
  `qbsql_last_errnum` varchar(32) DEFAULT NULL,
  `qbsql_last_errmsg` varchar(255) DEFAULT NULL,
  `qbsql_enqueue_datetime` datetime DEFAULT NULL,
  `qbsql_dequeue_datetime` datetime DEFAULT NULL,
  `qbsql_audit_amount` decimal(10,0) DEFAULT NULL,
  `qbsql_audit_modified` datetime DEFAULT NULL,
  `qbsql_to_sync` tinyint(1) DEFAULT '0',
  `qbsql_to_delete` tinyint(1) DEFAULT '0',
  `qbsql_to_skip` tinyint(1) DEFAULT '0',
  `qbsql_to_void` tinyint(1) DEFAULT '0',
  `qbsql_flag_deleted` tinyint(1) DEFAULT '0',
  `qbsql_flag_skipped` tinyint(1) DEFAULT '0',
  `qbsql_flag_voided` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qb_itemsalestaxgroup`
--

DROP TABLE IF EXISTS `qb_itemsalestaxgroup`;
CREATE TABLE `qb_itemsalestaxgroup` (
  `qbsql_id` int(10) UNSIGNED NOT NULL,
  `qbsql_username_id` int(10) UNSIGNED DEFAULT NULL,
  `qbsql_external_id` int(10) UNSIGNED DEFAULT NULL,
  `ListID` varchar(40) DEFAULT NULL,
  `TimeCreated` datetime DEFAULT NULL,
  `TimeModified` datetime DEFAULT NULL,
  `EditSequence` text,
  `Name` varchar(31) DEFAULT NULL,
  `IsActive` tinyint(1) DEFAULT '0',
  `ItemDesc` text,
  `qbsql_discov_datetime` datetime DEFAULT NULL,
  `qbsql_resync_datetime` datetime DEFAULT NULL,
  `qbsql_modify_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `qbsql_last_hash` varchar(40) DEFAULT NULL,
  `qbsql_last_qbxml` text,
  `qbsql_last_errnum` varchar(32) DEFAULT NULL,
  `qbsql_last_errmsg` varchar(255) DEFAULT NULL,
  `qbsql_enqueue_datetime` datetime DEFAULT NULL,
  `qbsql_dequeue_datetime` datetime DEFAULT NULL,
  `qbsql_audit_amount` decimal(10,0) DEFAULT NULL,
  `qbsql_audit_modified` datetime DEFAULT NULL,
  `qbsql_to_sync` tinyint(1) DEFAULT '0',
  `qbsql_to_delete` tinyint(1) DEFAULT '0',
  `qbsql_to_skip` tinyint(1) DEFAULT '0',
  `qbsql_to_void` tinyint(1) DEFAULT '0',
  `qbsql_flag_deleted` tinyint(1) DEFAULT '0',
  `qbsql_flag_skipped` tinyint(1) DEFAULT '0',
  `qbsql_flag_voided` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qb_itemsalestaxgroup_itemsalestax`
--

DROP TABLE IF EXISTS `qb_itemsalestaxgroup_itemsalestax`;
CREATE TABLE `qb_itemsalestaxgroup_itemsalestax` (
  `qbsql_id` int(10) UNSIGNED NOT NULL,
  `qbsql_username_id` int(10) UNSIGNED DEFAULT NULL,
  `qbsql_external_id` int(10) UNSIGNED DEFAULT NULL,
  `ItemSalesTaxGroup_ListID` varchar(40) DEFAULT NULL,
  `ListID` varchar(40) DEFAULT NULL,
  `FullName` varchar(255) DEFAULT NULL,
  `qbsql_discov_datetime` datetime DEFAULT NULL,
  `qbsql_resync_datetime` datetime DEFAULT NULL,
  `qbsql_modify_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `qbsql_last_hash` varchar(40) DEFAULT NULL,
  `qbsql_last_qbxml` text,
  `qbsql_last_errnum` varchar(32) DEFAULT NULL,
  `qbsql_last_errmsg` varchar(255) DEFAULT NULL,
  `qbsql_enqueue_datetime` datetime DEFAULT NULL,
  `qbsql_dequeue_datetime` datetime DEFAULT NULL,
  `qbsql_audit_amount` decimal(10,0) DEFAULT NULL,
  `qbsql_audit_modified` datetime DEFAULT NULL,
  `qbsql_to_sync` tinyint(1) DEFAULT '0',
  `qbsql_to_delete` tinyint(1) DEFAULT '0',
  `qbsql_to_skip` tinyint(1) DEFAULT '0',
  `qbsql_to_void` tinyint(1) DEFAULT '0',
  `qbsql_flag_deleted` tinyint(1) DEFAULT '0',
  `qbsql_flag_skipped` tinyint(1) DEFAULT '0',
  `qbsql_flag_voided` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qb_itemservice`
--

DROP TABLE IF EXISTS `qb_itemservice`;
CREATE TABLE `qb_itemservice` (
  `qbsql_id` int(10) UNSIGNED NOT NULL,
  `qbsql_username_id` int(10) UNSIGNED DEFAULT NULL,
  `qbsql_external_id` int(10) UNSIGNED DEFAULT NULL,
  `ListID` varchar(40) DEFAULT NULL,
  `TimeCreated` datetime DEFAULT NULL,
  `TimeModified` datetime DEFAULT NULL,
  `EditSequence` text,
  `Name` varchar(31) DEFAULT NULL,
  `FullName` varchar(255) DEFAULT NULL,
  `IsActive` tinyint(1) DEFAULT '0',
  `Parent_ListID` varchar(40) DEFAULT NULL,
  `Parent_FullName` varchar(255) DEFAULT NULL,
  `Sublevel` int(10) UNSIGNED DEFAULT '0',
  `UnitOfMeasureSet_ListID` varchar(40) DEFAULT NULL,
  `UnitOfMeasureSet_FullName` varchar(255) DEFAULT NULL,
  `SalesTaxCode_ListID` varchar(40) DEFAULT NULL,
  `SalesTaxCode_FullName` varchar(255) DEFAULT NULL,
  `SalesOrPurchase_Desc` text,
  `SalesOrPurchase_Price` decimal(13,5) DEFAULT NULL,
  `SalesOrPurchase_PricePercent` decimal(12,5) DEFAULT NULL,
  `SalesOrPurchase_Account_ListID` varchar(40) DEFAULT NULL,
  `SalesOrPurchase_Account_FullName` varchar(255) DEFAULT NULL,
  `SalesAndPurchase_SalesDesc` text,
  `SalesAndPurchase_SalesPrice` decimal(13,5) DEFAULT NULL,
  `SalesAndPurchase_IncomeAccount_ListID` varchar(40) DEFAULT NULL,
  `SalesAndPurchase_IncomeAccount_FullName` varchar(255) DEFAULT NULL,
  `SalesAndPurchase_PurchaseDesc` text,
  `SalesAndPurchase_PurchaseCost` decimal(13,5) DEFAULT NULL,
  `SalesAndPurchase_ExpenseAccount_ListID` varchar(40) DEFAULT NULL,
  `SalesAndPurchase_ExpenseAccount_FullName` varchar(255) DEFAULT NULL,
  `SalesAndPurchase_PrefVendor_ListID` varchar(40) DEFAULT NULL,
  `SalesAndPurchase_PrefVendor_FullName` varchar(255) DEFAULT NULL,
  `qbsql_discov_datetime` datetime DEFAULT NULL,
  `qbsql_resync_datetime` datetime DEFAULT NULL,
  `qbsql_modify_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `qbsql_last_hash` varchar(40) DEFAULT NULL,
  `qbsql_last_qbxml` text,
  `qbsql_last_errnum` varchar(32) DEFAULT NULL,
  `qbsql_last_errmsg` varchar(255) DEFAULT NULL,
  `qbsql_enqueue_datetime` datetime DEFAULT NULL,
  `qbsql_dequeue_datetime` datetime DEFAULT NULL,
  `qbsql_audit_amount` decimal(10,0) DEFAULT NULL,
  `qbsql_audit_modified` datetime DEFAULT NULL,
  `qbsql_to_sync` tinyint(1) DEFAULT '0',
  `qbsql_to_delete` tinyint(1) DEFAULT '0',
  `qbsql_to_skip` tinyint(1) DEFAULT '0',
  `qbsql_to_void` tinyint(1) DEFAULT '0',
  `qbsql_flag_deleted` tinyint(1) DEFAULT '0',
  `qbsql_flag_skipped` tinyint(1) DEFAULT '0',
  `qbsql_flag_voided` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qb_itemsubtotal`
--

DROP TABLE IF EXISTS `qb_itemsubtotal`;
CREATE TABLE `qb_itemsubtotal` (
  `qbsql_id` int(10) UNSIGNED NOT NULL,
  `qbsql_username_id` int(10) UNSIGNED DEFAULT NULL,
  `qbsql_external_id` int(10) UNSIGNED DEFAULT NULL,
  `ListID` varchar(40) DEFAULT NULL,
  `TimeCreated` datetime DEFAULT NULL,
  `TimeModified` datetime DEFAULT NULL,
  `EditSequence` text,
  `Name` varchar(31) DEFAULT NULL,
  `IsActive` tinyint(1) DEFAULT '0',
  `ItemDesc` text,
  `SpecialItemType` varchar(40) DEFAULT NULL,
  `qbsql_discov_datetime` datetime DEFAULT NULL,
  `qbsql_resync_datetime` datetime DEFAULT NULL,
  `qbsql_modify_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `qbsql_last_hash` varchar(40) DEFAULT NULL,
  `qbsql_last_qbxml` text,
  `qbsql_last_errnum` varchar(32) DEFAULT NULL,
  `qbsql_last_errmsg` varchar(255) DEFAULT NULL,
  `qbsql_enqueue_datetime` datetime DEFAULT NULL,
  `qbsql_dequeue_datetime` datetime DEFAULT NULL,
  `qbsql_audit_amount` decimal(10,0) DEFAULT NULL,
  `qbsql_audit_modified` datetime DEFAULT NULL,
  `qbsql_to_sync` tinyint(1) DEFAULT '0',
  `qbsql_to_delete` tinyint(1) DEFAULT '0',
  `qbsql_to_skip` tinyint(1) DEFAULT '0',
  `qbsql_to_void` tinyint(1) DEFAULT '0',
  `qbsql_flag_deleted` tinyint(1) DEFAULT '0',
  `qbsql_flag_skipped` tinyint(1) DEFAULT '0',
  `qbsql_flag_voided` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qb_jobtype`
--

DROP TABLE IF EXISTS `qb_jobtype`;
CREATE TABLE `qb_jobtype` (
  `qbsql_id` int(10) UNSIGNED NOT NULL,
  `qbsql_username_id` int(10) UNSIGNED DEFAULT NULL,
  `qbsql_external_id` int(10) UNSIGNED DEFAULT NULL,
  `ListID` varchar(40) DEFAULT NULL,
  `TimeCreated` datetime DEFAULT NULL,
  `TimeModified` datetime DEFAULT NULL,
  `EditSequence` text,
  `Name` text,
  `FullName` varchar(255) DEFAULT NULL,
  `IsActive` tinyint(1) DEFAULT '0',
  `Parent_ListID` varchar(40) DEFAULT NULL,
  `Parent_FullName` varchar(255) DEFAULT NULL,
  `Sublevel` int(10) UNSIGNED DEFAULT '0',
  `qbsql_discov_datetime` datetime DEFAULT NULL,
  `qbsql_resync_datetime` datetime DEFAULT NULL,
  `qbsql_modify_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `qbsql_last_hash` varchar(40) DEFAULT NULL,
  `qbsql_last_qbxml` text,
  `qbsql_last_errnum` varchar(32) DEFAULT NULL,
  `qbsql_last_errmsg` varchar(255) DEFAULT NULL,
  `qbsql_enqueue_datetime` datetime DEFAULT NULL,
  `qbsql_dequeue_datetime` datetime DEFAULT NULL,
  `qbsql_audit_amount` decimal(10,0) DEFAULT NULL,
  `qbsql_audit_modified` datetime DEFAULT NULL,
  `qbsql_to_sync` tinyint(1) DEFAULT '0',
  `qbsql_to_delete` tinyint(1) DEFAULT '0',
  `qbsql_to_skip` tinyint(1) DEFAULT '0',
  `qbsql_to_void` tinyint(1) DEFAULT '0',
  `qbsql_flag_deleted` tinyint(1) DEFAULT '0',
  `qbsql_flag_skipped` tinyint(1) DEFAULT '0',
  `qbsql_flag_voided` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qb_journalentry`
--

DROP TABLE IF EXISTS `qb_journalentry`;
CREATE TABLE `qb_journalentry` (
  `qbsql_id` int(10) UNSIGNED NOT NULL,
  `qbsql_username_id` int(10) UNSIGNED DEFAULT NULL,
  `qbsql_external_id` int(10) UNSIGNED DEFAULT NULL,
  `TxnID` varchar(40) DEFAULT NULL,
  `TimeCreated` datetime DEFAULT NULL,
  `TimeModified` datetime DEFAULT NULL,
  `EditSequence` text,
  `TxnNumber` int(10) UNSIGNED DEFAULT '0',
  `TxnDate` date DEFAULT NULL,
  `RefNumber` varchar(11) DEFAULT NULL,
  `IsAdjustment` tinyint(1) DEFAULT '0',
  `qbsql_discov_datetime` datetime DEFAULT NULL,
  `qbsql_resync_datetime` datetime DEFAULT NULL,
  `qbsql_modify_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `qbsql_last_hash` varchar(40) DEFAULT NULL,
  `qbsql_last_qbxml` text,
  `qbsql_last_errnum` varchar(32) DEFAULT NULL,
  `qbsql_last_errmsg` varchar(255) DEFAULT NULL,
  `qbsql_enqueue_datetime` datetime DEFAULT NULL,
  `qbsql_dequeue_datetime` datetime DEFAULT NULL,
  `qbsql_audit_amount` decimal(10,0) DEFAULT NULL,
  `qbsql_audit_modified` datetime DEFAULT NULL,
  `qbsql_to_sync` tinyint(1) DEFAULT '0',
  `qbsql_to_delete` tinyint(1) DEFAULT '0',
  `qbsql_to_skip` tinyint(1) DEFAULT '0',
  `qbsql_to_void` tinyint(1) DEFAULT '0',
  `qbsql_flag_deleted` tinyint(1) DEFAULT '0',
  `qbsql_flag_skipped` tinyint(1) DEFAULT '0',
  `qbsql_flag_voided` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qb_journalentry_journalcreditline`
--

DROP TABLE IF EXISTS `qb_journalentry_journalcreditline`;
CREATE TABLE `qb_journalentry_journalcreditline` (
  `qbsql_id` int(10) UNSIGNED NOT NULL,
  `qbsql_username_id` int(10) UNSIGNED DEFAULT NULL,
  `qbsql_external_id` int(10) UNSIGNED DEFAULT NULL,
  `JournalEntry_TxnID` varchar(40) DEFAULT NULL,
  `SortOrder` int(10) UNSIGNED DEFAULT '0',
  `TxnLineID` varchar(40) DEFAULT NULL,
  `Account_ListID` varchar(40) DEFAULT NULL,
  `Account_FullName` varchar(255) DEFAULT NULL,
  `Amount` decimal(10,2) DEFAULT NULL,
  `Memo` text,
  `Entity_ListID` varchar(40) DEFAULT NULL,
  `Entity_FullName` varchar(255) DEFAULT NULL,
  `Class_ListID` varchar(40) DEFAULT NULL,
  `Class_FullName` varchar(255) DEFAULT NULL,
  `BillableStatus` varchar(40) DEFAULT NULL,
  `qbsql_discov_datetime` datetime DEFAULT NULL,
  `qbsql_resync_datetime` datetime DEFAULT NULL,
  `qbsql_modify_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `qbsql_last_hash` varchar(40) DEFAULT NULL,
  `qbsql_last_qbxml` text,
  `qbsql_last_errnum` varchar(32) DEFAULT NULL,
  `qbsql_last_errmsg` varchar(255) DEFAULT NULL,
  `qbsql_enqueue_datetime` datetime DEFAULT NULL,
  `qbsql_dequeue_datetime` datetime DEFAULT NULL,
  `qbsql_audit_amount` decimal(10,0) DEFAULT NULL,
  `qbsql_audit_modified` datetime DEFAULT NULL,
  `qbsql_to_sync` tinyint(1) DEFAULT '0',
  `qbsql_to_delete` tinyint(1) DEFAULT '0',
  `qbsql_to_skip` tinyint(1) DEFAULT '0',
  `qbsql_to_void` tinyint(1) DEFAULT '0',
  `qbsql_flag_deleted` tinyint(1) DEFAULT '0',
  `qbsql_flag_skipped` tinyint(1) DEFAULT '0',
  `qbsql_flag_voided` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qb_journalentry_journaldebitline`
--

DROP TABLE IF EXISTS `qb_journalentry_journaldebitline`;
CREATE TABLE `qb_journalentry_journaldebitline` (
  `qbsql_id` int(10) UNSIGNED NOT NULL,
  `qbsql_username_id` int(10) UNSIGNED DEFAULT NULL,
  `qbsql_external_id` int(10) UNSIGNED DEFAULT NULL,
  `JournalEntry_TxnID` varchar(40) DEFAULT NULL,
  `SortOrder` int(10) UNSIGNED DEFAULT '0',
  `TxnLineID` varchar(40) DEFAULT NULL,
  `Account_ListID` varchar(40) DEFAULT NULL,
  `Account_FullName` varchar(255) DEFAULT NULL,
  `Amount` decimal(10,2) DEFAULT NULL,
  `Memo` text,
  `Entity_ListID` varchar(40) DEFAULT NULL,
  `Entity_FullName` varchar(255) DEFAULT NULL,
  `Class_ListID` varchar(40) DEFAULT NULL,
  `Class_FullName` varchar(255) DEFAULT NULL,
  `BillableStatus` varchar(40) DEFAULT NULL,
  `qbsql_discov_datetime` datetime DEFAULT NULL,
  `qbsql_resync_datetime` datetime DEFAULT NULL,
  `qbsql_modify_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `qbsql_last_hash` varchar(40) DEFAULT NULL,
  `qbsql_last_qbxml` text,
  `qbsql_last_errnum` varchar(32) DEFAULT NULL,
  `qbsql_last_errmsg` varchar(255) DEFAULT NULL,
  `qbsql_enqueue_datetime` datetime DEFAULT NULL,
  `qbsql_dequeue_datetime` datetime DEFAULT NULL,
  `qbsql_audit_amount` decimal(10,0) DEFAULT NULL,
  `qbsql_audit_modified` datetime DEFAULT NULL,
  `qbsql_to_sync` tinyint(1) DEFAULT '0',
  `qbsql_to_delete` tinyint(1) DEFAULT '0',
  `qbsql_to_skip` tinyint(1) DEFAULT '0',
  `qbsql_to_void` tinyint(1) DEFAULT '0',
  `qbsql_flag_deleted` tinyint(1) DEFAULT '0',
  `qbsql_flag_skipped` tinyint(1) DEFAULT '0',
  `qbsql_flag_voided` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qb_paymentmethod`
--

DROP TABLE IF EXISTS `qb_paymentmethod`;
CREATE TABLE `qb_paymentmethod` (
  `qbsql_id` int(10) UNSIGNED NOT NULL,
  `qbsql_username_id` int(10) UNSIGNED DEFAULT NULL,
  `qbsql_external_id` int(10) UNSIGNED DEFAULT NULL,
  `ListID` varchar(40) DEFAULT NULL,
  `TimeCreated` datetime DEFAULT NULL,
  `TimeModified` datetime DEFAULT NULL,
  `EditSequence` text,
  `Name` varchar(31) DEFAULT NULL,
  `IsActive` tinyint(1) DEFAULT '0',
  `PaymentMethodType` varchar(40) DEFAULT NULL,
  `qbsql_discov_datetime` datetime DEFAULT NULL,
  `qbsql_resync_datetime` datetime DEFAULT NULL,
  `qbsql_modify_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `qbsql_last_hash` varchar(40) DEFAULT NULL,
  `qbsql_last_qbxml` text,
  `qbsql_last_errnum` varchar(32) DEFAULT NULL,
  `qbsql_last_errmsg` varchar(255) DEFAULT NULL,
  `qbsql_enqueue_datetime` datetime DEFAULT NULL,
  `qbsql_dequeue_datetime` datetime DEFAULT NULL,
  `qbsql_audit_amount` decimal(10,0) DEFAULT NULL,
  `qbsql_audit_modified` datetime DEFAULT NULL,
  `qbsql_to_sync` tinyint(1) DEFAULT '0',
  `qbsql_to_delete` tinyint(1) DEFAULT '0',
  `qbsql_to_skip` tinyint(1) DEFAULT '0',
  `qbsql_to_void` tinyint(1) DEFAULT '0',
  `qbsql_flag_deleted` tinyint(1) DEFAULT '0',
  `qbsql_flag_skipped` tinyint(1) DEFAULT '0',
  `qbsql_flag_voided` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qb_payrollitemwage`
--

DROP TABLE IF EXISTS `qb_payrollitemwage`;
CREATE TABLE `qb_payrollitemwage` (
  `qbsql_id` int(10) UNSIGNED NOT NULL,
  `qbsql_username_id` int(10) UNSIGNED DEFAULT NULL,
  `qbsql_external_id` int(10) UNSIGNED DEFAULT NULL,
  `ListID` varchar(40) DEFAULT NULL,
  `TimeCreated` datetime DEFAULT NULL,
  `TimeModified` datetime DEFAULT NULL,
  `EditSequence` text,
  `Name` text,
  `IsActive` tinyint(1) DEFAULT '0',
  `WageType` varchar(40) DEFAULT NULL,
  `ExpenseAccount_ListID` varchar(40) DEFAULT NULL,
  `ExpenseAccount_FullName` varchar(255) DEFAULT NULL,
  `qbsql_discov_datetime` datetime DEFAULT NULL,
  `qbsql_resync_datetime` datetime DEFAULT NULL,
  `qbsql_modify_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `qbsql_last_hash` varchar(40) DEFAULT NULL,
  `qbsql_last_qbxml` text,
  `qbsql_last_errnum` varchar(32) DEFAULT NULL,
  `qbsql_last_errmsg` varchar(255) DEFAULT NULL,
  `qbsql_enqueue_datetime` datetime DEFAULT NULL,
  `qbsql_dequeue_datetime` datetime DEFAULT NULL,
  `qbsql_audit_amount` decimal(10,0) DEFAULT NULL,
  `qbsql_audit_modified` datetime DEFAULT NULL,
  `qbsql_to_sync` tinyint(1) DEFAULT '0',
  `qbsql_to_delete` tinyint(1) DEFAULT '0',
  `qbsql_to_skip` tinyint(1) DEFAULT '0',
  `qbsql_to_void` tinyint(1) DEFAULT '0',
  `qbsql_flag_deleted` tinyint(1) DEFAULT '0',
  `qbsql_flag_skipped` tinyint(1) DEFAULT '0',
  `qbsql_flag_voided` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qb_preferences`
--

DROP TABLE IF EXISTS `qb_preferences`;
CREATE TABLE `qb_preferences` (
  `qbsql_id` int(10) UNSIGNED NOT NULL,
  `qbsql_username_id` int(10) UNSIGNED DEFAULT NULL,
  `qbsql_external_id` int(10) UNSIGNED DEFAULT NULL,
  `AccountingPrefs_IsUsingAccountNumbers` tinyint(1) DEFAULT '0',
  `AccountingPrefs_IsRequiringAccounts` tinyint(1) DEFAULT '0',
  `AccountingPrefs_IsUsingClassTracking` tinyint(1) DEFAULT '0',
  `AccountingPrefs_IsUsingAuditTrail` tinyint(1) DEFAULT '0',
  `AccountingPrefs_IsAssigningJournalEntryNumbers` tinyint(1) DEFAULT '0',
  `AccountingPrefs_ClosingDate` date DEFAULT NULL,
  `FinanceChargePrefs_AnnualInterestRate` decimal(12,5) DEFAULT NULL,
  `FinanceChargePrefs_MinFinanceCharge` decimal(10,2) DEFAULT NULL,
  `FinanceChargePrefs_GracePeriod` int(10) UNSIGNED DEFAULT '0',
  `FinanceChargePrefs_FinanceChargeAccount_ListID` varchar(40) DEFAULT NULL,
  `FinanceChargePrefs_FinanceChargeAccount_FullName` varchar(255) DEFAULT NULL,
  `FinanceChargePrefs_IsAssessingForOverdueCharges` tinyint(1) DEFAULT '0',
  `FinanceChargePrefs_CalculateChargesFrom` varchar(40) DEFAULT NULL,
  `FinanceChargePrefs_IsMarkedToBePrinted` tinyint(1) DEFAULT '0',
  `JobsAndEstimatesPrefs_IsUsingEstimates` tinyint(1) DEFAULT '0',
  `JobsAndEstimatesPrefs_IsUsingProgressInvoicing` tinyint(1) DEFAULT '0',
  `JobsAndEstimatesPrefs_IsPrintingItemsWithZeroAmounts` tinyint(1) DEFAULT '0',
  `MultiCurrencyPrefs_IsMultiCurrencyOn` tinyint(1) DEFAULT '0',
  `MultiCurrencyPrefs_HomeCurrency_ListID` varchar(40) DEFAULT NULL,
  `MultiCurrencyPrefs_HomeCurrency_FullName` varchar(255) DEFAULT NULL,
  `MultiLocationInventoryPrefs_IsMultiLocationInventoryAvailable` tinyint(1) DEFAULT '0',
  `MultiLocationInventoryPrefs_IsMultiLocationInventoryEnabled` tinyint(1) DEFAULT '0',
  `PurchasesAndVendorsPrefs_IsUsingInventory` tinyint(1) DEFAULT '0',
  `PurchasesAndVendorsPrefs_DaysBillsAreDue` int(10) UNSIGNED DEFAULT '0',
  `PurchasesAndVendorsPrefs_IsAutomaticallyUsingDiscounts` tinyint(1) DEFAULT '0',
  `PurchasesAndVendorsPrefs_DefaultDiscountAccount_ListID` varchar(40) DEFAULT NULL,
  `PurchasesAndVendorsPrefs_DefaultDiscountAccount_FullName` varchar(255) DEFAULT NULL,
  `ReportsPrefs_AgingReportBasis` varchar(40) DEFAULT NULL,
  `ReportsPrefs_SummaryReportBasis` varchar(40) DEFAULT NULL,
  `SalesAndCustomersPrefs_DefaultShipMethod_ListID` varchar(40) DEFAULT NULL,
  `SalesAndCustomersPrefs_DefaultShipMethod_FullName` varchar(255) DEFAULT NULL,
  `SalesAndCustomersPrefs_DefaultFOB` text,
  `SalesAndCustomersPrefs_DefaultMarkup` decimal(12,5) DEFAULT NULL,
  `SalesAndCustomersPrefs_IsTrackingReimbursedExpensesAsIncome` tinyint(1) DEFAULT '0',
  `SalesAndCustomersPrefs_IsAutoApplyingPayments` tinyint(1) DEFAULT '0',
  `SalesAndCustomersPrefs_PriceLevels_IsUsingPriceLevels` tinyint(1) DEFAULT '0',
  `SalesAndCustomersPrefs_PriceLevels_IsRoundingSalesPriceUp` tinyint(1) DEFAULT '0',
  `SalesTaxPrefs_DefaultItemSalesTax_ListID` varchar(40) DEFAULT NULL,
  `SalesTaxPrefs_DefaultItemSalesTax_FullName` varchar(255) DEFAULT NULL,
  `SalesTaxPrefs_PaySalesTax` varchar(40) DEFAULT NULL,
  `SalesTaxPrefs_DefaultTaxableSalesTaxCode_ListID` varchar(40) DEFAULT NULL,
  `SalesTaxPrefs_DefaultTaxableSalesTaxCode_FullName` varchar(255) DEFAULT NULL,
  `SalesTaxPrefs_DefaultNonTaxableSalesTaxCode_ListID` varchar(40) DEFAULT NULL,
  `SalesTaxPrefs_DefaultNonTaxableSalesTaxCode_FullName` varchar(255) DEFAULT NULL,
  `SalesTaxPrefs_IsUsingVendorTaxCode` tinyint(1) DEFAULT '0',
  `SalesTaxPrefs_IsUsingCustomerTaxCode` tinyint(1) DEFAULT '0',
  `SalesTaxPrefs_IsUsingAmountsIncludeTax` tinyint(1) DEFAULT '0',
  `TimeTrackingPrefs_FirstDayOfWeek` varchar(40) DEFAULT NULL,
  `CurrentAppAccessRights_IsAutomaticLoginAllowed` tinyint(1) DEFAULT '0',
  `CurrentAppAccessRights_AutomaticLoginUserName` text,
  `CurrentAppAccessRights_IsPersonalDataAccessAllowed` tinyint(1) DEFAULT '0',
  `qbsql_discov_datetime` datetime DEFAULT NULL,
  `qbsql_resync_datetime` datetime DEFAULT NULL,
  `qbsql_modify_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `qbsql_last_hash` varchar(40) DEFAULT NULL,
  `qbsql_last_qbxml` text,
  `qbsql_last_errnum` varchar(32) DEFAULT NULL,
  `qbsql_last_errmsg` varchar(255) DEFAULT NULL,
  `qbsql_enqueue_datetime` datetime DEFAULT NULL,
  `qbsql_dequeue_datetime` datetime DEFAULT NULL,
  `qbsql_audit_amount` decimal(10,0) DEFAULT NULL,
  `qbsql_audit_modified` datetime DEFAULT NULL,
  `qbsql_to_sync` tinyint(1) DEFAULT '0',
  `qbsql_to_delete` tinyint(1) DEFAULT '0',
  `qbsql_to_skip` tinyint(1) DEFAULT '0',
  `qbsql_to_void` tinyint(1) DEFAULT '0',
  `qbsql_flag_deleted` tinyint(1) DEFAULT '0',
  `qbsql_flag_skipped` tinyint(1) DEFAULT '0',
  `qbsql_flag_voided` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qb_pricelevel`
--

DROP TABLE IF EXISTS `qb_pricelevel`;
CREATE TABLE `qb_pricelevel` (
  `qbsql_id` int(10) UNSIGNED NOT NULL,
  `qbsql_username_id` int(10) UNSIGNED DEFAULT NULL,
  `qbsql_external_id` int(10) UNSIGNED DEFAULT NULL,
  `ListID` varchar(40) DEFAULT NULL,
  `TimeCreated` datetime DEFAULT NULL,
  `TimeModified` datetime DEFAULT NULL,
  `EditSequence` text,
  `Name` text,
  `IsActive` tinyint(1) DEFAULT '0',
  `PriceLevelType` varchar(40) DEFAULT NULL,
  `PriceLevelFixedPercentage` decimal(12,5) DEFAULT NULL,
  `qbsql_discov_datetime` datetime DEFAULT NULL,
  `qbsql_resync_datetime` datetime DEFAULT NULL,
  `qbsql_modify_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `qbsql_last_hash` varchar(40) DEFAULT NULL,
  `qbsql_last_qbxml` text,
  `qbsql_last_errnum` varchar(32) DEFAULT NULL,
  `qbsql_last_errmsg` varchar(255) DEFAULT NULL,
  `qbsql_enqueue_datetime` datetime DEFAULT NULL,
  `qbsql_dequeue_datetime` datetime DEFAULT NULL,
  `qbsql_audit_amount` decimal(10,0) DEFAULT NULL,
  `qbsql_audit_modified` datetime DEFAULT NULL,
  `qbsql_to_sync` tinyint(1) DEFAULT '0',
  `qbsql_to_delete` tinyint(1) DEFAULT '0',
  `qbsql_to_skip` tinyint(1) DEFAULT '0',
  `qbsql_to_void` tinyint(1) DEFAULT '0',
  `qbsql_flag_deleted` tinyint(1) DEFAULT '0',
  `qbsql_flag_skipped` tinyint(1) DEFAULT '0',
  `qbsql_flag_voided` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qb_pricelevel_pricelevelperitem`
--

DROP TABLE IF EXISTS `qb_pricelevel_pricelevelperitem`;
CREATE TABLE `qb_pricelevel_pricelevelperitem` (
  `qbsql_id` int(10) UNSIGNED NOT NULL,
  `qbsql_username_id` int(10) UNSIGNED DEFAULT NULL,
  `qbsql_external_id` int(10) UNSIGNED DEFAULT NULL,
  `PriceLevel_ListID` varchar(40) DEFAULT NULL,
  `Item_ListID` varchar(40) DEFAULT NULL,
  `Item_FullName` varchar(255) DEFAULT NULL,
  `CustomPrice` decimal(13,5) DEFAULT NULL,
  `CustomPricePercent` decimal(12,5) DEFAULT NULL,
  `qbsql_discov_datetime` datetime DEFAULT NULL,
  `qbsql_resync_datetime` datetime DEFAULT NULL,
  `qbsql_modify_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `qbsql_last_hash` varchar(40) DEFAULT NULL,
  `qbsql_last_qbxml` text,
  `qbsql_last_errnum` varchar(32) DEFAULT NULL,
  `qbsql_last_errmsg` varchar(255) DEFAULT NULL,
  `qbsql_enqueue_datetime` datetime DEFAULT NULL,
  `qbsql_dequeue_datetime` datetime DEFAULT NULL,
  `qbsql_audit_amount` decimal(10,0) DEFAULT NULL,
  `qbsql_audit_modified` datetime DEFAULT NULL,
  `qbsql_to_sync` tinyint(1) DEFAULT '0',
  `qbsql_to_delete` tinyint(1) DEFAULT '0',
  `qbsql_to_skip` tinyint(1) DEFAULT '0',
  `qbsql_to_void` tinyint(1) DEFAULT '0',
  `qbsql_flag_deleted` tinyint(1) DEFAULT '0',
  `qbsql_flag_skipped` tinyint(1) DEFAULT '0',
  `qbsql_flag_voided` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qb_purchaseorder`
--

DROP TABLE IF EXISTS `qb_purchaseorder`;
CREATE TABLE `qb_purchaseorder` (
  `qbsql_id` int(10) UNSIGNED NOT NULL,
  `qbsql_username_id` int(10) UNSIGNED DEFAULT NULL,
  `qbsql_external_id` int(10) UNSIGNED DEFAULT NULL,
  `TxnID` varchar(40) DEFAULT NULL,
  `TimeCreated` datetime DEFAULT NULL,
  `TimeModified` datetime DEFAULT NULL,
  `EditSequence` text,
  `TxnNumber` int(10) UNSIGNED DEFAULT '0',
  `Vendor_ListID` varchar(40) DEFAULT NULL,
  `Vendor_FullName` varchar(255) DEFAULT NULL,
  `Class_ListID` varchar(40) DEFAULT NULL,
  `Class_FullName` varchar(255) DEFAULT NULL,
  `ShipToEntity_ListID` varchar(40) DEFAULT NULL,
  `ShipToEntity_FullName` varchar(255) DEFAULT NULL,
  `Template_ListID` varchar(40) DEFAULT NULL,
  `Template_FullName` varchar(255) DEFAULT NULL,
  `TxnDate` date DEFAULT NULL,
  `RefNumber` varchar(11) DEFAULT NULL,
  `VendorAddress_Addr1` varchar(41) DEFAULT NULL,
  `VendorAddress_Addr2` varchar(41) DEFAULT NULL,
  `VendorAddress_Addr3` varchar(41) DEFAULT NULL,
  `VendorAddress_Addr4` varchar(41) DEFAULT NULL,
  `VendorAddress_Addr5` varchar(41) DEFAULT NULL,
  `VendorAddress_City` varchar(31) DEFAULT NULL,
  `VendorAddress_State` varchar(21) DEFAULT NULL,
  `VendorAddress_PostalCode` varchar(13) DEFAULT NULL,
  `VendorAddress_Country` varchar(31) DEFAULT NULL,
  `VendorAddress_Note` varchar(41) DEFAULT NULL,
  `VendorAddressBlock_Addr1` text,
  `VendorAddressBlock_Addr2` text,
  `VendorAddressBlock_Addr3` text,
  `VendorAddressBlock_Addr4` text,
  `VendorAddressBlock_Addr5` text,
  `ShipAddress_Addr1` varchar(41) DEFAULT NULL,
  `ShipAddress_Addr2` varchar(41) DEFAULT NULL,
  `ShipAddress_Addr3` varchar(41) DEFAULT NULL,
  `ShipAddress_Addr4` varchar(41) DEFAULT NULL,
  `ShipAddress_Addr5` varchar(41) DEFAULT NULL,
  `ShipAddress_City` varchar(31) DEFAULT NULL,
  `ShipAddress_State` varchar(21) DEFAULT NULL,
  `ShipAddress_PostalCode` varchar(13) DEFAULT NULL,
  `ShipAddress_Country` varchar(31) DEFAULT NULL,
  `ShipAddress_Note` varchar(41) DEFAULT NULL,
  `ShipAddressBlock_Addr1` text,
  `ShipAddressBlock_Addr2` text,
  `ShipAddressBlock_Addr3` text,
  `ShipAddressBlock_Addr4` text,
  `ShipAddressBlock_Addr5` text,
  `Terms_ListID` varchar(40) DEFAULT NULL,
  `Terms_FullName` varchar(255) DEFAULT NULL,
  `DueDate` date DEFAULT NULL,
  `ExpectedDate` date DEFAULT NULL,
  `ShipMethod_ListID` varchar(40) DEFAULT NULL,
  `ShipMethod_FullName` varchar(255) DEFAULT NULL,
  `FOB` varchar(13) DEFAULT NULL,
  `TotalAmount` decimal(10,2) DEFAULT NULL,
  `Currency_ListID` varchar(40) DEFAULT NULL,
  `Currency_FullName` varchar(255) DEFAULT NULL,
  `ExchangeRate` text,
  `TotalAmountInHomeCurrency` decimal(10,2) DEFAULT NULL,
  `IsManuallyClosed` tinyint(1) DEFAULT NULL,
  `IsFullyReceived` tinyint(1) DEFAULT NULL,
  `Memo` text,
  `VendorMsg` varchar(99) DEFAULT NULL,
  `IsToBePrinted` tinyint(1) DEFAULT NULL,
  `IsToBeEmailed` tinyint(1) DEFAULT NULL,
  `Other1` varchar(25) DEFAULT NULL,
  `Other2` varchar(29) DEFAULT NULL,
  `qbsql_discov_datetime` datetime DEFAULT NULL,
  `qbsql_resync_datetime` datetime DEFAULT NULL,
  `qbsql_modify_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `qbsql_last_hash` varchar(40) DEFAULT NULL,
  `qbsql_last_qbxml` text,
  `qbsql_last_errnum` varchar(32) DEFAULT NULL,
  `qbsql_last_errmsg` varchar(255) DEFAULT NULL,
  `qbsql_enqueue_datetime` datetime DEFAULT NULL,
  `qbsql_dequeue_datetime` datetime DEFAULT NULL,
  `qbsql_audit_amount` decimal(10,0) DEFAULT NULL,
  `qbsql_audit_modified` datetime DEFAULT NULL,
  `qbsql_to_sync` tinyint(1) DEFAULT '0',
  `qbsql_to_delete` tinyint(1) DEFAULT '0',
  `qbsql_to_skip` tinyint(1) DEFAULT '0',
  `qbsql_to_void` tinyint(1) DEFAULT '0',
  `qbsql_flag_deleted` tinyint(1) DEFAULT '0',
  `qbsql_flag_skipped` tinyint(1) DEFAULT '0',
  `qbsql_flag_voided` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qb_purchaseorder_linkedtxn`
--

DROP TABLE IF EXISTS `qb_purchaseorder_linkedtxn`;
CREATE TABLE `qb_purchaseorder_linkedtxn` (
  `qbsql_id` int(10) UNSIGNED NOT NULL,
  `qbsql_username_id` int(10) UNSIGNED DEFAULT NULL,
  `qbsql_external_id` int(10) UNSIGNED DEFAULT NULL,
  `FromTxnID` varchar(40) DEFAULT NULL,
  `PurchaseOrder_TxnID` varchar(40) DEFAULT NULL,
  `LinkType` text,
  `ToTxnID` varchar(40) DEFAULT NULL,
  `TxnType` varchar(40) DEFAULT NULL,
  `TxnDate` date DEFAULT NULL,
  `RefNumber` text,
  `Amount` decimal(10,2) DEFAULT NULL,
  `qbsql_discov_datetime` datetime DEFAULT NULL,
  `qbsql_resync_datetime` datetime DEFAULT NULL,
  `qbsql_modify_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `qbsql_last_hash` varchar(40) DEFAULT NULL,
  `qbsql_last_qbxml` text,
  `qbsql_last_errnum` varchar(32) DEFAULT NULL,
  `qbsql_last_errmsg` varchar(255) DEFAULT NULL,
  `qbsql_enqueue_datetime` datetime DEFAULT NULL,
  `qbsql_dequeue_datetime` datetime DEFAULT NULL,
  `qbsql_audit_amount` decimal(10,0) DEFAULT NULL,
  `qbsql_audit_modified` datetime DEFAULT NULL,
  `qbsql_to_sync` tinyint(1) DEFAULT '0',
  `qbsql_to_delete` tinyint(1) DEFAULT '0',
  `qbsql_to_skip` tinyint(1) DEFAULT '0',
  `qbsql_to_void` tinyint(1) DEFAULT '0',
  `qbsql_flag_deleted` tinyint(1) DEFAULT '0',
  `qbsql_flag_skipped` tinyint(1) DEFAULT '0',
  `qbsql_flag_voided` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qb_purchaseorder_purchaseorderline`
--

DROP TABLE IF EXISTS `qb_purchaseorder_purchaseorderline`;
CREATE TABLE `qb_purchaseorder_purchaseorderline` (
  `qbsql_id` int(10) UNSIGNED NOT NULL,
  `qbsql_username_id` int(10) UNSIGNED DEFAULT NULL,
  `qbsql_external_id` int(10) UNSIGNED DEFAULT NULL,
  `PurchaseOrder_TxnID` varchar(40) DEFAULT NULL,
  `SortOrder` int(10) UNSIGNED DEFAULT '0',
  `TxnLineID` varchar(40) DEFAULT NULL,
  `Item_ListID` varchar(40) DEFAULT NULL,
  `Item_FullName` varchar(255) DEFAULT NULL,
  `ManufacturerPartNumber` text,
  `Descrip` text,
  `Quantity` decimal(12,5) DEFAULT NULL,
  `UnitOfMeasure` text,
  `OverrideUOMSet_ListID` varchar(40) DEFAULT NULL,
  `OverrideUOMSet_FullName` varchar(255) DEFAULT NULL,
  `Rate` decimal(13,5) DEFAULT NULL,
  `Class_ListID` varchar(40) DEFAULT NULL,
  `Class_FullName` varchar(255) DEFAULT NULL,
  `Amount` decimal(10,2) DEFAULT NULL,
  `Customer_ListID` varchar(40) DEFAULT NULL,
  `Customer_FullName` varchar(255) DEFAULT NULL,
  `ServiceDate` date DEFAULT NULL,
  `ReceivedQuantity` decimal(12,5) DEFAULT NULL,
  `IsManuallyClosed` tinyint(1) DEFAULT NULL,
  `Other1` text,
  `Other2` text,
  `qbsql_discov_datetime` datetime DEFAULT NULL,
  `qbsql_resync_datetime` datetime DEFAULT NULL,
  `qbsql_modify_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `qbsql_last_hash` varchar(40) DEFAULT NULL,
  `qbsql_last_qbxml` text,
  `qbsql_last_errnum` varchar(32) DEFAULT NULL,
  `qbsql_last_errmsg` varchar(255) DEFAULT NULL,
  `qbsql_enqueue_datetime` datetime DEFAULT NULL,
  `qbsql_dequeue_datetime` datetime DEFAULT NULL,
  `qbsql_audit_amount` decimal(10,0) DEFAULT NULL,
  `qbsql_audit_modified` datetime DEFAULT NULL,
  `qbsql_to_sync` tinyint(1) DEFAULT '0',
  `qbsql_to_delete` tinyint(1) DEFAULT '0',
  `qbsql_to_skip` tinyint(1) DEFAULT '0',
  `qbsql_to_void` tinyint(1) DEFAULT '0',
  `qbsql_flag_deleted` tinyint(1) DEFAULT '0',
  `qbsql_flag_skipped` tinyint(1) DEFAULT '0',
  `qbsql_flag_voided` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qb_purchaseorder_purchaseorderlinegroup`
--

DROP TABLE IF EXISTS `qb_purchaseorder_purchaseorderlinegroup`;
CREATE TABLE `qb_purchaseorder_purchaseorderlinegroup` (
  `qbsql_id` int(10) UNSIGNED NOT NULL,
  `qbsql_username_id` int(10) UNSIGNED DEFAULT NULL,
  `qbsql_external_id` int(10) UNSIGNED DEFAULT NULL,
  `PurchaseOrder_TxnID` varchar(40) DEFAULT NULL,
  `SortOrder` int(10) UNSIGNED DEFAULT '0',
  `TxnLineID` varchar(40) DEFAULT NULL,
  `ItemGroup_ListID` varchar(40) DEFAULT NULL,
  `ItemGroup_FullName` varchar(255) DEFAULT NULL,
  `Descrip` text,
  `Quantity` decimal(12,5) DEFAULT '0.00000',
  `UnitOfMeasure` text,
  `OverrideUOMSet_ListID` varchar(40) DEFAULT NULL,
  `OverrideUOMSet_FullName` varchar(255) DEFAULT NULL,
  `IsPrintItemsInGroup` tinyint(1) DEFAULT '0',
  `TotalAmount` decimal(10,2) DEFAULT NULL,
  `qbsql_discov_datetime` datetime DEFAULT NULL,
  `qbsql_resync_datetime` datetime DEFAULT NULL,
  `qbsql_modify_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `qbsql_last_hash` varchar(40) DEFAULT NULL,
  `qbsql_last_qbxml` text,
  `qbsql_last_errnum` varchar(32) DEFAULT NULL,
  `qbsql_last_errmsg` varchar(255) DEFAULT NULL,
  `qbsql_enqueue_datetime` datetime DEFAULT NULL,
  `qbsql_dequeue_datetime` datetime DEFAULT NULL,
  `qbsql_audit_amount` decimal(10,0) DEFAULT NULL,
  `qbsql_audit_modified` datetime DEFAULT NULL,
  `qbsql_to_sync` tinyint(1) DEFAULT '0',
  `qbsql_to_delete` tinyint(1) DEFAULT '0',
  `qbsql_to_skip` tinyint(1) DEFAULT '0',
  `qbsql_to_void` tinyint(1) DEFAULT '0',
  `qbsql_flag_deleted` tinyint(1) DEFAULT '0',
  `qbsql_flag_skipped` tinyint(1) DEFAULT '0',
  `qbsql_flag_voided` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qb_purchaseorder_purchaseorderlinegroup_purchaseorderline`
--

DROP TABLE IF EXISTS `qb_purchaseorder_purchaseorderlinegroup_purchaseorderline`;
CREATE TABLE `qb_purchaseorder_purchaseorderlinegroup_purchaseorderline` (
  `qbsql_id` int(10) UNSIGNED NOT NULL,
  `qbsql_username_id` int(10) UNSIGNED DEFAULT NULL,
  `qbsql_external_id` int(10) UNSIGNED DEFAULT NULL,
  `PurchaseOrder_TxnID` varchar(40) DEFAULT NULL,
  `PurchaseOrder_PurchaseOrderLineGroup_TxnLineID` text,
  `SortOrder` int(10) UNSIGNED DEFAULT '0',
  `TxnLineID` varchar(40) DEFAULT NULL,
  `Item_ListID` varchar(40) DEFAULT NULL,
  `Item_FullName` varchar(255) DEFAULT NULL,
  `ManufacturerPartNumber` text,
  `Descrip` text,
  `Quantity` decimal(12,5) DEFAULT '0.00000',
  `UnitOfMeasure` text,
  `OverrideUOMSet_ListID` varchar(40) DEFAULT NULL,
  `OverrideUOMSet_FullName` varchar(255) DEFAULT NULL,
  `Rate` decimal(13,5) DEFAULT NULL,
  `Class_ListID` varchar(40) DEFAULT NULL,
  `Class_FullName` varchar(255) DEFAULT NULL,
  `Amount` decimal(10,2) DEFAULT NULL,
  `Customer_ListID` varchar(40) DEFAULT NULL,
  `Customer_FullName` varchar(255) DEFAULT NULL,
  `ServiceDate` date DEFAULT NULL,
  `ReceivedQuantity` decimal(12,5) DEFAULT '0.00000',
  `IsManuallyClosed` tinyint(1) DEFAULT '0',
  `Other1` text,
  `Other2` text,
  `qbsql_discov_datetime` datetime DEFAULT NULL,
  `qbsql_resync_datetime` datetime DEFAULT NULL,
  `qbsql_modify_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `qbsql_last_hash` varchar(40) DEFAULT NULL,
  `qbsql_last_qbxml` text,
  `qbsql_last_errnum` varchar(32) DEFAULT NULL,
  `qbsql_last_errmsg` varchar(255) DEFAULT NULL,
  `qbsql_enqueue_datetime` datetime DEFAULT NULL,
  `qbsql_dequeue_datetime` datetime DEFAULT NULL,
  `qbsql_audit_amount` decimal(10,0) DEFAULT NULL,
  `qbsql_audit_modified` datetime DEFAULT NULL,
  `qbsql_to_sync` tinyint(1) DEFAULT '0',
  `qbsql_to_delete` tinyint(1) DEFAULT '0',
  `qbsql_to_skip` tinyint(1) DEFAULT '0',
  `qbsql_to_void` tinyint(1) DEFAULT '0',
  `qbsql_flag_deleted` tinyint(1) DEFAULT '0',
  `qbsql_flag_skipped` tinyint(1) DEFAULT '0',
  `qbsql_flag_voided` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qb_receivepayment`
--

DROP TABLE IF EXISTS `qb_receivepayment`;
CREATE TABLE `qb_receivepayment` (
  `qbsql_id` int(10) UNSIGNED NOT NULL,
  `qbsql_username_id` int(10) UNSIGNED DEFAULT NULL,
  `qbsql_external_id` int(10) UNSIGNED DEFAULT NULL,
  `TxnID` varchar(40) DEFAULT NULL,
  `TimeCreated` datetime DEFAULT NULL,
  `TimeModified` datetime DEFAULT NULL,
  `EditSequence` text,
  `TxnNumber` int(10) UNSIGNED DEFAULT '0',
  `Customer_ListID` varchar(40) DEFAULT NULL,
  `Customer_FullName` varchar(255) DEFAULT NULL,
  `ARAccount_ListID` varchar(40) DEFAULT NULL,
  `ARAccount_FullName` varchar(255) DEFAULT NULL,
  `TxnDate` date DEFAULT NULL,
  `RefNumber` varchar(20) DEFAULT NULL,
  `TotalAmount` decimal(10,2) DEFAULT NULL,
  `PaymentMethod_ListID` varchar(40) DEFAULT NULL,
  `PaymentMethod_FullName` varchar(255) DEFAULT NULL,
  `Memo` text,
  `DepositToAccount_ListID` varchar(40) DEFAULT NULL,
  `DepositToAccount_FullName` varchar(255) DEFAULT NULL,
  `CreditCardTxnInfo_CreditCardTxnInputInfo_CreditCardNumber` varchar(25) DEFAULT NULL,
  `CreditCardTxnInfo_CreditCardTxnInputInfo_ExpirationMonth` int(10) UNSIGNED DEFAULT NULL,
  `CreditCardTxnInfo_CreditCardTxnInputInfo_ExpirationYear` int(10) UNSIGNED DEFAULT NULL,
  `CreditCardTxnInfo_CreditCardTxnInputInfo_NameOnCard` varchar(41) DEFAULT NULL,
  `CreditCardTxnInfo_CreditCardTxnInputInfo_CreditCardAddress` varchar(41) DEFAULT NULL,
  `CreditCardTxnInfo_CreditCardTxnInputInfo_CreditCardPostalCode` varchar(18) DEFAULT NULL,
  `CreditCardTxnInfo_CreditCardTxnInputInfo_CommercialCardCode` varchar(24) DEFAULT NULL,
  `CreditCardTxnInfo_CreditCardTxnInputInfo_TransactionMode` varchar(40) DEFAULT NULL,
  `CreditCardTxnInfo_CreditCardTxnInputInfo_CreditCardTxnType` varchar(40) DEFAULT NULL,
  `CreditCardTxnInfo_CreditCardTxnResultInfo_ResultCode` int(10) UNSIGNED DEFAULT NULL,
  `CreditCardTxnInfo_CreditCardTxnResultInfo_ResultMessage` varchar(60) DEFAULT NULL,
  `CreditCardTxnInfo_CreditCardTxnResultInfo_CreditCardTransID` varchar(24) DEFAULT NULL,
  `CreditCardTxnInfo_CreditCardTxnResultInfo_MerchantAccountNumber` varchar(32) DEFAULT NULL,
  `CreditCardTxnInfo_CreditCardTxnResultInfo_AuthorizationCode` varchar(12) DEFAULT NULL,
  `CreditCardTxnInfo_CreditCardTxnResultInfo_AVSStreet` varchar(40) DEFAULT NULL,
  `CreditCardTxnInfo_CreditCardTxnResultInfo_AVSZip` varchar(40) DEFAULT NULL,
  `CreditCardTxnInfo_CreditCardTxnResultInfo_CardSecurityCodeMatch` varchar(40) DEFAULT NULL,
  `CreditCardTxnInfo_CreditCardTxnResultInfo_ReconBatchID` varchar(84) DEFAULT NULL,
  `CreditCardTxnInfo_CreditCardTxnResultInfo_PaymentGroupingCode` int(10) UNSIGNED DEFAULT NULL,
  `CreditCardTxnInfo_CreditCardTxnResultInfo_PaymentStatus` varchar(40) DEFAULT NULL,
  `CreditCardTxnInfo_CreditCardTxnResultInfo_TxnAuthorizationTime` datetime DEFAULT NULL,
  `CreditCardTxnInfo_CreditCardTxnResultInfo_TxnAuthorizationStamp` int(10) UNSIGNED DEFAULT NULL,
  `CreditCardTxnInfo_CreditCardTxnResultInfo_ClientTransID` varchar(16) DEFAULT NULL,
  `UnusedPayment` decimal(10,2) DEFAULT NULL,
  `UnusedCredits` decimal(10,2) DEFAULT NULL,
  `qbsql_discov_datetime` datetime DEFAULT NULL,
  `qbsql_resync_datetime` datetime DEFAULT NULL,
  `qbsql_modify_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `qbsql_last_hash` varchar(40) DEFAULT NULL,
  `qbsql_last_qbxml` text,
  `qbsql_last_errnum` varchar(32) DEFAULT NULL,
  `qbsql_last_errmsg` varchar(255) DEFAULT NULL,
  `qbsql_enqueue_datetime` datetime DEFAULT NULL,
  `qbsql_dequeue_datetime` datetime DEFAULT NULL,
  `qbsql_audit_amount` decimal(10,0) DEFAULT NULL,
  `qbsql_audit_modified` datetime DEFAULT NULL,
  `qbsql_to_sync` tinyint(1) DEFAULT '0',
  `qbsql_to_delete` tinyint(1) DEFAULT '0',
  `qbsql_to_skip` tinyint(1) DEFAULT '0',
  `qbsql_to_void` tinyint(1) DEFAULT '0',
  `qbsql_flag_deleted` tinyint(1) DEFAULT '0',
  `qbsql_flag_skipped` tinyint(1) DEFAULT '0',
  `qbsql_flag_voided` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qb_receivepayment_appliedtotxn`
--

DROP TABLE IF EXISTS `qb_receivepayment_appliedtotxn`;
CREATE TABLE `qb_receivepayment_appliedtotxn` (
  `qbsql_id` int(10) UNSIGNED NOT NULL,
  `qbsql_username_id` int(10) UNSIGNED DEFAULT NULL,
  `qbsql_external_id` int(10) UNSIGNED DEFAULT NULL,
  `FromTxnID` varchar(40) DEFAULT NULL,
  `ReceivePayment_TxnID` varchar(40) DEFAULT NULL,
  `ToTxnID` varchar(40) DEFAULT NULL,
  `TxnType` varchar(40) DEFAULT NULL,
  `TxnDate` date DEFAULT NULL,
  `RefNumber` text,
  `BalanceRemaining` decimal(10,2) DEFAULT NULL,
  `Amount` decimal(10,2) DEFAULT NULL,
  `DiscountAmount` decimal(10,2) DEFAULT NULL,
  `DiscountAccount_ListID` varchar(40) DEFAULT NULL,
  `DiscountAccount_FullName` varchar(255) DEFAULT NULL,
  `qbsql_discov_datetime` datetime DEFAULT NULL,
  `qbsql_resync_datetime` datetime DEFAULT NULL,
  `qbsql_modify_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `qbsql_last_hash` varchar(40) DEFAULT NULL,
  `qbsql_last_qbxml` text,
  `qbsql_last_errnum` varchar(32) DEFAULT NULL,
  `qbsql_last_errmsg` varchar(255) DEFAULT NULL,
  `qbsql_enqueue_datetime` datetime DEFAULT NULL,
  `qbsql_dequeue_datetime` datetime DEFAULT NULL,
  `qbsql_audit_amount` decimal(10,0) DEFAULT NULL,
  `qbsql_audit_modified` datetime DEFAULT NULL,
  `qbsql_to_sync` tinyint(1) DEFAULT '0',
  `qbsql_to_delete` tinyint(1) DEFAULT '0',
  `qbsql_to_skip` tinyint(1) DEFAULT '0',
  `qbsql_to_void` tinyint(1) DEFAULT '0',
  `qbsql_flag_deleted` tinyint(1) DEFAULT '0',
  `qbsql_flag_skipped` tinyint(1) DEFAULT '0',
  `qbsql_flag_voided` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qb_salesorder`
--

DROP TABLE IF EXISTS `qb_salesorder`;
CREATE TABLE `qb_salesorder` (
  `qbsql_id` int(10) UNSIGNED NOT NULL,
  `qbsql_username_id` int(10) UNSIGNED DEFAULT NULL,
  `qbsql_external_id` int(10) UNSIGNED DEFAULT NULL,
  `TxnID` varchar(40) DEFAULT NULL,
  `TimeCreated` datetime DEFAULT NULL,
  `TimeModified` datetime DEFAULT NULL,
  `EditSequence` text,
  `TxnNumber` int(10) UNSIGNED DEFAULT '0',
  `Customer_ListID` varchar(40) DEFAULT NULL,
  `Customer_FullName` varchar(255) DEFAULT NULL,
  `Class_ListID` varchar(40) DEFAULT NULL,
  `Class_FullName` varchar(255) DEFAULT NULL,
  `Template_ListID` varchar(40) DEFAULT NULL,
  `Template_FullName` varchar(255) DEFAULT NULL,
  `TxnDate` date DEFAULT NULL,
  `RefNumber` varchar(11) DEFAULT NULL,
  `BillAddress_Addr1` varchar(41) DEFAULT NULL,
  `BillAddress_Addr2` varchar(41) DEFAULT NULL,
  `BillAddress_Addr3` varchar(41) DEFAULT NULL,
  `BillAddress_Addr4` varchar(41) DEFAULT NULL,
  `BillAddress_Addr5` varchar(41) DEFAULT NULL,
  `BillAddress_City` varchar(31) DEFAULT NULL,
  `BillAddress_State` varchar(21) DEFAULT NULL,
  `BillAddress_PostalCode` varchar(13) DEFAULT NULL,
  `BillAddress_Country` varchar(31) DEFAULT NULL,
  `BillAddress_Note` varchar(41) DEFAULT NULL,
  `BillAddressBlock_Addr1` text,
  `BillAddressBlock_Addr2` text,
  `BillAddressBlock_Addr3` text,
  `BillAddressBlock_Addr4` text,
  `BillAddressBlock_Addr5` text,
  `ShipAddress_Addr1` varchar(41) DEFAULT NULL,
  `ShipAddress_Addr2` varchar(41) DEFAULT NULL,
  `ShipAddress_Addr3` varchar(41) DEFAULT NULL,
  `ShipAddress_Addr4` varchar(41) DEFAULT NULL,
  `ShipAddress_Addr5` varchar(41) DEFAULT NULL,
  `ShipAddress_City` varchar(31) DEFAULT NULL,
  `ShipAddress_State` varchar(21) DEFAULT NULL,
  `ShipAddress_PostalCode` varchar(13) DEFAULT NULL,
  `ShipAddress_Country` varchar(31) DEFAULT NULL,
  `ShipAddress_Note` varchar(41) DEFAULT NULL,
  `ShipAddressBlock_Addr1` text,
  `ShipAddressBlock_Addr2` text,
  `ShipAddressBlock_Addr3` text,
  `ShipAddressBlock_Addr4` text,
  `ShipAddressBlock_Addr5` text,
  `PONumber` varchar(25) DEFAULT NULL,
  `Terms_ListID` varchar(40) DEFAULT NULL,
  `Terms_FullName` varchar(255) DEFAULT NULL,
  `DueDate` date DEFAULT NULL,
  `SalesRep_ListID` varchar(40) DEFAULT NULL,
  `SalesRep_FullName` varchar(255) DEFAULT NULL,
  `FOB` varchar(13) DEFAULT NULL,
  `ShipDate` date DEFAULT NULL,
  `ShipMethod_ListID` varchar(40) DEFAULT NULL,
  `ShipMethod_FullName` varchar(255) DEFAULT NULL,
  `Subtotal` decimal(10,2) DEFAULT NULL,
  `ItemSalesTax_ListID` varchar(40) DEFAULT NULL,
  `ItemSalesTax_FullName` varchar(255) DEFAULT NULL,
  `SalesTaxPercentage` decimal(12,5) DEFAULT NULL,
  `SalesTaxTotal` decimal(10,2) DEFAULT NULL,
  `TotalAmount` decimal(10,2) DEFAULT NULL,
  `IsManuallyClosed` tinyint(1) DEFAULT NULL,
  `IsFullyInvoiced` tinyint(1) DEFAULT NULL,
  `Memo` text,
  `CustomerMsg_ListID` varchar(40) DEFAULT NULL,
  `CustomerMsg_FullName` varchar(255) DEFAULT NULL,
  `IsToBePrinted` tinyint(1) DEFAULT NULL,
  `IsToBeEmailed` tinyint(1) DEFAULT NULL,
  `CustomerSalesTaxCode_ListID` varchar(40) DEFAULT NULL,
  `CustomerSalesTaxCode_FullName` varchar(255) DEFAULT NULL,
  `Other` varchar(29) DEFAULT NULL,
  `qbsql_discov_datetime` datetime DEFAULT NULL,
  `qbsql_resync_datetime` datetime DEFAULT NULL,
  `qbsql_modify_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `qbsql_last_hash` varchar(40) DEFAULT NULL,
  `qbsql_last_qbxml` text,
  `qbsql_last_errnum` varchar(32) DEFAULT NULL,
  `qbsql_last_errmsg` varchar(255) DEFAULT NULL,
  `qbsql_enqueue_datetime` datetime DEFAULT NULL,
  `qbsql_dequeue_datetime` datetime DEFAULT NULL,
  `qbsql_audit_amount` decimal(10,0) DEFAULT NULL,
  `qbsql_audit_modified` datetime DEFAULT NULL,
  `qbsql_to_sync` tinyint(1) DEFAULT '0',
  `qbsql_to_delete` tinyint(1) DEFAULT '0',
  `qbsql_to_skip` tinyint(1) DEFAULT '0',
  `qbsql_to_void` tinyint(1) DEFAULT '0',
  `qbsql_flag_deleted` tinyint(1) DEFAULT '0',
  `qbsql_flag_skipped` tinyint(1) DEFAULT '0',
  `qbsql_flag_voided` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qb_salesorder_linkedtxn`
--

DROP TABLE IF EXISTS `qb_salesorder_linkedtxn`;
CREATE TABLE `qb_salesorder_linkedtxn` (
  `qbsql_id` int(10) UNSIGNED NOT NULL,
  `qbsql_username_id` int(10) UNSIGNED DEFAULT NULL,
  `qbsql_external_id` int(10) UNSIGNED DEFAULT NULL,
  `FromTxnID` varchar(40) DEFAULT NULL,
  `SalesOrder_TxnID` varchar(40) DEFAULT NULL,
  `LinkType` text,
  `ToTxnID` varchar(40) DEFAULT NULL,
  `TxnType` varchar(40) DEFAULT NULL,
  `TxnDate` date DEFAULT NULL,
  `RefNumber` text,
  `Amount` decimal(10,2) DEFAULT NULL,
  `qbsql_discov_datetime` datetime DEFAULT NULL,
  `qbsql_resync_datetime` datetime DEFAULT NULL,
  `qbsql_modify_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `qbsql_last_hash` varchar(40) DEFAULT NULL,
  `qbsql_last_qbxml` text,
  `qbsql_last_errnum` varchar(32) DEFAULT NULL,
  `qbsql_last_errmsg` varchar(255) DEFAULT NULL,
  `qbsql_enqueue_datetime` datetime DEFAULT NULL,
  `qbsql_dequeue_datetime` datetime DEFAULT NULL,
  `qbsql_audit_amount` decimal(10,0) DEFAULT NULL,
  `qbsql_audit_modified` datetime DEFAULT NULL,
  `qbsql_to_sync` tinyint(1) DEFAULT '0',
  `qbsql_to_delete` tinyint(1) DEFAULT '0',
  `qbsql_to_skip` tinyint(1) DEFAULT '0',
  `qbsql_to_void` tinyint(1) DEFAULT '0',
  `qbsql_flag_deleted` tinyint(1) DEFAULT '0',
  `qbsql_flag_skipped` tinyint(1) DEFAULT '0',
  `qbsql_flag_voided` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qb_salesorder_salesorderline`
--

DROP TABLE IF EXISTS `qb_salesorder_salesorderline`;
CREATE TABLE `qb_salesorder_salesorderline` (
  `qbsql_id` int(10) UNSIGNED NOT NULL,
  `qbsql_username_id` int(10) UNSIGNED DEFAULT NULL,
  `qbsql_external_id` int(10) UNSIGNED DEFAULT NULL,
  `SalesOrder_TxnID` varchar(40) DEFAULT NULL,
  `SortOrder` int(10) UNSIGNED DEFAULT '0',
  `TxnLineID` varchar(40) DEFAULT NULL,
  `Item_ListID` varchar(40) DEFAULT NULL,
  `Item_FullName` varchar(255) DEFAULT NULL,
  `Descrip` text,
  `Quantity` decimal(12,5) DEFAULT NULL,
  `UnitOfMeasure` text,
  `OverrideUOMSet_ListID` varchar(40) DEFAULT NULL,
  `OverrideUOMSet_FullName` varchar(255) DEFAULT NULL,
  `Rate` decimal(13,5) DEFAULT NULL,
  `RatePercent` decimal(12,5) DEFAULT NULL,
  `Class_ListID` varchar(40) DEFAULT NULL,
  `Class_FullName` varchar(255) DEFAULT NULL,
  `Amount` decimal(10,2) DEFAULT NULL,
  `InventorySite_ListID` varchar(40) DEFAULT NULL,
  `InventorySite_FullName` varchar(255) DEFAULT NULL,
  `SerialNumber` text,
  `LotNumber` text,
  `SalesTaxCode_ListID` varchar(40) DEFAULT NULL,
  `SalesTaxCode_FullName` varchar(255) DEFAULT NULL,
  `Invoiced` decimal(12,5) DEFAULT NULL,
  `IsManuallyClosed` tinyint(1) DEFAULT NULL,
  `Other1` text,
  `Other2` text,
  `qbsql_discov_datetime` datetime DEFAULT NULL,
  `qbsql_resync_datetime` datetime DEFAULT NULL,
  `qbsql_modify_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `qbsql_last_hash` varchar(40) DEFAULT NULL,
  `qbsql_last_qbxml` text,
  `qbsql_last_errnum` varchar(32) DEFAULT NULL,
  `qbsql_last_errmsg` varchar(255) DEFAULT NULL,
  `qbsql_enqueue_datetime` datetime DEFAULT NULL,
  `qbsql_dequeue_datetime` datetime DEFAULT NULL,
  `qbsql_audit_amount` decimal(10,0) DEFAULT NULL,
  `qbsql_audit_modified` datetime DEFAULT NULL,
  `qbsql_to_sync` tinyint(1) DEFAULT '0',
  `qbsql_to_delete` tinyint(1) DEFAULT '0',
  `qbsql_to_skip` tinyint(1) DEFAULT '0',
  `qbsql_to_void` tinyint(1) DEFAULT '0',
  `qbsql_flag_deleted` tinyint(1) DEFAULT '0',
  `qbsql_flag_skipped` tinyint(1) DEFAULT '0',
  `qbsql_flag_voided` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qb_salesorder_salesorderlinegroup`
--

DROP TABLE IF EXISTS `qb_salesorder_salesorderlinegroup`;
CREATE TABLE `qb_salesorder_salesorderlinegroup` (
  `qbsql_id` int(10) UNSIGNED NOT NULL,
  `qbsql_username_id` int(10) UNSIGNED DEFAULT NULL,
  `qbsql_external_id` int(10) UNSIGNED DEFAULT NULL,
  `SalesOrder_TxnID` varchar(40) DEFAULT NULL,
  `SortOrder` int(10) UNSIGNED DEFAULT '0',
  `TxnLineID` varchar(40) DEFAULT NULL,
  `ItemGroup_ListID` varchar(40) DEFAULT NULL,
  `ItemGroup_FullName` varchar(255) DEFAULT NULL,
  `Descrip` text,
  `Quantity` decimal(12,5) DEFAULT '0.00000',
  `UnitOfMeasure` text,
  `OverrideUOMSet_ListID` varchar(40) DEFAULT NULL,
  `OverrideUOMSet_FullName` varchar(255) DEFAULT NULL,
  `IsPrintItemsInGroup` tinyint(1) DEFAULT '0',
  `TotalAmount` decimal(10,2) DEFAULT NULL,
  `qbsql_discov_datetime` datetime DEFAULT NULL,
  `qbsql_resync_datetime` datetime DEFAULT NULL,
  `qbsql_modify_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `qbsql_last_hash` varchar(40) DEFAULT NULL,
  `qbsql_last_qbxml` text,
  `qbsql_last_errnum` varchar(32) DEFAULT NULL,
  `qbsql_last_errmsg` varchar(255) DEFAULT NULL,
  `qbsql_enqueue_datetime` datetime DEFAULT NULL,
  `qbsql_dequeue_datetime` datetime DEFAULT NULL,
  `qbsql_audit_amount` decimal(10,0) DEFAULT NULL,
  `qbsql_audit_modified` datetime DEFAULT NULL,
  `qbsql_to_sync` tinyint(1) DEFAULT '0',
  `qbsql_to_delete` tinyint(1) DEFAULT '0',
  `qbsql_to_skip` tinyint(1) DEFAULT '0',
  `qbsql_to_void` tinyint(1) DEFAULT '0',
  `qbsql_flag_deleted` tinyint(1) DEFAULT '0',
  `qbsql_flag_skipped` tinyint(1) DEFAULT '0',
  `qbsql_flag_voided` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qb_salesorder_salesorderlinegroup_salesorderline`
--

DROP TABLE IF EXISTS `qb_salesorder_salesorderlinegroup_salesorderline`;
CREATE TABLE `qb_salesorder_salesorderlinegroup_salesorderline` (
  `qbsql_id` int(10) UNSIGNED NOT NULL,
  `qbsql_username_id` int(10) UNSIGNED DEFAULT NULL,
  `qbsql_external_id` int(10) UNSIGNED DEFAULT NULL,
  `SalesOrder_TxnID` varchar(40) DEFAULT NULL,
  `SalesOrder_SalesOrderLineGroup_TxnLineID` text,
  `SortOrder` int(10) UNSIGNED DEFAULT '0',
  `TxnLineID` varchar(40) DEFAULT NULL,
  `Item_ListID` varchar(40) DEFAULT NULL,
  `Item_FullName` varchar(255) DEFAULT NULL,
  `Descrip` text,
  `Quantity` decimal(12,5) DEFAULT '0.00000',
  `UnitOfMeasure` text,
  `OverrideUOMSet_ListID` varchar(40) DEFAULT NULL,
  `OverrideUOMSet_FullName` varchar(255) DEFAULT NULL,
  `Rate` decimal(13,5) DEFAULT NULL,
  `RatePercent` decimal(12,5) DEFAULT NULL,
  `Class_ListID` varchar(40) DEFAULT NULL,
  `Class_FullName` varchar(255) DEFAULT NULL,
  `Amount` decimal(10,2) DEFAULT NULL,
  `SalesTaxCode_ListID` varchar(40) DEFAULT NULL,
  `SalesTaxCode_FullName` varchar(255) DEFAULT NULL,
  `Invoiced` decimal(12,5) DEFAULT '0.00000',
  `IsManuallyClosed` tinyint(1) DEFAULT '0',
  `Other1` text,
  `Other2` text,
  `qbsql_discov_datetime` datetime DEFAULT NULL,
  `qbsql_resync_datetime` datetime DEFAULT NULL,
  `qbsql_modify_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `qbsql_last_hash` varchar(40) DEFAULT NULL,
  `qbsql_last_qbxml` text,
  `qbsql_last_errnum` varchar(32) DEFAULT NULL,
  `qbsql_last_errmsg` varchar(255) DEFAULT NULL,
  `qbsql_enqueue_datetime` datetime DEFAULT NULL,
  `qbsql_dequeue_datetime` datetime DEFAULT NULL,
  `qbsql_audit_amount` decimal(10,0) DEFAULT NULL,
  `qbsql_audit_modified` datetime DEFAULT NULL,
  `qbsql_to_sync` tinyint(1) DEFAULT '0',
  `qbsql_to_delete` tinyint(1) DEFAULT '0',
  `qbsql_to_skip` tinyint(1) DEFAULT '0',
  `qbsql_to_void` tinyint(1) DEFAULT '0',
  `qbsql_flag_deleted` tinyint(1) DEFAULT '0',
  `qbsql_flag_skipped` tinyint(1) DEFAULT '0',
  `qbsql_flag_voided` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qb_salesreceipt`
--

DROP TABLE IF EXISTS `qb_salesreceipt`;
CREATE TABLE `qb_salesreceipt` (
  `qbsql_id` int(10) UNSIGNED NOT NULL,
  `qbsql_username_id` int(10) UNSIGNED DEFAULT NULL,
  `qbsql_external_id` int(10) UNSIGNED DEFAULT NULL,
  `TxnID` varchar(40) DEFAULT NULL,
  `TimeCreated` datetime DEFAULT NULL,
  `TimeModified` datetime DEFAULT NULL,
  `EditSequence` text,
  `TxnNumber` int(10) UNSIGNED DEFAULT '0',
  `Customer_ListID` varchar(40) DEFAULT NULL,
  `Customer_FullName` varchar(255) DEFAULT NULL,
  `Class_ListID` varchar(40) DEFAULT NULL,
  `Class_FullName` varchar(255) DEFAULT NULL,
  `Template_ListID` varchar(40) DEFAULT NULL,
  `Template_FullName` varchar(255) DEFAULT NULL,
  `TxnDate` date DEFAULT NULL,
  `RefNumber` varchar(11) DEFAULT NULL,
  `BillAddress_Addr1` varchar(41) DEFAULT NULL,
  `BillAddress_Addr2` varchar(41) DEFAULT NULL,
  `BillAddress_Addr3` varchar(41) DEFAULT NULL,
  `BillAddress_Addr4` varchar(41) DEFAULT NULL,
  `BillAddress_Addr5` varchar(41) DEFAULT NULL,
  `BillAddress_City` varchar(31) DEFAULT NULL,
  `BillAddress_State` varchar(21) DEFAULT NULL,
  `BillAddress_PostalCode` varchar(13) DEFAULT NULL,
  `BillAddress_Country` varchar(31) DEFAULT NULL,
  `BillAddress_Note` varchar(41) DEFAULT NULL,
  `BillAddressBlock_Addr1` text,
  `BillAddressBlock_Addr2` text,
  `BillAddressBlock_Addr3` text,
  `BillAddressBlock_Addr4` text,
  `BillAddressBlock_Addr5` text,
  `ShipAddress_Addr1` varchar(41) DEFAULT NULL,
  `ShipAddress_Addr2` varchar(41) DEFAULT NULL,
  `ShipAddress_Addr3` varchar(41) DEFAULT NULL,
  `ShipAddress_Addr4` varchar(41) DEFAULT NULL,
  `ShipAddress_Addr5` varchar(41) DEFAULT NULL,
  `ShipAddress_City` varchar(31) DEFAULT NULL,
  `ShipAddress_State` varchar(21) DEFAULT NULL,
  `ShipAddress_PostalCode` varchar(13) DEFAULT NULL,
  `ShipAddress_Country` varchar(31) DEFAULT NULL,
  `ShipAddress_Note` varchar(41) DEFAULT NULL,
  `ShipAddressBlock_Addr1` text,
  `ShipAddressBlock_Addr2` text,
  `ShipAddressBlock_Addr3` text,
  `ShipAddressBlock_Addr4` text,
  `ShipAddressBlock_Addr5` text,
  `IsPending` tinyint(1) DEFAULT NULL,
  `CheckNumber` varchar(25) DEFAULT NULL,
  `PaymentMethod_ListID` varchar(40) DEFAULT NULL,
  `PaymentMethod_FullName` varchar(255) DEFAULT NULL,
  `DueDate` date DEFAULT NULL,
  `SalesRep_ListID` varchar(40) DEFAULT NULL,
  `SalesRep_FullName` varchar(255) DEFAULT NULL,
  `ShipDate` date DEFAULT NULL,
  `ShipMethod_ListID` varchar(40) DEFAULT NULL,
  `ShipMethod_FullName` varchar(255) DEFAULT NULL,
  `FOB` varchar(13) DEFAULT NULL,
  `Subtotal` decimal(10,2) DEFAULT NULL,
  `ItemSalesTax_ListID` varchar(40) DEFAULT NULL,
  `ItemSalesTax_FullName` varchar(255) DEFAULT NULL,
  `SalesTaxPercentage` decimal(12,5) DEFAULT NULL,
  `SalesTaxTotal` decimal(10,2) DEFAULT NULL,
  `TotalAmount` decimal(10,2) DEFAULT NULL,
  `Currency_ListID` varchar(40) DEFAULT NULL,
  `Currency_FullName` varchar(255) DEFAULT NULL,
  `ExchangeRate` text,
  `TotalAmountInHomeCurrency` decimal(10,2) DEFAULT NULL,
  `Memo` text,
  `CustomerMsg_ListID` varchar(40) DEFAULT NULL,
  `CustomerMsg_FullName` varchar(255) DEFAULT NULL,
  `IsToBePrinted` tinyint(1) DEFAULT NULL,
  `IsToBeEmailed` tinyint(1) DEFAULT NULL,
  `CustomerSalesTaxCode_ListID` varchar(40) DEFAULT NULL,
  `CustomerSalesTaxCode_FullName` varchar(255) DEFAULT NULL,
  `DepositToAccount_ListID` varchar(40) DEFAULT NULL,
  `DepositToAccount_FullName` varchar(255) DEFAULT NULL,
  `CreditCardTxnInfo_CreditCardTxnInputInfo_CreditCardNumber` varchar(25) DEFAULT NULL,
  `CreditCardTxnInfo_CreditCardTxnInputInfo_ExpirationMonth` int(10) UNSIGNED DEFAULT NULL,
  `CreditCardTxnInfo_CreditCardTxnInputInfo_ExpirationYear` int(10) UNSIGNED DEFAULT NULL,
  `CreditCardTxnInfo_CreditCardTxnInputInfo_NameOnCard` varchar(41) DEFAULT NULL,
  `CreditCardTxnInfo_CreditCardTxnInputInfo_CreditCardAddress` varchar(41) DEFAULT NULL,
  `CreditCardTxnInfo_CreditCardTxnInputInfo_CreditCardPostalCode` varchar(18) DEFAULT NULL,
  `CreditCardTxnInfo_CreditCardTxnInputInfo_CommercialCardCode` varchar(24) DEFAULT NULL,
  `CreditCardTxnInfo_CreditCardTxnInputInfo_TransactionMode` varchar(40) DEFAULT NULL,
  `CreditCardTxnInfo_CreditCardTxnInputInfo_CreditCardTxnType` varchar(40) DEFAULT NULL,
  `CreditCardTxnInfo_CreditCardTxnResultInfo_ResultCode` int(10) UNSIGNED DEFAULT NULL,
  `CreditCardTxnInfo_CreditCardTxnResultInfo_ResultMessage` varchar(60) DEFAULT NULL,
  `CreditCardTxnInfo_CreditCardTxnResultInfo_CreditCardTransID` varchar(24) DEFAULT NULL,
  `CreditCardTxnInfo_CreditCardTxnResultInfo_MerchantAccountNumber` varchar(32) DEFAULT NULL,
  `CreditCardTxnInfo_CreditCardTxnResultInfo_AuthorizationCode` varchar(12) DEFAULT NULL,
  `CreditCardTxnInfo_CreditCardTxnResultInfo_AVSStreet` varchar(40) DEFAULT NULL,
  `CreditCardTxnInfo_CreditCardTxnResultInfo_AVSZip` varchar(40) DEFAULT NULL,
  `CreditCardTxnInfo_CreditCardTxnResultInfo_CardSecurityCodeMatch` varchar(40) DEFAULT NULL,
  `CreditCardTxnInfo_CreditCardTxnResultInfo_ReconBatchID` varchar(84) DEFAULT NULL,
  `CreditCardTxnInfo_CreditCardTxnResultInfo_PaymentGroupingCode` int(10) UNSIGNED DEFAULT NULL,
  `CreditCardTxnInfo_CreditCardTxnResultInfo_PaymentStatus` varchar(40) DEFAULT NULL,
  `CreditCardTxnInfo_CreditCardTxnResultInfo_TxnAuthorizationTime` datetime DEFAULT NULL,
  `CreditCardTxnInfo_CreditCardTxnResultInfo_TxnAuthorizationStamp` int(10) UNSIGNED DEFAULT NULL,
  `CreditCardTxnInfo_CreditCardTxnResultInfo_ClientTransID` varchar(16) DEFAULT NULL,
  `Other` varchar(29) DEFAULT NULL,
  `qbsql_discov_datetime` datetime DEFAULT NULL,
  `qbsql_resync_datetime` datetime DEFAULT NULL,
  `qbsql_modify_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `qbsql_last_hash` varchar(40) DEFAULT NULL,
  `qbsql_last_qbxml` text,
  `qbsql_last_errnum` varchar(32) DEFAULT NULL,
  `qbsql_last_errmsg` varchar(255) DEFAULT NULL,
  `qbsql_enqueue_datetime` datetime DEFAULT NULL,
  `qbsql_dequeue_datetime` datetime DEFAULT NULL,
  `qbsql_audit_amount` decimal(10,0) DEFAULT NULL,
  `qbsql_audit_modified` datetime DEFAULT NULL,
  `qbsql_to_sync` tinyint(1) DEFAULT '0',
  `qbsql_to_delete` tinyint(1) DEFAULT '0',
  `qbsql_to_skip` tinyint(1) DEFAULT '0',
  `qbsql_to_void` tinyint(1) DEFAULT '0',
  `qbsql_flag_deleted` tinyint(1) DEFAULT '0',
  `qbsql_flag_skipped` tinyint(1) DEFAULT '0',
  `qbsql_flag_voided` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qb_salesreceipt_salesreceiptline`
--

DROP TABLE IF EXISTS `qb_salesreceipt_salesreceiptline`;
CREATE TABLE `qb_salesreceipt_salesreceiptline` (
  `qbsql_id` int(10) UNSIGNED NOT NULL,
  `qbsql_username_id` int(10) UNSIGNED DEFAULT NULL,
  `qbsql_external_id` int(10) UNSIGNED DEFAULT NULL,
  `SalesReceipt_TxnID` varchar(40) DEFAULT NULL,
  `SortOrder` int(10) UNSIGNED DEFAULT '0',
  `TxnLineID` varchar(40) DEFAULT NULL,
  `Item_ListID` varchar(40) DEFAULT NULL,
  `Item_FullName` varchar(255) DEFAULT NULL,
  `Descrip` text,
  `Quantity` decimal(12,5) DEFAULT NULL,
  `UnitOfMeasure` text,
  `OverrideUOMSet_ListID` varchar(40) DEFAULT NULL,
  `OverrideUOMSet_FullName` varchar(255) DEFAULT NULL,
  `Rate` decimal(13,5) DEFAULT NULL,
  `RatePercent` decimal(12,5) DEFAULT NULL,
  `Class_ListID` varchar(40) DEFAULT NULL,
  `Class_FullName` varchar(255) DEFAULT NULL,
  `Amount` decimal(10,2) DEFAULT NULL,
  `InventorySite_ListID` varchar(40) DEFAULT NULL,
  `InventorySite_FullName` varchar(255) DEFAULT NULL,
  `SerialNumber` text,
  `LotNumber` text,
  `ServiceDate` date DEFAULT NULL,
  `SalesTaxCode_ListID` varchar(40) DEFAULT NULL,
  `SalesTaxCode_FullName` varchar(255) DEFAULT NULL,
  `Other1` text,
  `Other2` text,
  `CreditCardTxnInfo_CreditCardTxnInputInfo_CreditCardNumber` text,
  `CreditCardTxnInfo_CreditCardTxnInputInfo_ExpirationMonth` int(10) UNSIGNED DEFAULT NULL,
  `CreditCardTxnInfo_CreditCardTxnInputInfo_ExpirationYear` int(10) UNSIGNED DEFAULT NULL,
  `CreditCardTxnInfo_CreditCardTxnInputInfo_NameOnCard` text,
  `CreditCardTxnInfo_CreditCardTxnInputInfo_CreditCardAddress` text,
  `CreditCardTxnInfo_CreditCardTxnInputInfo_CreditCardPostalCode` text,
  `CreditCardTxnInfo_CreditCardTxnInputInfo_CommercialCardCode` text,
  `CreditCardTxnInfo_CreditCardTxnInputInfo_TransactionMode` varchar(40) DEFAULT NULL,
  `CreditCardTxnInfo_CreditCardTxnInputInfo_CreditCardTxnType` varchar(40) DEFAULT NULL,
  `CreditCardTxnInfo_CreditCardTxnResultInfo_ResultCode` int(10) UNSIGNED DEFAULT NULL,
  `CreditCardTxnInfo_CreditCardTxnResultInfo_ResultMessage` text,
  `CreditCardTxnInfo_CreditCardTxnResultInfo_CreditCardTransID` text,
  `CreditCardTxnInfo_CreditCardTxnResultInfo_MerchantAccountNumber` text,
  `CreditCardTxnInfo_CreditCardTxnResultInfo_AuthorizationCode` text,
  `CreditCardTxnInfo_CreditCardTxnResultInfo_AVSStreet` varchar(40) DEFAULT NULL,
  `CreditCardTxnInfo_CreditCardTxnResultInfo_AVSZip` varchar(40) DEFAULT NULL,
  `CreditCardTxnInfo_CreditCardTxnResultInfo_CardSecurityCodeMatch` varchar(40) DEFAULT NULL,
  `CreditCardTxnInfo_CreditCardTxnResultInfo_ReconBatchID` text,
  `CreditCardTxnInfo_CreditCardTxnResultInfo_PaymentGroupingCode` int(10) UNSIGNED DEFAULT NULL,
  `CreditCardTxnInfo_CreditCardTxnResultInfo_PaymentStatus` varchar(40) DEFAULT NULL,
  `CreditCardTxnInfo_CreditCardTxnResultInfo_TxnAuthorizationTime` datetime DEFAULT NULL,
  `CreditCardTxnInfo_CreditCardTxnResultInfo_TxnAuthorizationStamp` int(10) UNSIGNED DEFAULT NULL,
  `CreditCardTxnInfo_CreditCardTxnResultInfo_ClientTransID` text,
  `qbsql_discov_datetime` datetime DEFAULT NULL,
  `qbsql_resync_datetime` datetime DEFAULT NULL,
  `qbsql_modify_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `qbsql_last_hash` varchar(40) DEFAULT NULL,
  `qbsql_last_qbxml` text,
  `qbsql_last_errnum` varchar(32) DEFAULT NULL,
  `qbsql_last_errmsg` varchar(255) DEFAULT NULL,
  `qbsql_enqueue_datetime` datetime DEFAULT NULL,
  `qbsql_dequeue_datetime` datetime DEFAULT NULL,
  `qbsql_audit_amount` decimal(10,0) DEFAULT NULL,
  `qbsql_audit_modified` datetime DEFAULT NULL,
  `qbsql_to_sync` tinyint(1) DEFAULT '0',
  `qbsql_to_delete` tinyint(1) DEFAULT '0',
  `qbsql_to_skip` tinyint(1) DEFAULT '0',
  `qbsql_to_void` tinyint(1) DEFAULT '0',
  `qbsql_flag_deleted` tinyint(1) DEFAULT '0',
  `qbsql_flag_skipped` tinyint(1) DEFAULT '0',
  `qbsql_flag_voided` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qb_salesreceipt_salesreceiptlinegroup`
--

DROP TABLE IF EXISTS `qb_salesreceipt_salesreceiptlinegroup`;
CREATE TABLE `qb_salesreceipt_salesreceiptlinegroup` (
  `qbsql_id` int(10) UNSIGNED NOT NULL,
  `qbsql_username_id` int(10) UNSIGNED DEFAULT NULL,
  `qbsql_external_id` int(10) UNSIGNED DEFAULT NULL,
  `SalesReceipt_TxnID` varchar(40) DEFAULT NULL,
  `SortOrder` int(10) UNSIGNED DEFAULT '0',
  `TxnLineID` varchar(40) DEFAULT NULL,
  `ItemGroup_ListID` varchar(40) DEFAULT NULL,
  `ItemGroup_FullName` varchar(255) DEFAULT NULL,
  `Descrip` text,
  `Quantity` decimal(12,5) DEFAULT '0.00000',
  `UnitOfMeasure` text,
  `OverrideUOMSet_ListID` varchar(40) DEFAULT NULL,
  `OverrideUOMSet_FullName` varchar(255) DEFAULT NULL,
  `IsPrintItemsInGroup` tinyint(1) DEFAULT '0',
  `TotalAmount` decimal(10,2) DEFAULT NULL,
  `qbsql_discov_datetime` datetime DEFAULT NULL,
  `qbsql_resync_datetime` datetime DEFAULT NULL,
  `qbsql_modify_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `qbsql_last_hash` varchar(40) DEFAULT NULL,
  `qbsql_last_qbxml` text,
  `qbsql_last_errnum` varchar(32) DEFAULT NULL,
  `qbsql_last_errmsg` varchar(255) DEFAULT NULL,
  `qbsql_enqueue_datetime` datetime DEFAULT NULL,
  `qbsql_dequeue_datetime` datetime DEFAULT NULL,
  `qbsql_audit_amount` decimal(10,0) DEFAULT NULL,
  `qbsql_audit_modified` datetime DEFAULT NULL,
  `qbsql_to_sync` tinyint(1) DEFAULT '0',
  `qbsql_to_delete` tinyint(1) DEFAULT '0',
  `qbsql_to_skip` tinyint(1) DEFAULT '0',
  `qbsql_to_void` tinyint(1) DEFAULT '0',
  `qbsql_flag_deleted` tinyint(1) DEFAULT '0',
  `qbsql_flag_skipped` tinyint(1) DEFAULT '0',
  `qbsql_flag_voided` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qb_salesreceipt_salesreceiptlinegroup_salesreceiptline`
--

DROP TABLE IF EXISTS `qb_salesreceipt_salesreceiptlinegroup_salesreceiptline`;
CREATE TABLE `qb_salesreceipt_salesreceiptlinegroup_salesreceiptline` (
  `qbsql_id` int(10) UNSIGNED NOT NULL,
  `qbsql_username_id` int(10) UNSIGNED DEFAULT NULL,
  `qbsql_external_id` int(10) UNSIGNED DEFAULT NULL,
  `SalesReceipt_TxnID` varchar(40) DEFAULT NULL,
  `SalesReceipt_SalesReceiptLineGroup_TxnLineID` text,
  `SortOrder` int(10) UNSIGNED DEFAULT '0',
  `TxnLineID` varchar(40) DEFAULT NULL,
  `Item_ListID` varchar(40) DEFAULT NULL,
  `Item_FullName` varchar(255) DEFAULT NULL,
  `Descrip` text,
  `Quantity` decimal(12,5) DEFAULT '0.00000',
  `UnitOfMeasure` text,
  `OverrideUOMSet_ListID` varchar(40) DEFAULT NULL,
  `OverrideUOMSet_FullName` varchar(255) DEFAULT NULL,
  `Rate` decimal(13,5) DEFAULT NULL,
  `RatePercent` decimal(12,5) DEFAULT NULL,
  `Class_ListID` varchar(40) DEFAULT NULL,
  `Class_FullName` varchar(255) DEFAULT NULL,
  `Amount` decimal(10,2) DEFAULT NULL,
  `ServiceDate` date DEFAULT NULL,
  `SalesTaxCode_ListID` varchar(40) DEFAULT NULL,
  `SalesTaxCode_FullName` varchar(255) DEFAULT NULL,
  `Other1` text,
  `Other2` text,
  `CreditCardTxnInfo_CreditCardTxnInputInfo_CreditCardNumber` text,
  `CreditCardTxnInfo_CreditCardTxnInputInfo_ExpirationMonth` int(10) UNSIGNED DEFAULT '0',
  `CreditCardTxnInfo_CreditCardTxnInputInfo_ExpirationYear` int(10) UNSIGNED DEFAULT '0',
  `CreditCardTxnInfo_CreditCardTxnInputInfo_NameOnCard` text,
  `CreditCardTxnInfo_CreditCardTxnInputInfo_CreditCardAddress` text,
  `CreditCardTxnInfo_CreditCardTxnInputInfo_CreditCardPostalCode` text,
  `CreditCardTxnInfo_CreditCardTxnInputInfo_CommercialCardCode` text,
  `CreditCardTxnInfo_CreditCardTxnInputInfo_TransactionMode` varchar(40) DEFAULT NULL,
  `CreditCardTxnInfo_CreditCardTxnInputInfo_CreditCardTxnType` varchar(40) DEFAULT NULL,
  `CreditCardTxnInfo_CreditCardTxnResultInfo_ResultCode` int(10) UNSIGNED DEFAULT '0',
  `CreditCardTxnInfo_CreditCardTxnResultInfo_ResultMessage` text,
  `CreditCardTxnInfo_CreditCardTxnResultInfo_CreditCardTransID` text,
  `CreditCardTxnInfo_CreditCardTxnResultInfo_MerchantAccountNumber` text,
  `CreditCardTxnInfo_CreditCardTxnResultInfo_AuthorizationCode` text,
  `CreditCardTxnInfo_CreditCardTxnResultInfo_AVSStreet` varchar(40) DEFAULT NULL,
  `CreditCardTxnInfo_CreditCardTxnResultInfo_AVSZip` varchar(40) DEFAULT NULL,
  `CreditCardTxnInfo_CreditCardTxnResultInfo_CardSecurityCodeMatch` varchar(40) DEFAULT NULL,
  `CreditCardTxnInfo_CreditCardTxnResultInfo_ReconBatchID` text,
  `CreditCardTxnInfo_CreditCardTxnResultInfo_PaymentGroupingCode` int(10) UNSIGNED DEFAULT '0',
  `CreditCardTxnInfo_CreditCardTxnResultInfo_PaymentStatus` varchar(40) DEFAULT NULL,
  `CreditCardTxnInfo_CreditCardTxnResultInfo_TxnAuthorizationTime` datetime DEFAULT NULL,
  `CreditCardTxnInfo_CreditCardTxnResultInfo_TxnAuthorizationStamp` int(10) UNSIGNED DEFAULT '0',
  `CreditCardTxnInfo_CreditCardTxnResultInfo_ClientTransID` text,
  `qbsql_discov_datetime` datetime DEFAULT NULL,
  `qbsql_resync_datetime` datetime DEFAULT NULL,
  `qbsql_modify_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `qbsql_last_hash` varchar(40) DEFAULT NULL,
  `qbsql_last_qbxml` text,
  `qbsql_last_errnum` varchar(32) DEFAULT NULL,
  `qbsql_last_errmsg` varchar(255) DEFAULT NULL,
  `qbsql_enqueue_datetime` datetime DEFAULT NULL,
  `qbsql_dequeue_datetime` datetime DEFAULT NULL,
  `qbsql_audit_amount` decimal(10,0) DEFAULT NULL,
  `qbsql_audit_modified` datetime DEFAULT NULL,
  `qbsql_to_sync` tinyint(1) DEFAULT '0',
  `qbsql_to_delete` tinyint(1) DEFAULT '0',
  `qbsql_to_skip` tinyint(1) DEFAULT '0',
  `qbsql_to_void` tinyint(1) DEFAULT '0',
  `qbsql_flag_deleted` tinyint(1) DEFAULT '0',
  `qbsql_flag_skipped` tinyint(1) DEFAULT '0',
  `qbsql_flag_voided` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qb_salesrep`
--

DROP TABLE IF EXISTS `qb_salesrep`;
CREATE TABLE `qb_salesrep` (
  `qbsql_id` int(10) UNSIGNED NOT NULL,
  `qbsql_username_id` int(10) UNSIGNED DEFAULT NULL,
  `qbsql_external_id` int(10) UNSIGNED DEFAULT NULL,
  `ListID` varchar(40) DEFAULT NULL,
  `TimeCreated` datetime DEFAULT NULL,
  `TimeModified` datetime DEFAULT NULL,
  `EditSequence` text,
  `Initial` varchar(5) DEFAULT NULL,
  `IsActive` tinyint(1) DEFAULT '0',
  `SalesRepEntity_ListID` varchar(40) DEFAULT NULL,
  `SalesRepEntity_FullName` varchar(255) DEFAULT NULL,
  `qbsql_discov_datetime` datetime DEFAULT NULL,
  `qbsql_resync_datetime` datetime DEFAULT NULL,
  `qbsql_modify_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `qbsql_last_hash` varchar(40) DEFAULT NULL,
  `qbsql_last_qbxml` text,
  `qbsql_last_errnum` varchar(32) DEFAULT NULL,
  `qbsql_last_errmsg` varchar(255) DEFAULT NULL,
  `qbsql_enqueue_datetime` datetime DEFAULT NULL,
  `qbsql_dequeue_datetime` datetime DEFAULT NULL,
  `qbsql_audit_amount` decimal(10,0) DEFAULT NULL,
  `qbsql_audit_modified` datetime DEFAULT NULL,
  `qbsql_to_sync` tinyint(1) DEFAULT '0',
  `qbsql_to_delete` tinyint(1) DEFAULT '0',
  `qbsql_to_skip` tinyint(1) DEFAULT '0',
  `qbsql_to_void` tinyint(1) DEFAULT '0',
  `qbsql_flag_deleted` tinyint(1) DEFAULT '0',
  `qbsql_flag_skipped` tinyint(1) DEFAULT '0',
  `qbsql_flag_voided` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qb_salestaxcode`
--

DROP TABLE IF EXISTS `qb_salestaxcode`;
CREATE TABLE `qb_salestaxcode` (
  `qbsql_id` int(10) UNSIGNED NOT NULL,
  `qbsql_username_id` int(10) UNSIGNED DEFAULT NULL,
  `qbsql_external_id` int(10) UNSIGNED DEFAULT NULL,
  `ListID` varchar(40) DEFAULT NULL,
  `TimeCreated` datetime DEFAULT NULL,
  `TimeModified` datetime DEFAULT NULL,
  `EditSequence` text,
  `Name` varchar(3) DEFAULT NULL,
  `IsActive` tinyint(1) DEFAULT '0',
  `IsTaxable` tinyint(1) DEFAULT '0',
  `Descrip` text,
  `qbsql_discov_datetime` datetime DEFAULT NULL,
  `qbsql_resync_datetime` datetime DEFAULT NULL,
  `qbsql_modify_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `qbsql_last_hash` varchar(40) DEFAULT NULL,
  `qbsql_last_qbxml` text,
  `qbsql_last_errnum` varchar(32) DEFAULT NULL,
  `qbsql_last_errmsg` varchar(255) DEFAULT NULL,
  `qbsql_enqueue_datetime` datetime DEFAULT NULL,
  `qbsql_dequeue_datetime` datetime DEFAULT NULL,
  `qbsql_audit_amount` decimal(10,0) DEFAULT NULL,
  `qbsql_audit_modified` datetime DEFAULT NULL,
  `qbsql_to_sync` tinyint(1) DEFAULT '0',
  `qbsql_to_delete` tinyint(1) DEFAULT '0',
  `qbsql_to_skip` tinyint(1) DEFAULT '0',
  `qbsql_to_void` tinyint(1) DEFAULT '0',
  `qbsql_flag_deleted` tinyint(1) DEFAULT '0',
  `qbsql_flag_skipped` tinyint(1) DEFAULT '0',
  `qbsql_flag_voided` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qb_shipmethod`
--

DROP TABLE IF EXISTS `qb_shipmethod`;
CREATE TABLE `qb_shipmethod` (
  `qbsql_id` int(10) UNSIGNED NOT NULL,
  `qbsql_username_id` int(10) UNSIGNED DEFAULT NULL,
  `qbsql_external_id` int(10) UNSIGNED DEFAULT NULL,
  `ListID` varchar(40) DEFAULT NULL,
  `TimeCreated` datetime DEFAULT NULL,
  `TimeModified` datetime DEFAULT NULL,
  `EditSequence` text,
  `Name` varchar(15) DEFAULT NULL,
  `IsActive` tinyint(1) DEFAULT '0',
  `qbsql_discov_datetime` datetime DEFAULT NULL,
  `qbsql_resync_datetime` datetime DEFAULT NULL,
  `qbsql_modify_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `qbsql_last_hash` varchar(40) DEFAULT NULL,
  `qbsql_last_qbxml` text,
  `qbsql_last_errnum` varchar(32) DEFAULT NULL,
  `qbsql_last_errmsg` varchar(255) DEFAULT NULL,
  `qbsql_enqueue_datetime` datetime DEFAULT NULL,
  `qbsql_dequeue_datetime` datetime DEFAULT NULL,
  `qbsql_audit_amount` decimal(10,0) DEFAULT NULL,
  `qbsql_audit_modified` datetime DEFAULT NULL,
  `qbsql_to_sync` tinyint(1) DEFAULT '0',
  `qbsql_to_delete` tinyint(1) DEFAULT '0',
  `qbsql_to_skip` tinyint(1) DEFAULT '0',
  `qbsql_to_void` tinyint(1) DEFAULT '0',
  `qbsql_flag_deleted` tinyint(1) DEFAULT '0',
  `qbsql_flag_skipped` tinyint(1) DEFAULT '0',
  `qbsql_flag_voided` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qb_standardterms`
--

DROP TABLE IF EXISTS `qb_standardterms`;
CREATE TABLE `qb_standardterms` (
  `qbsql_id` int(10) UNSIGNED NOT NULL,
  `qbsql_username_id` int(10) UNSIGNED DEFAULT NULL,
  `qbsql_external_id` int(10) UNSIGNED DEFAULT NULL,
  `ListID` varchar(40) DEFAULT NULL,
  `TimeCreated` datetime DEFAULT NULL,
  `TimeModified` datetime DEFAULT NULL,
  `EditSequence` text,
  `Name` varchar(31) DEFAULT NULL,
  `IsActive` tinyint(1) DEFAULT '0',
  `StdDueDays` int(10) UNSIGNED DEFAULT '0',
  `StdDiscountDays` int(10) UNSIGNED DEFAULT '0',
  `DiscountPct` decimal(12,5) DEFAULT NULL,
  `qbsql_discov_datetime` datetime DEFAULT NULL,
  `qbsql_resync_datetime` datetime DEFAULT NULL,
  `qbsql_modify_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `qbsql_last_hash` varchar(40) DEFAULT NULL,
  `qbsql_last_qbxml` text,
  `qbsql_last_errnum` varchar(32) DEFAULT NULL,
  `qbsql_last_errmsg` varchar(255) DEFAULT NULL,
  `qbsql_enqueue_datetime` datetime DEFAULT NULL,
  `qbsql_dequeue_datetime` datetime DEFAULT NULL,
  `qbsql_audit_amount` decimal(10,0) DEFAULT NULL,
  `qbsql_audit_modified` datetime DEFAULT NULL,
  `qbsql_to_sync` tinyint(1) DEFAULT '0',
  `qbsql_to_delete` tinyint(1) DEFAULT '0',
  `qbsql_to_skip` tinyint(1) DEFAULT '0',
  `qbsql_to_void` tinyint(1) DEFAULT '0',
  `qbsql_flag_deleted` tinyint(1) DEFAULT '0',
  `qbsql_flag_skipped` tinyint(1) DEFAULT '0',
  `qbsql_flag_voided` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qb_timetracking`
--

DROP TABLE IF EXISTS `qb_timetracking`;
CREATE TABLE `qb_timetracking` (
  `qbsql_id` int(10) UNSIGNED NOT NULL,
  `qbsql_username_id` int(10) UNSIGNED DEFAULT NULL,
  `qbsql_external_id` int(10) UNSIGNED DEFAULT NULL,
  `TxnID` varchar(40) DEFAULT NULL,
  `TimeCreated` datetime DEFAULT NULL,
  `TimeModified` datetime DEFAULT NULL,
  `EditSequence` text,
  `TxnNumber` int(10) UNSIGNED DEFAULT '0',
  `TxnDate` date DEFAULT NULL,
  `Entity_ListID` varchar(40) DEFAULT NULL,
  `Entity_FullName` varchar(255) DEFAULT NULL,
  `Customer_ListID` varchar(40) DEFAULT NULL,
  `Customer_FullName` varchar(255) DEFAULT NULL,
  `ItemService_ListID` varchar(40) DEFAULT NULL,
  `ItemService_FullName` varchar(255) DEFAULT NULL,
  `Duration` text,
  `Class_ListID` varchar(40) DEFAULT NULL,
  `Class_FullName` varchar(255) DEFAULT NULL,
  `PayrollItemWage_ListID` varchar(40) DEFAULT NULL,
  `PayrollItemWage_FullName` varchar(255) DEFAULT NULL,
  `Notes` text,
  `BillableStatus` varchar(40) DEFAULT NULL,
  `IsBillable` tinyint(1) DEFAULT '0',
  `IsBilled` tinyint(1) DEFAULT '0',
  `qbsql_discov_datetime` datetime DEFAULT NULL,
  `qbsql_resync_datetime` datetime DEFAULT NULL,
  `qbsql_modify_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `qbsql_last_hash` varchar(40) DEFAULT NULL,
  `qbsql_last_qbxml` text,
  `qbsql_last_errnum` varchar(32) DEFAULT NULL,
  `qbsql_last_errmsg` varchar(255) DEFAULT NULL,
  `qbsql_enqueue_datetime` datetime DEFAULT NULL,
  `qbsql_dequeue_datetime` datetime DEFAULT NULL,
  `qbsql_audit_amount` decimal(10,0) DEFAULT NULL,
  `qbsql_audit_modified` datetime DEFAULT NULL,
  `qbsql_to_sync` tinyint(1) DEFAULT '0',
  `qbsql_to_delete` tinyint(1) DEFAULT '0',
  `qbsql_to_skip` tinyint(1) DEFAULT '0',
  `qbsql_to_void` tinyint(1) DEFAULT '0',
  `qbsql_flag_deleted` tinyint(1) DEFAULT '0',
  `qbsql_flag_skipped` tinyint(1) DEFAULT '0',
  `qbsql_flag_voided` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qb_unitofmeasureset`
--

DROP TABLE IF EXISTS `qb_unitofmeasureset`;
CREATE TABLE `qb_unitofmeasureset` (
  `qbsql_id` int(10) UNSIGNED NOT NULL,
  `qbsql_username_id` int(10) UNSIGNED DEFAULT NULL,
  `qbsql_external_id` int(10) UNSIGNED DEFAULT NULL,
  `ListID` varchar(40) DEFAULT NULL,
  `TimeCreated` datetime DEFAULT NULL,
  `TimeModified` datetime DEFAULT NULL,
  `EditSequence` text,
  `Name` varchar(31) DEFAULT NULL,
  `IsActive` tinyint(1) DEFAULT '0',
  `UnitOfMeasureType` varchar(40) DEFAULT NULL,
  `BaseUnit_Name` varchar(31) DEFAULT NULL,
  `BaseUnit_Abbreviation` varchar(31) DEFAULT NULL,
  `qbsql_discov_datetime` datetime DEFAULT NULL,
  `qbsql_resync_datetime` datetime DEFAULT NULL,
  `qbsql_modify_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `qbsql_last_hash` varchar(40) DEFAULT NULL,
  `qbsql_last_qbxml` text,
  `qbsql_last_errnum` varchar(32) DEFAULT NULL,
  `qbsql_last_errmsg` varchar(255) DEFAULT NULL,
  `qbsql_enqueue_datetime` datetime DEFAULT NULL,
  `qbsql_dequeue_datetime` datetime DEFAULT NULL,
  `qbsql_audit_amount` decimal(10,0) DEFAULT NULL,
  `qbsql_audit_modified` datetime DEFAULT NULL,
  `qbsql_to_sync` tinyint(1) DEFAULT '0',
  `qbsql_to_delete` tinyint(1) DEFAULT '0',
  `qbsql_to_skip` tinyint(1) DEFAULT '0',
  `qbsql_to_void` tinyint(1) DEFAULT '0',
  `qbsql_flag_deleted` tinyint(1) DEFAULT '0',
  `qbsql_flag_skipped` tinyint(1) DEFAULT '0',
  `qbsql_flag_voided` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qb_unitofmeasureset_defaultunit`
--

DROP TABLE IF EXISTS `qb_unitofmeasureset_defaultunit`;
CREATE TABLE `qb_unitofmeasureset_defaultunit` (
  `qbsql_id` int(10) UNSIGNED NOT NULL,
  `qbsql_username_id` int(10) UNSIGNED DEFAULT NULL,
  `qbsql_external_id` int(10) UNSIGNED DEFAULT NULL,
  `UnitOfMeasureSet_ListID` varchar(40) DEFAULT NULL,
  `UnitUsedFor` varchar(40) DEFAULT NULL,
  `Unit` text,
  `qbsql_discov_datetime` datetime DEFAULT NULL,
  `qbsql_resync_datetime` datetime DEFAULT NULL,
  `qbsql_modify_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `qbsql_last_hash` varchar(40) DEFAULT NULL,
  `qbsql_last_qbxml` text,
  `qbsql_last_errnum` varchar(32) DEFAULT NULL,
  `qbsql_last_errmsg` varchar(255) DEFAULT NULL,
  `qbsql_enqueue_datetime` datetime DEFAULT NULL,
  `qbsql_dequeue_datetime` datetime DEFAULT NULL,
  `qbsql_audit_amount` decimal(10,0) DEFAULT NULL,
  `qbsql_audit_modified` datetime DEFAULT NULL,
  `qbsql_to_sync` tinyint(1) DEFAULT '0',
  `qbsql_to_delete` tinyint(1) DEFAULT '0',
  `qbsql_to_skip` tinyint(1) DEFAULT '0',
  `qbsql_to_void` tinyint(1) DEFAULT '0',
  `qbsql_flag_deleted` tinyint(1) DEFAULT '0',
  `qbsql_flag_skipped` tinyint(1) DEFAULT '0',
  `qbsql_flag_voided` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qb_unitofmeasureset_relatedunit`
--

DROP TABLE IF EXISTS `qb_unitofmeasureset_relatedunit`;
CREATE TABLE `qb_unitofmeasureset_relatedunit` (
  `qbsql_id` int(10) UNSIGNED NOT NULL,
  `qbsql_username_id` int(10) UNSIGNED DEFAULT NULL,
  `qbsql_external_id` int(10) UNSIGNED DEFAULT NULL,
  `UnitOfMeasureSet_ListID` varchar(40) DEFAULT NULL,
  `Name` text,
  `Abbreviation` text,
  `ConversionRatio` decimal(13,5) DEFAULT NULL,
  `qbsql_discov_datetime` datetime DEFAULT NULL,
  `qbsql_resync_datetime` datetime DEFAULT NULL,
  `qbsql_modify_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `qbsql_last_hash` varchar(40) DEFAULT NULL,
  `qbsql_last_qbxml` text,
  `qbsql_last_errnum` varchar(32) DEFAULT NULL,
  `qbsql_last_errmsg` varchar(255) DEFAULT NULL,
  `qbsql_enqueue_datetime` datetime DEFAULT NULL,
  `qbsql_dequeue_datetime` datetime DEFAULT NULL,
  `qbsql_audit_amount` decimal(10,0) DEFAULT NULL,
  `qbsql_audit_modified` datetime DEFAULT NULL,
  `qbsql_to_sync` tinyint(1) DEFAULT '0',
  `qbsql_to_delete` tinyint(1) DEFAULT '0',
  `qbsql_to_skip` tinyint(1) DEFAULT '0',
  `qbsql_to_void` tinyint(1) DEFAULT '0',
  `qbsql_flag_deleted` tinyint(1) DEFAULT '0',
  `qbsql_flag_skipped` tinyint(1) DEFAULT '0',
  `qbsql_flag_voided` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qb_vehicle`
--

DROP TABLE IF EXISTS `qb_vehicle`;
CREATE TABLE `qb_vehicle` (
  `qbsql_id` int(10) UNSIGNED NOT NULL,
  `qbsql_username_id` int(10) UNSIGNED DEFAULT NULL,
  `qbsql_external_id` int(10) UNSIGNED DEFAULT NULL,
  `ListID` varchar(40) DEFAULT NULL,
  `TimeCreated` datetime DEFAULT NULL,
  `TimeModified` datetime DEFAULT NULL,
  `EditSequence` text,
  `Name` varchar(31) DEFAULT NULL,
  `IsActive` tinyint(1) DEFAULT '0',
  `Descrip` text,
  `qbsql_discov_datetime` datetime DEFAULT NULL,
  `qbsql_resync_datetime` datetime DEFAULT NULL,
  `qbsql_modify_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `qbsql_last_hash` varchar(40) DEFAULT NULL,
  `qbsql_last_qbxml` text,
  `qbsql_last_errnum` varchar(32) DEFAULT NULL,
  `qbsql_last_errmsg` varchar(255) DEFAULT NULL,
  `qbsql_enqueue_datetime` datetime DEFAULT NULL,
  `qbsql_dequeue_datetime` datetime DEFAULT NULL,
  `qbsql_audit_amount` decimal(10,0) DEFAULT NULL,
  `qbsql_audit_modified` datetime DEFAULT NULL,
  `qbsql_to_sync` tinyint(1) DEFAULT '0',
  `qbsql_to_delete` tinyint(1) DEFAULT '0',
  `qbsql_to_skip` tinyint(1) DEFAULT '0',
  `qbsql_to_void` tinyint(1) DEFAULT '0',
  `qbsql_flag_deleted` tinyint(1) DEFAULT '0',
  `qbsql_flag_skipped` tinyint(1) DEFAULT '0',
  `qbsql_flag_voided` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qb_vehiclemileage`
--

DROP TABLE IF EXISTS `qb_vehiclemileage`;
CREATE TABLE `qb_vehiclemileage` (
  `qbsql_id` int(10) UNSIGNED NOT NULL,
  `qbsql_username_id` int(10) UNSIGNED DEFAULT NULL,
  `qbsql_external_id` int(10) UNSIGNED DEFAULT NULL,
  `TxnID` varchar(40) DEFAULT NULL,
  `TimeCreated` datetime DEFAULT NULL,
  `TimeModified` datetime DEFAULT NULL,
  `EditSequence` text,
  `Vehicle_ListID` varchar(40) DEFAULT NULL,
  `Vehicle_FullName` varchar(255) DEFAULT NULL,
  `Customer_ListID` varchar(40) DEFAULT NULL,
  `Customer_FullName` varchar(255) DEFAULT NULL,
  `Item_ListID` varchar(40) DEFAULT NULL,
  `Item_FullName` varchar(255) DEFAULT NULL,
  `Class_ListID` varchar(40) DEFAULT NULL,
  `Class_FullName` varchar(255) DEFAULT NULL,
  `TripStartDate` date DEFAULT NULL,
  `TripEndDate` date DEFAULT NULL,
  `OdometerStart` decimal(12,5) DEFAULT '0.00000',
  `OdometerEnd` decimal(12,5) DEFAULT '0.00000',
  `TotalMiles` decimal(12,5) DEFAULT '0.00000',
  `Notes` text,
  `BillableStatus` varchar(40) DEFAULT NULL,
  `StandardMileageRate` decimal(12,5) DEFAULT NULL,
  `StandardMileageTotalAmount` decimal(10,2) DEFAULT NULL,
  `BillableRate` decimal(13,5) DEFAULT NULL,
  `BillableAmount` decimal(10,2) DEFAULT NULL,
  `qbsql_discov_datetime` datetime DEFAULT NULL,
  `qbsql_resync_datetime` datetime DEFAULT NULL,
  `qbsql_modify_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `qbsql_last_hash` varchar(40) DEFAULT NULL,
  `qbsql_last_qbxml` text,
  `qbsql_last_errnum` varchar(32) DEFAULT NULL,
  `qbsql_last_errmsg` varchar(255) DEFAULT NULL,
  `qbsql_enqueue_datetime` datetime DEFAULT NULL,
  `qbsql_dequeue_datetime` datetime DEFAULT NULL,
  `qbsql_audit_amount` decimal(10,0) DEFAULT NULL,
  `qbsql_audit_modified` datetime DEFAULT NULL,
  `qbsql_to_sync` tinyint(1) DEFAULT '0',
  `qbsql_to_delete` tinyint(1) DEFAULT '0',
  `qbsql_to_skip` tinyint(1) DEFAULT '0',
  `qbsql_to_void` tinyint(1) DEFAULT '0',
  `qbsql_flag_deleted` tinyint(1) DEFAULT '0',
  `qbsql_flag_skipped` tinyint(1) DEFAULT '0',
  `qbsql_flag_voided` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qb_vendor`
--

DROP TABLE IF EXISTS `qb_vendor`;
CREATE TABLE `qb_vendor` (
  `qbsql_id` int(10) UNSIGNED NOT NULL,
  `qbsql_username_id` int(10) UNSIGNED DEFAULT NULL,
  `qbsql_external_id` int(10) UNSIGNED DEFAULT NULL,
  `ListID` varchar(40) DEFAULT NULL,
  `TimeCreated` datetime DEFAULT NULL,
  `TimeModified` datetime DEFAULT NULL,
  `EditSequence` text,
  `Name` varchar(41) DEFAULT NULL,
  `IsActive` tinyint(1) DEFAULT '0',
  `CompanyName` varchar(41) DEFAULT NULL,
  `Salutation` varchar(15) DEFAULT NULL,
  `FirstName` varchar(25) DEFAULT NULL,
  `MiddleName` varchar(5) DEFAULT NULL,
  `LastName` varchar(25) DEFAULT NULL,
  `VendorAddress_Addr1` varchar(41) DEFAULT NULL,
  `VendorAddress_Addr2` varchar(41) DEFAULT NULL,
  `VendorAddress_Addr3` varchar(41) DEFAULT NULL,
  `VendorAddress_Addr4` varchar(41) DEFAULT NULL,
  `VendorAddress_Addr5` varchar(41) DEFAULT NULL,
  `VendorAddress_City` varchar(31) DEFAULT NULL,
  `VendorAddress_State` varchar(21) DEFAULT NULL,
  `VendorAddress_PostalCode` varchar(13) DEFAULT NULL,
  `VendorAddress_Country` varchar(31) DEFAULT NULL,
  `VendorAddress_Note` varchar(41) DEFAULT NULL,
  `VendorAddressBlock_Addr1` text,
  `VendorAddressBlock_Addr2` text,
  `VendorAddressBlock_Addr3` text,
  `VendorAddressBlock_Addr4` text,
  `VendorAddressBlock_Addr5` text,
  `Phone` varchar(21) DEFAULT NULL,
  `AltPhone` varchar(21) DEFAULT NULL,
  `Fax` varchar(21) DEFAULT NULL,
  `Email` text,
  `Contact` varchar(41) DEFAULT NULL,
  `AltContact` varchar(41) DEFAULT NULL,
  `NameOnCheck` varchar(41) DEFAULT NULL,
  `AccountNumber` varchar(99) DEFAULT NULL,
  `Notes` text,
  `VendorType_ListID` varchar(40) DEFAULT NULL,
  `VendorType_FullName` varchar(255) DEFAULT NULL,
  `Terms_ListID` varchar(40) DEFAULT NULL,
  `Terms_FullName` varchar(255) DEFAULT NULL,
  `CreditLimit` decimal(10,2) DEFAULT NULL,
  `VendorTaxIdent` varchar(15) DEFAULT NULL,
  `IsVendorEligibleFor1099` tinyint(1) DEFAULT '0',
  `Balance` decimal(10,2) DEFAULT NULL,
  `BillingRate_ListID` varchar(40) DEFAULT NULL,
  `BillingRate_FullName` varchar(255) DEFAULT NULL,
  `qbsql_discov_datetime` datetime DEFAULT NULL,
  `qbsql_resync_datetime` datetime DEFAULT NULL,
  `qbsql_modify_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `qbsql_last_hash` varchar(40) DEFAULT NULL,
  `qbsql_last_qbxml` text,
  `qbsql_last_errnum` varchar(32) DEFAULT NULL,
  `qbsql_last_errmsg` varchar(255) DEFAULT NULL,
  `qbsql_enqueue_datetime` datetime DEFAULT NULL,
  `qbsql_dequeue_datetime` datetime DEFAULT NULL,
  `qbsql_audit_amount` decimal(10,0) DEFAULT NULL,
  `qbsql_audit_modified` datetime DEFAULT NULL,
  `qbsql_to_sync` tinyint(1) DEFAULT '0',
  `qbsql_to_delete` tinyint(1) DEFAULT '0',
  `qbsql_to_skip` tinyint(1) DEFAULT '0',
  `qbsql_to_void` tinyint(1) DEFAULT '0',
  `qbsql_flag_deleted` tinyint(1) DEFAULT '0',
  `qbsql_flag_skipped` tinyint(1) DEFAULT '0',
  `qbsql_flag_voided` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qb_vendorcredit`
--

DROP TABLE IF EXISTS `qb_vendorcredit`;
CREATE TABLE `qb_vendorcredit` (
  `qbsql_id` int(10) UNSIGNED NOT NULL,
  `qbsql_username_id` int(10) UNSIGNED DEFAULT NULL,
  `qbsql_external_id` int(10) UNSIGNED DEFAULT NULL,
  `TxnID` varchar(40) DEFAULT NULL,
  `TimeCreated` datetime DEFAULT NULL,
  `TimeModified` datetime DEFAULT NULL,
  `EditSequence` text,
  `TxnNumber` int(10) UNSIGNED DEFAULT '0',
  `Vendor_ListID` varchar(40) DEFAULT NULL,
  `Vendor_FullName` varchar(255) DEFAULT NULL,
  `APAccount_ListID` varchar(40) DEFAULT NULL,
  `APAccount_FullName` varchar(255) DEFAULT NULL,
  `TxnDate` date DEFAULT NULL,
  `CreditAmount` decimal(10,2) DEFAULT NULL,
  `RefNumber` text,
  `Memo` text,
  `OpenAmount` decimal(10,2) DEFAULT NULL,
  `qbsql_discov_datetime` datetime DEFAULT NULL,
  `qbsql_resync_datetime` datetime DEFAULT NULL,
  `qbsql_modify_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `qbsql_last_hash` varchar(40) DEFAULT NULL,
  `qbsql_last_qbxml` text,
  `qbsql_last_errnum` varchar(32) DEFAULT NULL,
  `qbsql_last_errmsg` varchar(255) DEFAULT NULL,
  `qbsql_enqueue_datetime` datetime DEFAULT NULL,
  `qbsql_dequeue_datetime` datetime DEFAULT NULL,
  `qbsql_audit_amount` decimal(10,0) DEFAULT NULL,
  `qbsql_audit_modified` datetime DEFAULT NULL,
  `qbsql_to_sync` tinyint(1) DEFAULT '0',
  `qbsql_to_delete` tinyint(1) DEFAULT '0',
  `qbsql_to_skip` tinyint(1) DEFAULT '0',
  `qbsql_to_void` tinyint(1) DEFAULT '0',
  `qbsql_flag_deleted` tinyint(1) DEFAULT '0',
  `qbsql_flag_skipped` tinyint(1) DEFAULT '0',
  `qbsql_flag_voided` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qb_vendorcredit_expenseline`
--

DROP TABLE IF EXISTS `qb_vendorcredit_expenseline`;
CREATE TABLE `qb_vendorcredit_expenseline` (
  `qbsql_id` int(10) UNSIGNED NOT NULL,
  `qbsql_username_id` int(10) UNSIGNED DEFAULT NULL,
  `qbsql_external_id` int(10) UNSIGNED DEFAULT NULL,
  `VendorCredit_TxnID` varchar(40) DEFAULT NULL,
  `SortOrder` int(10) UNSIGNED DEFAULT '0',
  `TxnLineID` varchar(40) DEFAULT NULL,
  `Account_ListID` varchar(40) DEFAULT NULL,
  `Account_FullName` varchar(255) DEFAULT NULL,
  `Amount` decimal(10,2) DEFAULT NULL,
  `Memo` text,
  `Customer_ListID` varchar(40) DEFAULT NULL,
  `Customer_FullName` varchar(255) DEFAULT NULL,
  `Class_ListID` varchar(40) DEFAULT NULL,
  `Class_FullName` varchar(255) DEFAULT NULL,
  `BillableStatus` varchar(40) DEFAULT NULL,
  `qbsql_discov_datetime` datetime DEFAULT NULL,
  `qbsql_resync_datetime` datetime DEFAULT NULL,
  `qbsql_modify_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `qbsql_last_hash` varchar(40) DEFAULT NULL,
  `qbsql_last_qbxml` text,
  `qbsql_last_errnum` varchar(32) DEFAULT NULL,
  `qbsql_last_errmsg` varchar(255) DEFAULT NULL,
  `qbsql_enqueue_datetime` datetime DEFAULT NULL,
  `qbsql_dequeue_datetime` datetime DEFAULT NULL,
  `qbsql_audit_amount` decimal(10,0) DEFAULT NULL,
  `qbsql_audit_modified` datetime DEFAULT NULL,
  `qbsql_to_sync` tinyint(1) DEFAULT '0',
  `qbsql_to_delete` tinyint(1) DEFAULT '0',
  `qbsql_to_skip` tinyint(1) DEFAULT '0',
  `qbsql_to_void` tinyint(1) DEFAULT '0',
  `qbsql_flag_deleted` tinyint(1) DEFAULT '0',
  `qbsql_flag_skipped` tinyint(1) DEFAULT '0',
  `qbsql_flag_voided` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qb_vendorcredit_itemgroupline`
--

DROP TABLE IF EXISTS `qb_vendorcredit_itemgroupline`;
CREATE TABLE `qb_vendorcredit_itemgroupline` (
  `qbsql_id` int(10) UNSIGNED NOT NULL,
  `qbsql_username_id` int(10) UNSIGNED DEFAULT NULL,
  `qbsql_external_id` int(10) UNSIGNED DEFAULT NULL,
  `VendorCredit_TxnID` varchar(40) DEFAULT NULL,
  `SortOrder` int(10) UNSIGNED DEFAULT '0',
  `TxnLineID` varchar(40) DEFAULT NULL,
  `ItemGroup_ListID` varchar(40) DEFAULT NULL,
  `ItemGroup_FullName` varchar(255) DEFAULT NULL,
  `Descrip` text,
  `Quantity` decimal(12,5) DEFAULT '0.00000',
  `UnitOfMeasure` text,
  `OverrideUOMSet_ListID` varchar(40) DEFAULT NULL,
  `OverrideUOMSet_FullName` varchar(255) DEFAULT NULL,
  `TotalAmount` decimal(10,2) DEFAULT NULL,
  `qbsql_discov_datetime` datetime DEFAULT NULL,
  `qbsql_resync_datetime` datetime DEFAULT NULL,
  `qbsql_modify_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `qbsql_last_hash` varchar(40) DEFAULT NULL,
  `qbsql_last_qbxml` text,
  `qbsql_last_errnum` varchar(32) DEFAULT NULL,
  `qbsql_last_errmsg` varchar(255) DEFAULT NULL,
  `qbsql_enqueue_datetime` datetime DEFAULT NULL,
  `qbsql_dequeue_datetime` datetime DEFAULT NULL,
  `qbsql_audit_amount` decimal(10,0) DEFAULT NULL,
  `qbsql_audit_modified` datetime DEFAULT NULL,
  `qbsql_to_sync` tinyint(1) DEFAULT '0',
  `qbsql_to_delete` tinyint(1) DEFAULT '0',
  `qbsql_to_skip` tinyint(1) DEFAULT '0',
  `qbsql_to_void` tinyint(1) DEFAULT '0',
  `qbsql_flag_deleted` tinyint(1) DEFAULT '0',
  `qbsql_flag_skipped` tinyint(1) DEFAULT '0',
  `qbsql_flag_voided` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qb_vendorcredit_itemgroupline_itemline`
--

DROP TABLE IF EXISTS `qb_vendorcredit_itemgroupline_itemline`;
CREATE TABLE `qb_vendorcredit_itemgroupline_itemline` (
  `qbsql_id` int(10) UNSIGNED NOT NULL,
  `qbsql_username_id` int(10) UNSIGNED DEFAULT NULL,
  `qbsql_external_id` int(10) UNSIGNED DEFAULT NULL,
  `VendorCredit_TxnID` varchar(40) DEFAULT NULL,
  `VendorCredit_ItemGroupLine_TxnLineID` text,
  `SortOrder` int(10) UNSIGNED DEFAULT '0',
  `TxnLineID` varchar(40) DEFAULT NULL,
  `Item_ListID` varchar(40) DEFAULT NULL,
  `Item_FullName` varchar(255) DEFAULT NULL,
  `Descrip` text,
  `Quantity` decimal(12,5) DEFAULT '0.00000',
  `UnitOfMeasure` text,
  `OverrideUOMSet_ListID` varchar(40) DEFAULT NULL,
  `OverrideUOMSet_FullName` varchar(255) DEFAULT NULL,
  `Cost` decimal(13,5) DEFAULT NULL,
  `Amount` decimal(10,2) DEFAULT NULL,
  `Customer_ListID` varchar(40) DEFAULT NULL,
  `Customer_FullName` varchar(255) DEFAULT NULL,
  `Class_ListID` varchar(40) DEFAULT NULL,
  `Class_FullName` varchar(255) DEFAULT NULL,
  `BillableStatus` varchar(40) DEFAULT NULL,
  `qbsql_discov_datetime` datetime DEFAULT NULL,
  `qbsql_resync_datetime` datetime DEFAULT NULL,
  `qbsql_modify_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `qbsql_last_hash` varchar(40) DEFAULT NULL,
  `qbsql_last_qbxml` text,
  `qbsql_last_errnum` varchar(32) DEFAULT NULL,
  `qbsql_last_errmsg` varchar(255) DEFAULT NULL,
  `qbsql_enqueue_datetime` datetime DEFAULT NULL,
  `qbsql_dequeue_datetime` datetime DEFAULT NULL,
  `qbsql_audit_amount` decimal(10,0) DEFAULT NULL,
  `qbsql_audit_modified` datetime DEFAULT NULL,
  `qbsql_to_sync` tinyint(1) DEFAULT '0',
  `qbsql_to_delete` tinyint(1) DEFAULT '0',
  `qbsql_to_skip` tinyint(1) DEFAULT '0',
  `qbsql_to_void` tinyint(1) DEFAULT '0',
  `qbsql_flag_deleted` tinyint(1) DEFAULT '0',
  `qbsql_flag_skipped` tinyint(1) DEFAULT '0',
  `qbsql_flag_voided` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qb_vendorcredit_itemline`
--

DROP TABLE IF EXISTS `qb_vendorcredit_itemline`;
CREATE TABLE `qb_vendorcredit_itemline` (
  `qbsql_id` int(10) UNSIGNED NOT NULL,
  `qbsql_username_id` int(10) UNSIGNED DEFAULT NULL,
  `qbsql_external_id` int(10) UNSIGNED DEFAULT NULL,
  `VendorCredit_TxnID` varchar(40) DEFAULT NULL,
  `SortOrder` int(10) UNSIGNED DEFAULT '0',
  `TxnLineID` varchar(40) DEFAULT NULL,
  `Item_ListID` varchar(40) DEFAULT NULL,
  `Item_FullName` varchar(255) DEFAULT NULL,
  `Descrip` text,
  `Quantity` decimal(12,5) DEFAULT '0.00000',
  `UnitOfMeasure` text,
  `OverrideUOMSet_ListID` varchar(40) DEFAULT NULL,
  `OverrideUOMSet_FullName` varchar(255) DEFAULT NULL,
  `Cost` decimal(13,5) DEFAULT NULL,
  `Amount` decimal(10,2) DEFAULT NULL,
  `Customer_ListID` varchar(40) DEFAULT NULL,
  `Customer_FullName` varchar(255) DEFAULT NULL,
  `Class_ListID` varchar(40) DEFAULT NULL,
  `Class_FullName` varchar(255) DEFAULT NULL,
  `BillableStatus` varchar(40) DEFAULT NULL,
  `qbsql_discov_datetime` datetime DEFAULT NULL,
  `qbsql_resync_datetime` datetime DEFAULT NULL,
  `qbsql_modify_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `qbsql_last_hash` varchar(40) DEFAULT NULL,
  `qbsql_last_qbxml` text,
  `qbsql_last_errnum` varchar(32) DEFAULT NULL,
  `qbsql_last_errmsg` varchar(255) DEFAULT NULL,
  `qbsql_enqueue_datetime` datetime DEFAULT NULL,
  `qbsql_dequeue_datetime` datetime DEFAULT NULL,
  `qbsql_audit_amount` decimal(10,0) DEFAULT NULL,
  `qbsql_audit_modified` datetime DEFAULT NULL,
  `qbsql_to_sync` tinyint(1) DEFAULT '0',
  `qbsql_to_delete` tinyint(1) DEFAULT '0',
  `qbsql_to_skip` tinyint(1) DEFAULT '0',
  `qbsql_to_void` tinyint(1) DEFAULT '0',
  `qbsql_flag_deleted` tinyint(1) DEFAULT '0',
  `qbsql_flag_skipped` tinyint(1) DEFAULT '0',
  `qbsql_flag_voided` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qb_vendorcredit_linkedtxn`
--

DROP TABLE IF EXISTS `qb_vendorcredit_linkedtxn`;
CREATE TABLE `qb_vendorcredit_linkedtxn` (
  `qbsql_id` int(10) UNSIGNED NOT NULL,
  `qbsql_username_id` int(10) UNSIGNED DEFAULT NULL,
  `qbsql_external_id` int(10) UNSIGNED DEFAULT NULL,
  `FromTxnID` varchar(40) DEFAULT NULL,
  `VendorCredit_TxnID` varchar(40) DEFAULT NULL,
  `LinkType` text,
  `ToTxnID` varchar(40) DEFAULT NULL,
  `TxnType` varchar(40) DEFAULT NULL,
  `TxnDate` date DEFAULT NULL,
  `RefNumber` text,
  `Amount` decimal(10,2) DEFAULT NULL,
  `qbsql_discov_datetime` datetime DEFAULT NULL,
  `qbsql_resync_datetime` datetime DEFAULT NULL,
  `qbsql_modify_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `qbsql_last_hash` varchar(40) DEFAULT NULL,
  `qbsql_last_qbxml` text,
  `qbsql_last_errnum` varchar(32) DEFAULT NULL,
  `qbsql_last_errmsg` varchar(255) DEFAULT NULL,
  `qbsql_enqueue_datetime` datetime DEFAULT NULL,
  `qbsql_dequeue_datetime` datetime DEFAULT NULL,
  `qbsql_audit_amount` decimal(10,0) DEFAULT NULL,
  `qbsql_audit_modified` datetime DEFAULT NULL,
  `qbsql_to_sync` tinyint(1) DEFAULT '0',
  `qbsql_to_delete` tinyint(1) DEFAULT '0',
  `qbsql_to_skip` tinyint(1) DEFAULT '0',
  `qbsql_to_void` tinyint(1) DEFAULT '0',
  `qbsql_flag_deleted` tinyint(1) DEFAULT '0',
  `qbsql_flag_skipped` tinyint(1) DEFAULT '0',
  `qbsql_flag_voided` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qb_vendortype`
--

DROP TABLE IF EXISTS `qb_vendortype`;
CREATE TABLE `qb_vendortype` (
  `qbsql_id` int(10) UNSIGNED NOT NULL,
  `qbsql_username_id` int(10) UNSIGNED DEFAULT NULL,
  `qbsql_external_id` int(10) UNSIGNED DEFAULT NULL,
  `ListID` varchar(40) DEFAULT NULL,
  `TimeCreated` datetime DEFAULT NULL,
  `TimeModified` datetime DEFAULT NULL,
  `EditSequence` text,
  `Name` text,
  `FullName` varchar(255) DEFAULT NULL,
  `IsActive` tinyint(1) DEFAULT '0',
  `Parent_ListID` varchar(40) DEFAULT NULL,
  `Parent_FullName` varchar(255) DEFAULT NULL,
  `Sublevel` int(10) UNSIGNED DEFAULT '0',
  `qbsql_discov_datetime` datetime DEFAULT NULL,
  `qbsql_resync_datetime` datetime DEFAULT NULL,
  `qbsql_modify_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `qbsql_last_hash` varchar(40) DEFAULT NULL,
  `qbsql_last_qbxml` text,
  `qbsql_last_errnum` varchar(32) DEFAULT NULL,
  `qbsql_last_errmsg` varchar(255) DEFAULT NULL,
  `qbsql_enqueue_datetime` datetime DEFAULT NULL,
  `qbsql_dequeue_datetime` datetime DEFAULT NULL,
  `qbsql_audit_amount` decimal(10,0) DEFAULT NULL,
  `qbsql_audit_modified` datetime DEFAULT NULL,
  `qbsql_to_sync` tinyint(1) DEFAULT '0',
  `qbsql_to_delete` tinyint(1) DEFAULT '0',
  `qbsql_to_skip` tinyint(1) DEFAULT '0',
  `qbsql_to_void` tinyint(1) DEFAULT '0',
  `qbsql_flag_deleted` tinyint(1) DEFAULT '0',
  `qbsql_flag_skipped` tinyint(1) DEFAULT '0',
  `qbsql_flag_voided` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qb_workerscompcode`
--

DROP TABLE IF EXISTS `qb_workerscompcode`;
CREATE TABLE `qb_workerscompcode` (
  `qbsql_id` int(10) UNSIGNED NOT NULL,
  `qbsql_username_id` int(10) UNSIGNED DEFAULT NULL,
  `qbsql_external_id` int(10) UNSIGNED DEFAULT NULL,
  `ListID` varchar(40) DEFAULT NULL,
  `TimeCreated` datetime DEFAULT NULL,
  `TimeModified` datetime DEFAULT NULL,
  `EditSequence` text,
  `Name` text,
  `IsActive` tinyint(1) DEFAULT '0',
  `Descrip` text,
  `CurrentRate` decimal(13,5) DEFAULT NULL,
  `CurrentEffectiveDate` date DEFAULT NULL,
  `NextRate` decimal(13,5) DEFAULT NULL,
  `NextEffectiveDate` date DEFAULT NULL,
  `qbsql_discov_datetime` datetime DEFAULT NULL,
  `qbsql_resync_datetime` datetime DEFAULT NULL,
  `qbsql_modify_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `qbsql_last_hash` varchar(40) DEFAULT NULL,
  `qbsql_last_qbxml` text,
  `qbsql_last_errnum` varchar(32) DEFAULT NULL,
  `qbsql_last_errmsg` varchar(255) DEFAULT NULL,
  `qbsql_enqueue_datetime` datetime DEFAULT NULL,
  `qbsql_dequeue_datetime` datetime DEFAULT NULL,
  `qbsql_audit_amount` decimal(10,0) DEFAULT NULL,
  `qbsql_audit_modified` datetime DEFAULT NULL,
  `qbsql_to_sync` tinyint(1) DEFAULT '0',
  `qbsql_to_delete` tinyint(1) DEFAULT '0',
  `qbsql_to_skip` tinyint(1) DEFAULT '0',
  `qbsql_to_void` tinyint(1) DEFAULT '0',
  `qbsql_flag_deleted` tinyint(1) DEFAULT '0',
  `qbsql_flag_skipped` tinyint(1) DEFAULT '0',
  `qbsql_flag_voided` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qb_workerscompcode_ratehistory`
--

DROP TABLE IF EXISTS `qb_workerscompcode_ratehistory`;
CREATE TABLE `qb_workerscompcode_ratehistory` (
  `qbsql_id` int(10) UNSIGNED NOT NULL,
  `qbsql_username_id` int(10) UNSIGNED DEFAULT NULL,
  `qbsql_external_id` int(10) UNSIGNED DEFAULT NULL,
  `WorkersCompCode_ListID` varchar(40) DEFAULT NULL,
  `Rate` decimal(13,5) DEFAULT NULL,
  `EffectiveDate` date DEFAULT NULL,
  `qbsql_discov_datetime` datetime DEFAULT NULL,
  `qbsql_resync_datetime` datetime DEFAULT NULL,
  `qbsql_modify_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `qbsql_last_hash` varchar(40) DEFAULT NULL,
  `qbsql_last_qbxml` text,
  `qbsql_last_errnum` varchar(32) DEFAULT NULL,
  `qbsql_last_errmsg` varchar(255) DEFAULT NULL,
  `qbsql_enqueue_datetime` datetime DEFAULT NULL,
  `qbsql_dequeue_datetime` datetime DEFAULT NULL,
  `qbsql_audit_amount` decimal(10,0) DEFAULT NULL,
  `qbsql_audit_modified` datetime DEFAULT NULL,
  `qbsql_to_sync` tinyint(1) DEFAULT '0',
  `qbsql_to_delete` tinyint(1) DEFAULT '0',
  `qbsql_to_skip` tinyint(1) DEFAULT '0',
  `qbsql_to_void` tinyint(1) DEFAULT '0',
  `qbsql_flag_deleted` tinyint(1) DEFAULT '0',
  `qbsql_flag_skipped` tinyint(1) DEFAULT '0',
  `qbsql_flag_voided` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `quickbooks_config`
--

DROP TABLE IF EXISTS `quickbooks_config`;
CREATE TABLE `quickbooks_config` (
  `quickbooks_config_id` int(10) UNSIGNED NOT NULL,
  `qb_username` varchar(40) NOT NULL,
  `module` varchar(40) NOT NULL,
  `cfgkey` varchar(40) NOT NULL,
  `cfgval` varchar(40) NOT NULL,
  `cfgtype` varchar(40) NOT NULL,
  `cfgopts` text NOT NULL,
  `write_datetime` datetime NOT NULL,
  `mod_datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `quickbooks_log`
--

DROP TABLE IF EXISTS `quickbooks_log`;
CREATE TABLE `quickbooks_log` (
  `quickbooks_log_id` int(10) UNSIGNED NOT NULL,
  `quickbooks_ticket_id` int(10) UNSIGNED DEFAULT NULL,
  `batch` int(10) UNSIGNED NOT NULL,
  `msg` text NOT NULL,
  `log_datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `quickbooks_oauth`
--

DROP TABLE IF EXISTS `quickbooks_oauth`;
CREATE TABLE `quickbooks_oauth` (
  `quickbooks_oauth_id` int(10) UNSIGNED NOT NULL,
  `app_username` varchar(255) NOT NULL,
  `app_tenant` varchar(255) NOT NULL,
  `oauth_request_token` varchar(255) DEFAULT NULL,
  `oauth_request_token_secret` varchar(255) DEFAULT NULL,
  `oauth_access_token` varchar(255) DEFAULT NULL,
  `oauth_access_token_secret` varchar(255) DEFAULT NULL,
  `qb_realm` varchar(32) DEFAULT NULL,
  `qb_flavor` varchar(12) DEFAULT NULL,
  `qb_user` varchar(64) DEFAULT NULL,
  `request_datetime` datetime NOT NULL,
  `access_datetime` datetime DEFAULT NULL,
  `touch_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `quickbooks_queue`
--

DROP TABLE IF EXISTS `quickbooks_queue`;
CREATE TABLE `quickbooks_queue` (
  `quickbooks_queue_id` int(10) UNSIGNED NOT NULL,
  `quickbooks_ticket_id` int(10) UNSIGNED DEFAULT NULL,
  `qb_username` varchar(40) NOT NULL,
  `qb_action` varchar(32) NOT NULL,
  `ident` varchar(40) NOT NULL,
  `extra` text,
  `qbxml` text,
  `priority` int(10) UNSIGNED DEFAULT '0',
  `qb_status` char(1) NOT NULL,
  `msg` text,
  `enqueue_datetime` datetime NOT NULL,
  `dequeue_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `quickbooks_recur`
--

DROP TABLE IF EXISTS `quickbooks_recur`;
CREATE TABLE `quickbooks_recur` (
  `quickbooks_recur_id` int(10) UNSIGNED NOT NULL,
  `qb_username` varchar(40) NOT NULL,
  `qb_action` varchar(32) NOT NULL,
  `ident` varchar(40) NOT NULL,
  `extra` text,
  `qbxml` text,
  `priority` int(10) UNSIGNED DEFAULT '0',
  `run_every` int(10) UNSIGNED NOT NULL,
  `recur_lasttime` int(10) UNSIGNED NOT NULL,
  `enqueue_datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `quickbooks_ticket`
--

DROP TABLE IF EXISTS `quickbooks_ticket`;
CREATE TABLE `quickbooks_ticket` (
  `quickbooks_ticket_id` int(10) UNSIGNED NOT NULL,
  `qb_username` varchar(40) NOT NULL,
  `ticket` char(36) NOT NULL,
  `processed` int(10) UNSIGNED DEFAULT '0',
  `lasterror_num` varchar(32) DEFAULT NULL,
  `lasterror_msg` varchar(255) DEFAULT NULL,
  `ipaddr` char(15) NOT NULL,
  `write_datetime` datetime NOT NULL,
  `touch_datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `quickbooks_user`
--

DROP TABLE IF EXISTS `quickbooks_user`;
CREATE TABLE `quickbooks_user` (
  `qb_username` varchar(40) NOT NULL,
  `qb_password` varchar(255) NOT NULL,
  `qb_company_file` varchar(255) DEFAULT NULL,
  `qbwc_wait_before_next_update` int(10) UNSIGNED DEFAULT '0',
  `qbwc_min_run_every_n_seconds` int(10) UNSIGNED DEFAULT '0',
  `status` char(1) NOT NULL,
  `write_datetime` datetime NOT NULL,
  `touch_datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `qb_account`
--
ALTER TABLE `qb_account`
  ADD PRIMARY KEY (`qbsql_id`),
  ADD KEY `FullName` (`FullName`),
  ADD KEY `IsActive` (`IsActive`),
  ADD KEY `Parent_ListID` (`Parent_ListID`),
  ADD KEY `ListID` (`ListID`),
  ADD KEY `Name` (`Name`);

--
-- Indexes for table `qb_account_taxlineinfo`
--
ALTER TABLE `qb_account_taxlineinfo`
  ADD PRIMARY KEY (`qbsql_id`),
  ADD KEY `Account_ListID` (`Account_ListID`),
  ADD KEY `TaxLineInfo_TaxLineID` (`TaxLineInfo_TaxLineID`);

--
-- Indexes for table `qb_bill`
--
ALTER TABLE `qb_bill`
  ADD PRIMARY KEY (`qbsql_id`),
  ADD KEY `Vendor_ListID` (`Vendor_ListID`),
  ADD KEY `APAccount_ListID` (`APAccount_ListID`),
  ADD KEY `TxnDate` (`TxnDate`),
  ADD KEY `Currency_ListID` (`Currency_ListID`),
  ADD KEY `RefNumber` (`RefNumber`),
  ADD KEY `Terms_ListID` (`Terms_ListID`),
  ADD KEY `IsPaid` (`IsPaid`),
  ADD KEY `TxnID` (`TxnID`);

--
-- Indexes for table `qb_billingrate`
--
ALTER TABLE `qb_billingrate`
  ADD PRIMARY KEY (`qbsql_id`),
  ADD KEY `ListID` (`ListID`);

--
-- Indexes for table `qb_billingrate_billingrateperitem`
--
ALTER TABLE `qb_billingrate_billingrateperitem`
  ADD PRIMARY KEY (`qbsql_id`),
  ADD KEY `BillingRate_ListID` (`BillingRate_ListID`),
  ADD KEY `Item_ListID` (`Item_ListID`);

--
-- Indexes for table `qb_billpaymentcheck`
--
ALTER TABLE `qb_billpaymentcheck`
  ADD PRIMARY KEY (`qbsql_id`),
  ADD KEY `PayeeEntity_ListID` (`PayeeEntity_ListID`),
  ADD KEY `APAccount_ListID` (`APAccount_ListID`),
  ADD KEY `TxnDate` (`TxnDate`),
  ADD KEY `BankAccount_ListID` (`BankAccount_ListID`),
  ADD KEY `RefNumber` (`RefNumber`),
  ADD KEY `IsToBePrinted` (`IsToBePrinted`),
  ADD KEY `TxnID` (`TxnID`);

--
-- Indexes for table `qb_billpaymentcheck_appliedtotxn`
--
ALTER TABLE `qb_billpaymentcheck_appliedtotxn`
  ADD PRIMARY KEY (`qbsql_id`),
  ADD KEY `FromTxnID` (`FromTxnID`),
  ADD KEY `BillPaymentCheck_TxnID` (`BillPaymentCheck_TxnID`),
  ADD KEY `ToTxnID` (`ToTxnID`),
  ADD KEY `TxnType` (`TxnType`),
  ADD KEY `TxnDate` (`TxnDate`),
  ADD KEY `DiscountAccount_ListID` (`DiscountAccount_ListID`);

--
-- Indexes for table `qb_billpaymentcreditcard`
--
ALTER TABLE `qb_billpaymentcreditcard`
  ADD PRIMARY KEY (`qbsql_id`),
  ADD KEY `PayeeEntity_ListID` (`PayeeEntity_ListID`),
  ADD KEY `APAccount_ListID` (`APAccount_ListID`),
  ADD KEY `TxnDate` (`TxnDate`),
  ADD KEY `CreditCardAccount_ListID` (`CreditCardAccount_ListID`),
  ADD KEY `RefNumber` (`RefNumber`),
  ADD KEY `TxnID` (`TxnID`);

--
-- Indexes for table `qb_billpaymentcreditcard_appliedtotxn`
--
ALTER TABLE `qb_billpaymentcreditcard_appliedtotxn`
  ADD PRIMARY KEY (`qbsql_id`),
  ADD KEY `FromTxnID` (`FromTxnID`),
  ADD KEY `BillPaymentCreditCard_TxnID` (`BillPaymentCreditCard_TxnID`),
  ADD KEY `ToTxnID` (`ToTxnID`),
  ADD KEY `TxnType` (`TxnType`),
  ADD KEY `TxnDate` (`TxnDate`),
  ADD KEY `DiscountAccount_ListID` (`DiscountAccount_ListID`);

--
-- Indexes for table `qb_billtopay`
--
ALTER TABLE `qb_billtopay`
  ADD PRIMARY KEY (`qbsql_id`),
  ADD KEY `TxnType` (`TxnType`),
  ADD KEY `APAccount_ListID` (`APAccount_ListID`),
  ADD KEY `TxnDate` (`TxnDate`),
  ADD KEY `TxnID` (`TxnID`);

--
-- Indexes for table `qb_bill_expenseline`
--
ALTER TABLE `qb_bill_expenseline`
  ADD PRIMARY KEY (`qbsql_id`),
  ADD KEY `Bill_TxnID` (`Bill_TxnID`),
  ADD KEY `TxnLineID` (`TxnLineID`),
  ADD KEY `Account_ListID` (`Account_ListID`),
  ADD KEY `Customer_ListID` (`Customer_ListID`),
  ADD KEY `Class_ListID` (`Class_ListID`);

--
-- Indexes for table `qb_bill_itemgroupline`
--
ALTER TABLE `qb_bill_itemgroupline`
  ADD PRIMARY KEY (`qbsql_id`),
  ADD KEY `Bill_TxnID` (`Bill_TxnID`),
  ADD KEY `ItemGroup_ListID` (`ItemGroup_ListID`);

--
-- Indexes for table `qb_bill_itemgroupline_itemline`
--
ALTER TABLE `qb_bill_itemgroupline_itemline`
  ADD PRIMARY KEY (`qbsql_id`),
  ADD KEY `Bill_TxnID` (`Bill_TxnID`),
  ADD KEY `TxnLineID` (`TxnLineID`),
  ADD KEY `Item_ListID` (`Item_ListID`),
  ADD KEY `Customer_ListID` (`Customer_ListID`),
  ADD KEY `Class_ListID` (`Class_ListID`);

--
-- Indexes for table `qb_bill_itemline`
--
ALTER TABLE `qb_bill_itemline`
  ADD PRIMARY KEY (`qbsql_id`),
  ADD KEY `Bill_TxnID` (`Bill_TxnID`),
  ADD KEY `TxnLineID` (`TxnLineID`),
  ADD KEY `Item_ListID` (`Item_ListID`),
  ADD KEY `Customer_ListID` (`Customer_ListID`),
  ADD KEY `Class_ListID` (`Class_ListID`);

--
-- Indexes for table `qb_bill_linkedtxn`
--
ALTER TABLE `qb_bill_linkedtxn`
  ADD PRIMARY KEY (`qbsql_id`),
  ADD KEY `FromTxnID` (`FromTxnID`),
  ADD KEY `Bill_TxnID` (`Bill_TxnID`),
  ADD KEY `ToTxnID` (`ToTxnID`),
  ADD KEY `TxnType` (`TxnType`),
  ADD KEY `TxnDate` (`TxnDate`);

--
-- Indexes for table `qb_charge`
--
ALTER TABLE `qb_charge`
  ADD PRIMARY KEY (`qbsql_id`),
  ADD KEY `Customer_ListID` (`Customer_ListID`),
  ADD KEY `TxnDate` (`TxnDate`),
  ADD KEY `Item_ListID` (`Item_ListID`),
  ADD KEY `ARAccount_ListID` (`ARAccount_ListID`),
  ADD KEY `Class_ListID` (`Class_ListID`),
  ADD KEY `TxnID` (`TxnID`);

--
-- Indexes for table `qb_check`
--
ALTER TABLE `qb_check`
  ADD PRIMARY KEY (`qbsql_id`),
  ADD KEY `Account_ListID` (`Account_ListID`),
  ADD KEY `PayeeEntityRef_ListID` (`PayeeEntityRef_ListID`),
  ADD KEY `RefNumber` (`RefNumber`),
  ADD KEY `TxnDate` (`TxnDate`),
  ADD KEY `Address_Country` (`Address_Country`),
  ADD KEY `IsToBePrinted` (`IsToBePrinted`),
  ADD KEY `TxnID` (`TxnID`);

--
-- Indexes for table `qb_check_expenseline`
--
ALTER TABLE `qb_check_expenseline`
  ADD PRIMARY KEY (`qbsql_id`),
  ADD KEY `Check_TxnID` (`Check_TxnID`),
  ADD KEY `TxnLineID` (`TxnLineID`),
  ADD KEY `Account_ListID` (`Account_ListID`),
  ADD KEY `Customer_ListID` (`Customer_ListID`),
  ADD KEY `Class_ListID` (`Class_ListID`);

--
-- Indexes for table `qb_check_itemgroupline`
--
ALTER TABLE `qb_check_itemgroupline`
  ADD PRIMARY KEY (`qbsql_id`),
  ADD KEY `Check_TxnID` (`Check_TxnID`),
  ADD KEY `TxnLineID` (`TxnLineID`),
  ADD KEY `ItemGroup_ListID` (`ItemGroup_ListID`),
  ADD KEY `OverrideUOMSet_ListID` (`OverrideUOMSet_ListID`);

--
-- Indexes for table `qb_check_itemgroupline_itemline`
--
ALTER TABLE `qb_check_itemgroupline_itemline`
  ADD PRIMARY KEY (`qbsql_id`),
  ADD KEY `Check_TxnID` (`Check_TxnID`),
  ADD KEY `TxnLineID` (`TxnLineID`),
  ADD KEY `Item_ListID` (`Item_ListID`),
  ADD KEY `OverrideUOMSet_ListID` (`OverrideUOMSet_ListID`),
  ADD KEY `Customer_ListID` (`Customer_ListID`),
  ADD KEY `Class_ListID` (`Class_ListID`);

--
-- Indexes for table `qb_check_itemline`
--
ALTER TABLE `qb_check_itemline`
  ADD PRIMARY KEY (`qbsql_id`),
  ADD KEY `Check_TxnID` (`Check_TxnID`),
  ADD KEY `TxnLineID` (`TxnLineID`),
  ADD KEY `Item_ListID` (`Item_ListID`),
  ADD KEY `OverrideUOMSet_ListID` (`OverrideUOMSet_ListID`),
  ADD KEY `Customer_ListID` (`Customer_ListID`),
  ADD KEY `Class_ListID` (`Class_ListID`);

--
-- Indexes for table `qb_check_linkedtxn`
--
ALTER TABLE `qb_check_linkedtxn`
  ADD PRIMARY KEY (`qbsql_id`),
  ADD KEY `FromTxnID` (`FromTxnID`),
  ADD KEY `Check_TxnID` (`Check_TxnID`),
  ADD KEY `ToTxnID` (`ToTxnID`),
  ADD KEY `TxnType` (`TxnType`),
  ADD KEY `TxnDate` (`TxnDate`);

--
-- Indexes for table `qb_class`
--
ALTER TABLE `qb_class`
  ADD PRIMARY KEY (`qbsql_id`),
  ADD KEY `FullName` (`FullName`),
  ADD KEY `IsActive` (`IsActive`),
  ADD KEY `Parent_ListID` (`Parent_ListID`),
  ADD KEY `ListID` (`ListID`),
  ADD KEY `Name` (`Name`);

--
-- Indexes for table `qb_company`
--
ALTER TABLE `qb_company`
  ADD PRIMARY KEY (`qbsql_id`);

--
-- Indexes for table `qb_company_subscribedservices_service`
--
ALTER TABLE `qb_company_subscribedservices_service`
  ADD PRIMARY KEY (`qbsql_id`);

--
-- Indexes for table `qb_creditcardcharge`
--
ALTER TABLE `qb_creditcardcharge`
  ADD PRIMARY KEY (`qbsql_id`),
  ADD KEY `Account_ListID` (`Account_ListID`),
  ADD KEY `PayeeEntity_ListID` (`PayeeEntity_ListID`),
  ADD KEY `TxnDate` (`TxnDate`),
  ADD KEY `TxnID` (`TxnID`);

--
-- Indexes for table `qb_creditcardcharge_expenseline`
--
ALTER TABLE `qb_creditcardcharge_expenseline`
  ADD PRIMARY KEY (`qbsql_id`),
  ADD KEY `CreditCardCharge_TxnID` (`CreditCardCharge_TxnID`),
  ADD KEY `TxnLineID` (`TxnLineID`),
  ADD KEY `Account_ListID` (`Account_ListID`),
  ADD KEY `Customer_ListID` (`Customer_ListID`),
  ADD KEY `Class_ListID` (`Class_ListID`);

--
-- Indexes for table `qb_creditcardcharge_itemgroupline`
--
ALTER TABLE `qb_creditcardcharge_itemgroupline`
  ADD PRIMARY KEY (`qbsql_id`),
  ADD KEY `CreditCardCharge_TxnID` (`CreditCardCharge_TxnID`),
  ADD KEY `TxnLineID` (`TxnLineID`),
  ADD KEY `ItemGroup_ListID` (`ItemGroup_ListID`),
  ADD KEY `OverrideUOMSet_ListID` (`OverrideUOMSet_ListID`);

--
-- Indexes for table `qb_creditcardcharge_itemgroupline_itemline`
--
ALTER TABLE `qb_creditcardcharge_itemgroupline_itemline`
  ADD PRIMARY KEY (`qbsql_id`),
  ADD KEY `CreditCardCharge_TxnID` (`CreditCardCharge_TxnID`),
  ADD KEY `TxnLineID` (`TxnLineID`),
  ADD KEY `Item_ListID` (`Item_ListID`),
  ADD KEY `OverrideUOMSet_ListID` (`OverrideUOMSet_ListID`),
  ADD KEY `Customer_ListID` (`Customer_ListID`),
  ADD KEY `Class_ListID` (`Class_ListID`);

--
-- Indexes for table `qb_creditcardcharge_itemline`
--
ALTER TABLE `qb_creditcardcharge_itemline`
  ADD PRIMARY KEY (`qbsql_id`),
  ADD KEY `CreditCardCharge_TxnID` (`CreditCardCharge_TxnID`),
  ADD KEY `TxnLineID` (`TxnLineID`),
  ADD KEY `Item_ListID` (`Item_ListID`),
  ADD KEY `OverrideUOMSet_ListID` (`OverrideUOMSet_ListID`),
  ADD KEY `Customer_ListID` (`Customer_ListID`),
  ADD KEY `Class_ListID` (`Class_ListID`);

--
-- Indexes for table `qb_creditcardcredit`
--
ALTER TABLE `qb_creditcardcredit`
  ADD PRIMARY KEY (`qbsql_id`),
  ADD KEY `Account_ListID` (`Account_ListID`),
  ADD KEY `PayeeEntity_ListID` (`PayeeEntity_ListID`),
  ADD KEY `TxnDate` (`TxnDate`),
  ADD KEY `TxnID` (`TxnID`);

--
-- Indexes for table `qb_creditcardcredit_expenseline`
--
ALTER TABLE `qb_creditcardcredit_expenseline`
  ADD PRIMARY KEY (`qbsql_id`),
  ADD KEY `CreditCardCredit_TxnID` (`CreditCardCredit_TxnID`),
  ADD KEY `TxnLineID` (`TxnLineID`),
  ADD KEY `Account_ListID` (`Account_ListID`),
  ADD KEY `Customer_ListID` (`Customer_ListID`),
  ADD KEY `Class_ListID` (`Class_ListID`);

--
-- Indexes for table `qb_creditcardcredit_itemgroupline`
--
ALTER TABLE `qb_creditcardcredit_itemgroupline`
  ADD PRIMARY KEY (`qbsql_id`),
  ADD KEY `CreditCardCredit_TxnID` (`CreditCardCredit_TxnID`),
  ADD KEY `TxnLineID` (`TxnLineID`),
  ADD KEY `ItemGroup_ListID` (`ItemGroup_ListID`),
  ADD KEY `OverrideUOMSet_ListID` (`OverrideUOMSet_ListID`);

--
-- Indexes for table `qb_creditcardcredit_itemgroupline_itemline`
--
ALTER TABLE `qb_creditcardcredit_itemgroupline_itemline`
  ADD PRIMARY KEY (`qbsql_id`),
  ADD KEY `CreditCardCredit_TxnID` (`CreditCardCredit_TxnID`),
  ADD KEY `TxnLineID` (`TxnLineID`);

--
-- Indexes for table `qb_creditcardcredit_itemline`
--
ALTER TABLE `qb_creditcardcredit_itemline`
  ADD PRIMARY KEY (`qbsql_id`),
  ADD KEY `CreditCardCredit_TxnID` (`CreditCardCredit_TxnID`),
  ADD KEY `TxnLineID` (`TxnLineID`),
  ADD KEY `Item_ListID` (`Item_ListID`),
  ADD KEY `OverrideUOMSet_ListID` (`OverrideUOMSet_ListID`),
  ADD KEY `Customer_ListID` (`Customer_ListID`),
  ADD KEY `Class_ListID` (`Class_ListID`);

--
-- Indexes for table `qb_creditmemo`
--
ALTER TABLE `qb_creditmemo`
  ADD PRIMARY KEY (`qbsql_id`),
  ADD KEY `Customer_ListID` (`Customer_ListID`),
  ADD KEY `Class_ListID` (`Class_ListID`),
  ADD KEY `ARAccount_ListID` (`ARAccount_ListID`),
  ADD KEY `Template_ListID` (`Template_ListID`),
  ADD KEY `TxnDate` (`TxnDate`),
  ADD KEY `RefNumber` (`RefNumber`),
  ADD KEY `BillAddress_Country` (`BillAddress_Country`),
  ADD KEY `ShipAddress_Country` (`ShipAddress_Country`),
  ADD KEY `IsPending` (`IsPending`),
  ADD KEY `Terms_ListID` (`Terms_ListID`),
  ADD KEY `SalesRep_ListID` (`SalesRep_ListID`),
  ADD KEY `ShipMethod_ListID` (`ShipMethod_ListID`),
  ADD KEY `ItemSalesTax_ListID` (`ItemSalesTax_ListID`),
  ADD KEY `CustomerMsg_ListID` (`CustomerMsg_ListID`),
  ADD KEY `IsToBePrinted` (`IsToBePrinted`),
  ADD KEY `IsToBeEmailed` (`IsToBeEmailed`),
  ADD KEY `CustomerSalesTaxCode_ListID` (`CustomerSalesTaxCode_ListID`),
  ADD KEY `TxnID` (`TxnID`);

--
-- Indexes for table `qb_creditmemo_creditmemoline`
--
ALTER TABLE `qb_creditmemo_creditmemoline`
  ADD PRIMARY KEY (`qbsql_id`),
  ADD KEY `CreditMemo_TxnID` (`CreditMemo_TxnID`),
  ADD KEY `TxnLineID` (`TxnLineID`),
  ADD KEY `Item_ListID` (`Item_ListID`),
  ADD KEY `OverrideUOMSet_ListID` (`OverrideUOMSet_ListID`),
  ADD KEY `Class_ListID` (`Class_ListID`),
  ADD KEY `SalesTaxCode_ListID` (`SalesTaxCode_ListID`);

--
-- Indexes for table `qb_creditmemo_creditmemolinegroup`
--
ALTER TABLE `qb_creditmemo_creditmemolinegroup`
  ADD PRIMARY KEY (`qbsql_id`),
  ADD KEY `CreditMemo_TxnID` (`CreditMemo_TxnID`),
  ADD KEY `TxnLineID` (`TxnLineID`),
  ADD KEY `ItemGroup_ListID` (`ItemGroup_ListID`),
  ADD KEY `OverrideUOMSet_ListID` (`OverrideUOMSet_ListID`);

--
-- Indexes for table `qb_creditmemo_creditmemolinegroup_creditmemoline`
--
ALTER TABLE `qb_creditmemo_creditmemolinegroup_creditmemoline`
  ADD PRIMARY KEY (`qbsql_id`),
  ADD KEY `CreditMemo_TxnID` (`CreditMemo_TxnID`),
  ADD KEY `TxnLineID` (`TxnLineID`),
  ADD KEY `Item_ListID` (`Item_ListID`),
  ADD KEY `OverrideUOMSet_ListID` (`OverrideUOMSet_ListID`),
  ADD KEY `Class_ListID` (`Class_ListID`),
  ADD KEY `SalesTaxCode_ListID` (`SalesTaxCode_ListID`);

--
-- Indexes for table `qb_creditmemo_linkedtxn`
--
ALTER TABLE `qb_creditmemo_linkedtxn`
  ADD PRIMARY KEY (`qbsql_id`),
  ADD KEY `FromTxnID` (`FromTxnID`),
  ADD KEY `CreditMemo_TxnID` (`CreditMemo_TxnID`),
  ADD KEY `ToTxnID` (`ToTxnID`),
  ADD KEY `TxnType` (`TxnType`),
  ADD KEY `TxnDate` (`TxnDate`);

--
-- Indexes for table `qb_credittoapply`
--
ALTER TABLE `qb_credittoapply`
  ADD PRIMARY KEY (`qbsql_id`),
  ADD KEY `TxnType` (`TxnType`),
  ADD KEY `APAccount_ListID` (`APAccount_ListID`),
  ADD KEY `TxnDate` (`TxnDate`),
  ADD KEY `TxnID` (`TxnID`);

--
-- Indexes for table `qb_currency`
--
ALTER TABLE `qb_currency`
  ADD PRIMARY KEY (`qbsql_id`),
  ADD KEY `IsActive` (`IsActive`),
  ADD KEY `ListID` (`ListID`);

--
-- Indexes for table `qb_customer`
--
ALTER TABLE `qb_customer`
  ADD PRIMARY KEY (`qbsql_id`),
  ADD KEY `FullName` (`FullName`),
  ADD KEY `IsActive` (`IsActive`),
  ADD KEY `Parent_ListID` (`Parent_ListID`),
  ADD KEY `CompanyName` (`CompanyName`),
  ADD KEY `LastName` (`LastName`),
  ADD KEY `BillAddress_Country` (`BillAddress_Country`),
  ADD KEY `ShipAddress_Country` (`ShipAddress_Country`),
  ADD KEY `CustomerType_ListID` (`CustomerType_ListID`),
  ADD KEY `Terms_ListID` (`Terms_ListID`),
  ADD KEY `SalesRep_ListID` (`SalesRep_ListID`),
  ADD KEY `SalesTaxCode_ListID` (`SalesTaxCode_ListID`),
  ADD KEY `ItemSalesTax_ListID` (`ItemSalesTax_ListID`),
  ADD KEY `PreferredPaymentMethod_ListID` (`PreferredPaymentMethod_ListID`),
  ADD KEY `JobType_ListID` (`JobType_ListID`),
  ADD KEY `PriceLevel_ListID` (`PriceLevel_ListID`),
  ADD KEY `ListID` (`ListID`),
  ADD KEY `Name` (`Name`);

--
-- Indexes for table `qb_customermsg`
--
ALTER TABLE `qb_customermsg`
  ADD PRIMARY KEY (`qbsql_id`),
  ADD KEY `IsActive` (`IsActive`),
  ADD KEY `ListID` (`ListID`),
  ADD KEY `Name` (`Name`);

--
-- Indexes for table `qb_customertype`
--
ALTER TABLE `qb_customertype`
  ADD PRIMARY KEY (`qbsql_id`),
  ADD KEY `FullName` (`FullName`),
  ADD KEY `IsActive` (`IsActive`),
  ADD KEY `Parent_ListID` (`Parent_ListID`),
  ADD KEY `ListID` (`ListID`);

--
-- Indexes for table `qb_dataext`
--
ALTER TABLE `qb_dataext`
  ADD PRIMARY KEY (`qbsql_id`),
  ADD KEY `Entity_ListID` (`Entity_ListID`),
  ADD KEY `Txn_TxnID` (`Txn_TxnID`);

--
-- Indexes for table `qb_dataextdef`
--
ALTER TABLE `qb_dataextdef`
  ADD PRIMARY KEY (`qbsql_id`);

--
-- Indexes for table `qb_dataextdef_assigntoobject`
--
ALTER TABLE `qb_dataextdef_assigntoobject`
  ADD PRIMARY KEY (`qbsql_id`);

--
-- Indexes for table `qb_datedriventerms`
--
ALTER TABLE `qb_datedriventerms`
  ADD PRIMARY KEY (`qbsql_id`),
  ADD KEY `IsActive` (`IsActive`),
  ADD KEY `ListID` (`ListID`);

--
-- Indexes for table `qb_deposit`
--
ALTER TABLE `qb_deposit`
  ADD PRIMARY KEY (`qbsql_id`),
  ADD KEY `TxnDate` (`TxnDate`),
  ADD KEY `DepositToAccount_ListID` (`DepositToAccount_ListID`),
  ADD KEY `CashBackInfo_TxnLineID` (`CashBackInfo_TxnLineID`),
  ADD KEY `CashBackInfo_Account_ListID` (`CashBackInfo_Account_ListID`),
  ADD KEY `TxnID` (`TxnID`);

--
-- Indexes for table `qb_deposit_depositline`
--
ALTER TABLE `qb_deposit_depositline`
  ADD PRIMARY KEY (`qbsql_id`),
  ADD KEY `Deposit_TxnID` (`Deposit_TxnID`),
  ADD KEY `TxnType` (`TxnType`),
  ADD KEY `TxnLineID` (`TxnLineID`),
  ADD KEY `PaymentTxnLineID` (`PaymentTxnLineID`),
  ADD KEY `Entity_ListID` (`Entity_ListID`),
  ADD KEY `Account_ListID` (`Account_ListID`),
  ADD KEY `PaymentMethod_ListID` (`PaymentMethod_ListID`),
  ADD KEY `Class_ListID` (`Class_ListID`),
  ADD KEY `TxnID` (`TxnID`);

--
-- Indexes for table `qb_employee`
--
ALTER TABLE `qb_employee`
  ADD PRIMARY KEY (`qbsql_id`),
  ADD KEY `IsActive` (`IsActive`),
  ADD KEY `LastName` (`LastName`),
  ADD KEY `BillingRate_ListID` (`BillingRate_ListID`),
  ADD KEY `EmployeePayrollInfo_Class_ListID` (`EmployeePayrollInfo_Class_ListID`),
  ADD KEY `ListID` (`ListID`);

--
-- Indexes for table `qb_employee_earnings`
--
ALTER TABLE `qb_employee_earnings`
  ADD PRIMARY KEY (`qbsql_id`),
  ADD KEY `Employee_ListID` (`Employee_ListID`),
  ADD KEY `PayrollItemWage_ListID` (`PayrollItemWage_ListID`);

--
-- Indexes for table `qb_estimate`
--
ALTER TABLE `qb_estimate`
  ADD PRIMARY KEY (`qbsql_id`),
  ADD KEY `Customer_ListID` (`Customer_ListID`),
  ADD KEY `Class_ListID` (`Class_ListID`),
  ADD KEY `Template_ListID` (`Template_ListID`),
  ADD KEY `TxnDate` (`TxnDate`),
  ADD KEY `RefNumber` (`RefNumber`),
  ADD KEY `BillAddress_Country` (`BillAddress_Country`),
  ADD KEY `ShipAddress_Country` (`ShipAddress_Country`),
  ADD KEY `IsActive` (`IsActive`),
  ADD KEY `Terms_ListID` (`Terms_ListID`),
  ADD KEY `SalesRep_ListID` (`SalesRep_ListID`),
  ADD KEY `ItemSalesTax_ListID` (`ItemSalesTax_ListID`),
  ADD KEY `Currency_ListID` (`Currency_ListID`),
  ADD KEY `CustomerMsg_ListID` (`CustomerMsg_ListID`),
  ADD KEY `IsToBeEmailed` (`IsToBeEmailed`),
  ADD KEY `CustomerSalesTaxCode_ListID` (`CustomerSalesTaxCode_ListID`),
  ADD KEY `TxnID` (`TxnID`);

--
-- Indexes for table `qb_estimate_estimateline`
--
ALTER TABLE `qb_estimate_estimateline`
  ADD PRIMARY KEY (`qbsql_id`),
  ADD KEY `Estimate_TxnID` (`Estimate_TxnID`),
  ADD KEY `TxnLineID` (`TxnLineID`),
  ADD KEY `Item_ListID` (`Item_ListID`),
  ADD KEY `OverrideUOMSet_ListID` (`OverrideUOMSet_ListID`),
  ADD KEY `Class_ListID` (`Class_ListID`),
  ADD KEY `InventorySite_ListID` (`InventorySite_ListID`),
  ADD KEY `SalesTaxCode_ListID` (`SalesTaxCode_ListID`);

--
-- Indexes for table `qb_estimate_estimatelinegroup`
--
ALTER TABLE `qb_estimate_estimatelinegroup`
  ADD PRIMARY KEY (`qbsql_id`),
  ADD KEY `Estimate_TxnID` (`Estimate_TxnID`),
  ADD KEY `TxnLineID` (`TxnLineID`),
  ADD KEY `ItemGroup_ListID` (`ItemGroup_ListID`),
  ADD KEY `OverrideUOMSet_ListID` (`OverrideUOMSet_ListID`);

--
-- Indexes for table `qb_estimate_estimatelinegroup_estimateline`
--
ALTER TABLE `qb_estimate_estimatelinegroup_estimateline`
  ADD PRIMARY KEY (`qbsql_id`),
  ADD KEY `Estimate_TxnID` (`Estimate_TxnID`),
  ADD KEY `TxnLineID` (`TxnLineID`),
  ADD KEY `Item_ListID` (`Item_ListID`),
  ADD KEY `OverrideUOMSet_ListID` (`OverrideUOMSet_ListID`),
  ADD KEY `Class_ListID` (`Class_ListID`),
  ADD KEY `SalesTaxCode_ListID` (`SalesTaxCode_ListID`);

--
-- Indexes for table `qb_estimate_linkedtxn`
--
ALTER TABLE `qb_estimate_linkedtxn`
  ADD PRIMARY KEY (`qbsql_id`),
  ADD KEY `FromTxnID` (`FromTxnID`),
  ADD KEY `Estimate_TxnID` (`Estimate_TxnID`),
  ADD KEY `ToTxnID` (`ToTxnID`),
  ADD KEY `TxnType` (`TxnType`),
  ADD KEY `TxnDate` (`TxnDate`);

--
-- Indexes for table `qb_host`
--
ALTER TABLE `qb_host`
  ADD PRIMARY KEY (`qbsql_id`);

--
-- Indexes for table `qb_inventoryadjustment`
--
ALTER TABLE `qb_inventoryadjustment`
  ADD PRIMARY KEY (`qbsql_id`),
  ADD KEY `Account_ListID` (`Account_ListID`),
  ADD KEY `TxnDate` (`TxnDate`),
  ADD KEY `RefNumber` (`RefNumber`),
  ADD KEY `Customer_ListID` (`Customer_ListID`),
  ADD KEY `Class_ListID` (`Class_ListID`),
  ADD KEY `TxnID` (`TxnID`);

--
-- Indexes for table `qb_inventoryadjustment_inventoryadjustmentline`
--
ALTER TABLE `qb_inventoryadjustment_inventoryadjustmentline`
  ADD PRIMARY KEY (`qbsql_id`),
  ADD KEY `InventoryAdjustment_TxnID` (`InventoryAdjustment_TxnID`),
  ADD KEY `TxnLineID` (`TxnLineID`),
  ADD KEY `Item_ListID` (`Item_ListID`);

--
-- Indexes for table `qb_invoice`
--
ALTER TABLE `qb_invoice`
  ADD PRIMARY KEY (`qbsql_id`),
  ADD KEY `Customer_ListID` (`Customer_ListID`),
  ADD KEY `Class_ListID` (`Class_ListID`),
  ADD KEY `ARAccount_ListID` (`ARAccount_ListID`),
  ADD KEY `Template_ListID` (`Template_ListID`),
  ADD KEY `TxnDate` (`TxnDate`),
  ADD KEY `RefNumber` (`RefNumber`),
  ADD KEY `BillAddress_Country` (`BillAddress_Country`),
  ADD KEY `ShipAddress_Country` (`ShipAddress_Country`),
  ADD KEY `IsPending` (`IsPending`),
  ADD KEY `Terms_ListID` (`Terms_ListID`),
  ADD KEY `SalesRep_ListID` (`SalesRep_ListID`),
  ADD KEY `ShipMethod_ListID` (`ShipMethod_ListID`),
  ADD KEY `ItemSalesTax_ListID` (`ItemSalesTax_ListID`),
  ADD KEY `IsPaid` (`IsPaid`),
  ADD KEY `Currency_ListID` (`Currency_ListID`),
  ADD KEY `CustomerMsg_ListID` (`CustomerMsg_ListID`),
  ADD KEY `IsToBePrinted` (`IsToBePrinted`),
  ADD KEY `IsToBeEmailed` (`IsToBeEmailed`),
  ADD KEY `CustomerSalesTaxCode_ListID` (`CustomerSalesTaxCode_ListID`),
  ADD KEY `TxnID` (`TxnID`);

--
-- Indexes for table `qb_invoice_invoiceline`
--
ALTER TABLE `qb_invoice_invoiceline`
  ADD PRIMARY KEY (`qbsql_id`),
  ADD KEY `Invoice_TxnID` (`Invoice_TxnID`),
  ADD KEY `TxnLineID` (`TxnLineID`),
  ADD KEY `Item_ListID` (`Item_ListID`),
  ADD KEY `OverrideUOMSet_ListID` (`OverrideUOMSet_ListID`),
  ADD KEY `Class_ListID` (`Class_ListID`),
  ADD KEY `InventorySite_ListID` (`InventorySite_ListID`),
  ADD KEY `SalesTaxCode_ListID` (`SalesTaxCode_ListID`);

--
-- Indexes for table `qb_invoice_invoicelinegroup`
--
ALTER TABLE `qb_invoice_invoicelinegroup`
  ADD PRIMARY KEY (`qbsql_id`),
  ADD KEY `Invoice_TxnID` (`Invoice_TxnID`),
  ADD KEY `TxnLineID` (`TxnLineID`),
  ADD KEY `ItemGroup_ListID` (`ItemGroup_ListID`),
  ADD KEY `OverrideUOMSet_ListID` (`OverrideUOMSet_ListID`);

--
-- Indexes for table `qb_invoice_invoicelinegroup_invoiceline`
--
ALTER TABLE `qb_invoice_invoicelinegroup_invoiceline`
  ADD PRIMARY KEY (`qbsql_id`),
  ADD KEY `Invoice_TxnID` (`Invoice_TxnID`),
  ADD KEY `TxnLineID` (`TxnLineID`),
  ADD KEY `Item_ListID` (`Item_ListID`),
  ADD KEY `OverrideUOMSet_ListID` (`OverrideUOMSet_ListID`),
  ADD KEY `Class_ListID` (`Class_ListID`),
  ADD KEY `SalesTaxCode_ListID` (`SalesTaxCode_ListID`);

--
-- Indexes for table `qb_invoice_linkedtxn`
--
ALTER TABLE `qb_invoice_linkedtxn`
  ADD PRIMARY KEY (`qbsql_id`),
  ADD KEY `FromTxnID` (`FromTxnID`),
  ADD KEY `Invoice_TxnID` (`Invoice_TxnID`),
  ADD KEY `ToTxnID` (`ToTxnID`),
  ADD KEY `TxnType` (`TxnType`),
  ADD KEY `TxnDate` (`TxnDate`);

--
-- Indexes for table `qb_itemdiscount`
--
ALTER TABLE `qb_itemdiscount`
  ADD PRIMARY KEY (`qbsql_id`),
  ADD KEY `FullName` (`FullName`),
  ADD KEY `IsActive` (`IsActive`),
  ADD KEY `Parent_ListID` (`Parent_ListID`),
  ADD KEY `SalesTaxCode_ListID` (`SalesTaxCode_ListID`),
  ADD KEY `Account_ListID` (`Account_ListID`),
  ADD KEY `ListID` (`ListID`),
  ADD KEY `Name` (`Name`);

--
-- Indexes for table `qb_itemfixedasset`
--
ALTER TABLE `qb_itemfixedasset`
  ADD PRIMARY KEY (`qbsql_id`),
  ADD KEY `IsActive` (`IsActive`),
  ADD KEY `AssetAccount_ListID` (`AssetAccount_ListID`),
  ADD KEY `ListID` (`ListID`),
  ADD KEY `Name` (`Name`);

--
-- Indexes for table `qb_itemgroup`
--
ALTER TABLE `qb_itemgroup`
  ADD PRIMARY KEY (`qbsql_id`),
  ADD KEY `IsActive` (`IsActive`),
  ADD KEY `UnitOfMeasureSet_ListID` (`UnitOfMeasureSet_ListID`),
  ADD KEY `ListID` (`ListID`),
  ADD KEY `Name` (`Name`);

--
-- Indexes for table `qb_itemgroup_itemgroupline`
--
ALTER TABLE `qb_itemgroup_itemgroupline`
  ADD PRIMARY KEY (`qbsql_id`),
  ADD KEY `ItemGroup_ListID` (`ItemGroup_ListID`),
  ADD KEY `Item_ListID` (`Item_ListID`);

--
-- Indexes for table `qb_iteminventory`
--
ALTER TABLE `qb_iteminventory`
  ADD PRIMARY KEY (`qbsql_id`),
  ADD KEY `FullName` (`FullName`),
  ADD KEY `IsActive` (`IsActive`),
  ADD KEY `Parent_ListID` (`Parent_ListID`),
  ADD KEY `UnitOfMeasureSet_ListID` (`UnitOfMeasureSet_ListID`),
  ADD KEY `SalesTaxCode_ListID` (`SalesTaxCode_ListID`),
  ADD KEY `IncomeAccount_ListID` (`IncomeAccount_ListID`),
  ADD KEY `COGSAccount_ListID` (`COGSAccount_ListID`),
  ADD KEY `PrefVendor_ListID` (`PrefVendor_ListID`),
  ADD KEY `AssetAccount_ListID` (`AssetAccount_ListID`),
  ADD KEY `ListID` (`ListID`),
  ADD KEY `Name` (`Name`);

--
-- Indexes for table `qb_iteminventoryassembly`
--
ALTER TABLE `qb_iteminventoryassembly`
  ADD PRIMARY KEY (`qbsql_id`),
  ADD KEY `FullName` (`FullName`),
  ADD KEY `IsActive` (`IsActive`),
  ADD KEY `Parent_ListID` (`Parent_ListID`),
  ADD KEY `UnitOfMeasureSet_ListID` (`UnitOfMeasureSet_ListID`),
  ADD KEY `SalesTaxCode_ListID` (`SalesTaxCode_ListID`),
  ADD KEY `IncomeAccount_ListID` (`IncomeAccount_ListID`),
  ADD KEY `COGSAccount_ListID` (`COGSAccount_ListID`),
  ADD KEY `PrefVendor_ListID` (`PrefVendor_ListID`),
  ADD KEY `AssetAccount_ListID` (`AssetAccount_ListID`),
  ADD KEY `ListID` (`ListID`);

--
-- Indexes for table `qb_iteminventoryassembly_iteminventoryassemblyline`
--
ALTER TABLE `qb_iteminventoryassembly_iteminventoryassemblyline`
  ADD PRIMARY KEY (`qbsql_id`),
  ADD KEY `ItemInventoryAssembly_ListID` (`ItemInventoryAssembly_ListID`),
  ADD KEY `ItemInventory_ListID` (`ItemInventory_ListID`);

--
-- Indexes for table `qb_itemnoninventory`
--
ALTER TABLE `qb_itemnoninventory`
  ADD PRIMARY KEY (`qbsql_id`),
  ADD KEY `FullName` (`FullName`),
  ADD KEY `IsActive` (`IsActive`),
  ADD KEY `Parent_ListID` (`Parent_ListID`),
  ADD KEY `UnitOfMeasureSet_ListID` (`UnitOfMeasureSet_ListID`),
  ADD KEY `SalesTaxCode_ListID` (`SalesTaxCode_ListID`),
  ADD KEY `SalesOrPurchase_Account_ListID` (`SalesOrPurchase_Account_ListID`),
  ADD KEY `SalesAndPurchase_IncomeAccount_ListID` (`SalesAndPurchase_IncomeAccount_ListID`),
  ADD KEY `SalesAndPurchase_ExpenseAccount_ListID` (`SalesAndPurchase_ExpenseAccount_ListID`),
  ADD KEY `SalesAndPurchase_PrefVendor_ListID` (`SalesAndPurchase_PrefVendor_ListID`),
  ADD KEY `ListID` (`ListID`),
  ADD KEY `Name` (`Name`);

--
-- Indexes for table `qb_itemothercharge`
--
ALTER TABLE `qb_itemothercharge`
  ADD PRIMARY KEY (`qbsql_id`),
  ADD KEY `FullName` (`FullName`),
  ADD KEY `IsActive` (`IsActive`),
  ADD KEY `Parent_ListID` (`Parent_ListID`),
  ADD KEY `SalesTaxCode_ListID` (`SalesTaxCode_ListID`),
  ADD KEY `SalesOrPurchase_Account_ListID` (`SalesOrPurchase_Account_ListID`),
  ADD KEY `SalesAndPurchase_IncomeAccount_ListID` (`SalesAndPurchase_IncomeAccount_ListID`),
  ADD KEY `SalesAndPurchase_ExpenseAccount_ListID` (`SalesAndPurchase_ExpenseAccount_ListID`),
  ADD KEY `SalesAndPurchase_PrefVendor_ListID` (`SalesAndPurchase_PrefVendor_ListID`),
  ADD KEY `ListID` (`ListID`),
  ADD KEY `Name` (`Name`);

--
-- Indexes for table `qb_itempayment`
--
ALTER TABLE `qb_itempayment`
  ADD PRIMARY KEY (`qbsql_id`),
  ADD KEY `IsActive` (`IsActive`),
  ADD KEY `DepositToAccount_ListID` (`DepositToAccount_ListID`),
  ADD KEY `PaymentMethod_ListID` (`PaymentMethod_ListID`),
  ADD KEY `ListID` (`ListID`),
  ADD KEY `Name` (`Name`);

--
-- Indexes for table `qb_itemreceipt`
--
ALTER TABLE `qb_itemreceipt`
  ADD PRIMARY KEY (`qbsql_id`),
  ADD KEY `Vendor_ListID` (`Vendor_ListID`),
  ADD KEY `APAccount_ListID` (`APAccount_ListID`),
  ADD KEY `TxnDate` (`TxnDate`),
  ADD KEY `RefNumber` (`RefNumber`),
  ADD KEY `TxnID` (`TxnID`);

--
-- Indexes for table `qb_itemreceipt_expenseline`
--
ALTER TABLE `qb_itemreceipt_expenseline`
  ADD PRIMARY KEY (`qbsql_id`),
  ADD KEY `ItemReceipt_TxnID` (`ItemReceipt_TxnID`),
  ADD KEY `TxnLineID` (`TxnLineID`),
  ADD KEY `Account_ListID` (`Account_ListID`),
  ADD KEY `Customer_ListID` (`Customer_ListID`),
  ADD KEY `Class_ListID` (`Class_ListID`);

--
-- Indexes for table `qb_itemreceipt_itemgroupline`
--
ALTER TABLE `qb_itemreceipt_itemgroupline`
  ADD PRIMARY KEY (`qbsql_id`),
  ADD KEY `ItemReceipt_TxnID` (`ItemReceipt_TxnID`),
  ADD KEY `TxnLineID` (`TxnLineID`),
  ADD KEY `ItemGroup_ListID` (`ItemGroup_ListID`),
  ADD KEY `OverrideUOMSet_ListID` (`OverrideUOMSet_ListID`);

--
-- Indexes for table `qb_itemreceipt_itemgroupline_itemline`
--
ALTER TABLE `qb_itemreceipt_itemgroupline_itemline`
  ADD PRIMARY KEY (`qbsql_id`),
  ADD KEY `ItemReceipt_TxnID` (`ItemReceipt_TxnID`),
  ADD KEY `TxnLineID` (`TxnLineID`),
  ADD KEY `Item_ListID` (`Item_ListID`),
  ADD KEY `OverrideUOMSet_ListID` (`OverrideUOMSet_ListID`),
  ADD KEY `Customer_ListID` (`Customer_ListID`),
  ADD KEY `Class_ListID` (`Class_ListID`);

--
-- Indexes for table `qb_itemreceipt_itemline`
--
ALTER TABLE `qb_itemreceipt_itemline`
  ADD PRIMARY KEY (`qbsql_id`),
  ADD KEY `ItemReceipt_TxnID` (`ItemReceipt_TxnID`),
  ADD KEY `TxnLineID` (`TxnLineID`),
  ADD KEY `Item_ListID` (`Item_ListID`),
  ADD KEY `OverrideUOMSet_ListID` (`OverrideUOMSet_ListID`),
  ADD KEY `Customer_ListID` (`Customer_ListID`),
  ADD KEY `Class_ListID` (`Class_ListID`);

--
-- Indexes for table `qb_itemreceipt_linkedtxn`
--
ALTER TABLE `qb_itemreceipt_linkedtxn`
  ADD PRIMARY KEY (`qbsql_id`),
  ADD KEY `FromTxnID` (`FromTxnID`),
  ADD KEY `ItemReceipt_TxnID` (`ItemReceipt_TxnID`),
  ADD KEY `ToTxnID` (`ToTxnID`),
  ADD KEY `TxnType` (`TxnType`),
  ADD KEY `TxnDate` (`TxnDate`);

--
-- Indexes for table `qb_itemsalestax`
--
ALTER TABLE `qb_itemsalestax`
  ADD PRIMARY KEY (`qbsql_id`),
  ADD KEY `IsActive` (`IsActive`),
  ADD KEY `TaxVendor_ListID` (`TaxVendor_ListID`),
  ADD KEY `ListID` (`ListID`),
  ADD KEY `Name` (`Name`);

--
-- Indexes for table `qb_itemsalestaxgroup`
--
ALTER TABLE `qb_itemsalestaxgroup`
  ADD PRIMARY KEY (`qbsql_id`),
  ADD KEY `IsActive` (`IsActive`),
  ADD KEY `ListID` (`ListID`),
  ADD KEY `Name` (`Name`);

--
-- Indexes for table `qb_itemsalestaxgroup_itemsalestax`
--
ALTER TABLE `qb_itemsalestaxgroup_itemsalestax`
  ADD PRIMARY KEY (`qbsql_id`),
  ADD KEY `ItemSalesTaxGroup_ListID` (`ItemSalesTaxGroup_ListID`),
  ADD KEY `FullName` (`FullName`),
  ADD KEY `ListID` (`ListID`);

--
-- Indexes for table `qb_itemservice`
--
ALTER TABLE `qb_itemservice`
  ADD PRIMARY KEY (`qbsql_id`),
  ADD KEY `FullName` (`FullName`),
  ADD KEY `IsActive` (`IsActive`),
  ADD KEY `Parent_ListID` (`Parent_ListID`),
  ADD KEY `UnitOfMeasureSet_ListID` (`UnitOfMeasureSet_ListID`),
  ADD KEY `SalesTaxCode_ListID` (`SalesTaxCode_ListID`),
  ADD KEY `SalesOrPurchase_Account_ListID` (`SalesOrPurchase_Account_ListID`),
  ADD KEY `SalesAndPurchase_IncomeAccount_ListID` (`SalesAndPurchase_IncomeAccount_ListID`),
  ADD KEY `SalesAndPurchase_ExpenseAccount_ListID` (`SalesAndPurchase_ExpenseAccount_ListID`),
  ADD KEY `SalesAndPurchase_PrefVendor_ListID` (`SalesAndPurchase_PrefVendor_ListID`),
  ADD KEY `ListID` (`ListID`),
  ADD KEY `Name` (`Name`);

--
-- Indexes for table `qb_itemsubtotal`
--
ALTER TABLE `qb_itemsubtotal`
  ADD PRIMARY KEY (`qbsql_id`),
  ADD KEY `IsActive` (`IsActive`),
  ADD KEY `ListID` (`ListID`),
  ADD KEY `Name` (`Name`);

--
-- Indexes for table `qb_jobtype`
--
ALTER TABLE `qb_jobtype`
  ADD PRIMARY KEY (`qbsql_id`),
  ADD KEY `FullName` (`FullName`),
  ADD KEY `IsActive` (`IsActive`),
  ADD KEY `Parent_ListID` (`Parent_ListID`),
  ADD KEY `ListID` (`ListID`);

--
-- Indexes for table `qb_journalentry`
--
ALTER TABLE `qb_journalentry`
  ADD PRIMARY KEY (`qbsql_id`),
  ADD KEY `TxnDate` (`TxnDate`),
  ADD KEY `RefNumber` (`RefNumber`),
  ADD KEY `TxnID` (`TxnID`);

--
-- Indexes for table `qb_journalentry_journalcreditline`
--
ALTER TABLE `qb_journalentry_journalcreditline`
  ADD PRIMARY KEY (`qbsql_id`),
  ADD KEY `JournalEntry_TxnID` (`JournalEntry_TxnID`),
  ADD KEY `TxnLineID` (`TxnLineID`),
  ADD KEY `Account_ListID` (`Account_ListID`),
  ADD KEY `Entity_ListID` (`Entity_ListID`),
  ADD KEY `Class_ListID` (`Class_ListID`);

--
-- Indexes for table `qb_journalentry_journaldebitline`
--
ALTER TABLE `qb_journalentry_journaldebitline`
  ADD PRIMARY KEY (`qbsql_id`),
  ADD KEY `JournalEntry_TxnID` (`JournalEntry_TxnID`),
  ADD KEY `TxnLineID` (`TxnLineID`),
  ADD KEY `Account_ListID` (`Account_ListID`),
  ADD KEY `Entity_ListID` (`Entity_ListID`),
  ADD KEY `Class_ListID` (`Class_ListID`);

--
-- Indexes for table `qb_paymentmethod`
--
ALTER TABLE `qb_paymentmethod`
  ADD PRIMARY KEY (`qbsql_id`),
  ADD KEY `IsActive` (`IsActive`),
  ADD KEY `ListID` (`ListID`),
  ADD KEY `Name` (`Name`);

--
-- Indexes for table `qb_payrollitemwage`
--
ALTER TABLE `qb_payrollitemwage`
  ADD PRIMARY KEY (`qbsql_id`),
  ADD KEY `IsActive` (`IsActive`),
  ADD KEY `ExpenseAccount_ListID` (`ExpenseAccount_ListID`),
  ADD KEY `ListID` (`ListID`);

--
-- Indexes for table `qb_preferences`
--
ALTER TABLE `qb_preferences`
  ADD PRIMARY KEY (`qbsql_id`),
  ADD KEY `FinanceChargePrefs_FinanceChargeAccount_ListID` (`FinanceChargePrefs_FinanceChargeAccount_ListID`),
  ADD KEY `MultiCurrencyPrefs_HomeCurrency_ListID` (`MultiCurrencyPrefs_HomeCurrency_ListID`),
  ADD KEY `PurchasesAndVendorsPrefs_DefaultDiscountAccount_ListID` (`PurchasesAndVendorsPrefs_DefaultDiscountAccount_ListID`),
  ADD KEY `SalesAndCustomersPrefs_DefaultShipMethod_ListID` (`SalesAndCustomersPrefs_DefaultShipMethod_ListID`),
  ADD KEY `SalesTaxPrefs_DefaultItemSalesTax_ListID` (`SalesTaxPrefs_DefaultItemSalesTax_ListID`),
  ADD KEY `SalesTaxPrefs_DefaultTaxableSalesTaxCode_ListID` (`SalesTaxPrefs_DefaultTaxableSalesTaxCode_ListID`),
  ADD KEY `SalesTaxPrefs_DefaultNonTaxableSalesTaxCode_ListID` (`SalesTaxPrefs_DefaultNonTaxableSalesTaxCode_ListID`);

--
-- Indexes for table `qb_pricelevel`
--
ALTER TABLE `qb_pricelevel`
  ADD PRIMARY KEY (`qbsql_id`),
  ADD KEY `IsActive` (`IsActive`),
  ADD KEY `ListID` (`ListID`);

--
-- Indexes for table `qb_pricelevel_pricelevelperitem`
--
ALTER TABLE `qb_pricelevel_pricelevelperitem`
  ADD PRIMARY KEY (`qbsql_id`),
  ADD KEY `PriceLevel_ListID` (`PriceLevel_ListID`),
  ADD KEY `Item_ListID` (`Item_ListID`);

--
-- Indexes for table `qb_purchaseorder`
--
ALTER TABLE `qb_purchaseorder`
  ADD PRIMARY KEY (`qbsql_id`),
  ADD KEY `Vendor_ListID` (`Vendor_ListID`),
  ADD KEY `Class_ListID` (`Class_ListID`),
  ADD KEY `ShipToEntity_ListID` (`ShipToEntity_ListID`),
  ADD KEY `Template_ListID` (`Template_ListID`),
  ADD KEY `TxnDate` (`TxnDate`),
  ADD KEY `RefNumber` (`RefNumber`),
  ADD KEY `ShipAddress_Country` (`ShipAddress_Country`),
  ADD KEY `Terms_ListID` (`Terms_ListID`),
  ADD KEY `ShipMethod_ListID` (`ShipMethod_ListID`),
  ADD KEY `Currency_ListID` (`Currency_ListID`),
  ADD KEY `IsManuallyClosed` (`IsManuallyClosed`),
  ADD KEY `IsFullyReceived` (`IsFullyReceived`),
  ADD KEY `IsToBePrinted` (`IsToBePrinted`),
  ADD KEY `IsToBeEmailed` (`IsToBeEmailed`),
  ADD KEY `TxnID` (`TxnID`);

--
-- Indexes for table `qb_purchaseorder_linkedtxn`
--
ALTER TABLE `qb_purchaseorder_linkedtxn`
  ADD PRIMARY KEY (`qbsql_id`),
  ADD KEY `FromTxnID` (`FromTxnID`),
  ADD KEY `PurchaseOrder_TxnID` (`PurchaseOrder_TxnID`),
  ADD KEY `ToTxnID` (`ToTxnID`),
  ADD KEY `TxnType` (`TxnType`),
  ADD KEY `TxnDate` (`TxnDate`);

--
-- Indexes for table `qb_purchaseorder_purchaseorderline`
--
ALTER TABLE `qb_purchaseorder_purchaseorderline`
  ADD PRIMARY KEY (`qbsql_id`),
  ADD KEY `PurchaseOrder_TxnID` (`PurchaseOrder_TxnID`),
  ADD KEY `TxnLineID` (`TxnLineID`),
  ADD KEY `Item_ListID` (`Item_ListID`),
  ADD KEY `OverrideUOMSet_ListID` (`OverrideUOMSet_ListID`),
  ADD KEY `Class_ListID` (`Class_ListID`),
  ADD KEY `Customer_ListID` (`Customer_ListID`),
  ADD KEY `IsManuallyClosed` (`IsManuallyClosed`);

--
-- Indexes for table `qb_purchaseorder_purchaseorderlinegroup`
--
ALTER TABLE `qb_purchaseorder_purchaseorderlinegroup`
  ADD PRIMARY KEY (`qbsql_id`),
  ADD KEY `PurchaseOrder_TxnID` (`PurchaseOrder_TxnID`),
  ADD KEY `TxnLineID` (`TxnLineID`),
  ADD KEY `ItemGroup_ListID` (`ItemGroup_ListID`),
  ADD KEY `OverrideUOMSet_ListID` (`OverrideUOMSet_ListID`);

--
-- Indexes for table `qb_purchaseorder_purchaseorderlinegroup_purchaseorderline`
--
ALTER TABLE `qb_purchaseorder_purchaseorderlinegroup_purchaseorderline`
  ADD PRIMARY KEY (`qbsql_id`),
  ADD KEY `PurchaseOrder_TxnID` (`PurchaseOrder_TxnID`),
  ADD KEY `TxnLineID` (`TxnLineID`),
  ADD KEY `Item_ListID` (`Item_ListID`),
  ADD KEY `OverrideUOMSet_ListID` (`OverrideUOMSet_ListID`),
  ADD KEY `Class_ListID` (`Class_ListID`),
  ADD KEY `Customer_ListID` (`Customer_ListID`),
  ADD KEY `IsManuallyClosed` (`IsManuallyClosed`);

--
-- Indexes for table `qb_receivepayment`
--
ALTER TABLE `qb_receivepayment`
  ADD PRIMARY KEY (`qbsql_id`),
  ADD KEY `Customer_ListID` (`Customer_ListID`),
  ADD KEY `ARAccount_ListID` (`ARAccount_ListID`),
  ADD KEY `TxnDate` (`TxnDate`),
  ADD KEY `RefNumber` (`RefNumber`),
  ADD KEY `PaymentMethod_ListID` (`PaymentMethod_ListID`),
  ADD KEY `DepositToAccount_ListID` (`DepositToAccount_ListID`),
  ADD KEY `TxnID` (`TxnID`);

--
-- Indexes for table `qb_receivepayment_appliedtotxn`
--
ALTER TABLE `qb_receivepayment_appliedtotxn`
  ADD PRIMARY KEY (`qbsql_id`),
  ADD KEY `FromTxnID` (`FromTxnID`),
  ADD KEY `ReceivePayment_TxnID` (`ReceivePayment_TxnID`),
  ADD KEY `ToTxnID` (`ToTxnID`),
  ADD KEY `TxnType` (`TxnType`),
  ADD KEY `TxnDate` (`TxnDate`),
  ADD KEY `DiscountAccount_ListID` (`DiscountAccount_ListID`);

--
-- Indexes for table `qb_salesorder`
--
ALTER TABLE `qb_salesorder`
  ADD PRIMARY KEY (`qbsql_id`),
  ADD KEY `Customer_ListID` (`Customer_ListID`),
  ADD KEY `Class_ListID` (`Class_ListID`),
  ADD KEY `Template_ListID` (`Template_ListID`),
  ADD KEY `TxnDate` (`TxnDate`),
  ADD KEY `RefNumber` (`RefNumber`),
  ADD KEY `BillAddress_Country` (`BillAddress_Country`),
  ADD KEY `ShipAddress_Country` (`ShipAddress_Country`),
  ADD KEY `Terms_ListID` (`Terms_ListID`),
  ADD KEY `SalesRep_ListID` (`SalesRep_ListID`),
  ADD KEY `ShipMethod_ListID` (`ShipMethod_ListID`),
  ADD KEY `ItemSalesTax_ListID` (`ItemSalesTax_ListID`),
  ADD KEY `IsManuallyClosed` (`IsManuallyClosed`),
  ADD KEY `IsFullyInvoiced` (`IsFullyInvoiced`),
  ADD KEY `CustomerMsg_ListID` (`CustomerMsg_ListID`),
  ADD KEY `IsToBePrinted` (`IsToBePrinted`),
  ADD KEY `IsToBeEmailed` (`IsToBeEmailed`),
  ADD KEY `CustomerSalesTaxCode_ListID` (`CustomerSalesTaxCode_ListID`),
  ADD KEY `TxnID` (`TxnID`);

--
-- Indexes for table `qb_salesorder_linkedtxn`
--
ALTER TABLE `qb_salesorder_linkedtxn`
  ADD PRIMARY KEY (`qbsql_id`),
  ADD KEY `FromTxnID` (`FromTxnID`),
  ADD KEY `SalesOrder_TxnID` (`SalesOrder_TxnID`),
  ADD KEY `ToTxnID` (`ToTxnID`),
  ADD KEY `TxnType` (`TxnType`),
  ADD KEY `TxnDate` (`TxnDate`);

--
-- Indexes for table `qb_salesorder_salesorderline`
--
ALTER TABLE `qb_salesorder_salesorderline`
  ADD PRIMARY KEY (`qbsql_id`),
  ADD KEY `SalesOrder_TxnID` (`SalesOrder_TxnID`),
  ADD KEY `TxnLineID` (`TxnLineID`),
  ADD KEY `Item_ListID` (`Item_ListID`),
  ADD KEY `OverrideUOMSet_ListID` (`OverrideUOMSet_ListID`),
  ADD KEY `Class_ListID` (`Class_ListID`),
  ADD KEY `InventorySite_ListID` (`InventorySite_ListID`),
  ADD KEY `SalesTaxCode_ListID` (`SalesTaxCode_ListID`),
  ADD KEY `IsManuallyClosed` (`IsManuallyClosed`);

--
-- Indexes for table `qb_salesorder_salesorderlinegroup`
--
ALTER TABLE `qb_salesorder_salesorderlinegroup`
  ADD PRIMARY KEY (`qbsql_id`),
  ADD KEY `SalesOrder_TxnID` (`SalesOrder_TxnID`),
  ADD KEY `TxnLineID` (`TxnLineID`),
  ADD KEY `ItemGroup_ListID` (`ItemGroup_ListID`),
  ADD KEY `OverrideUOMSet_ListID` (`OverrideUOMSet_ListID`);

--
-- Indexes for table `qb_salesorder_salesorderlinegroup_salesorderline`
--
ALTER TABLE `qb_salesorder_salesorderlinegroup_salesorderline`
  ADD PRIMARY KEY (`qbsql_id`),
  ADD KEY `SalesOrder_TxnID` (`SalesOrder_TxnID`),
  ADD KEY `TxnLineID` (`TxnLineID`),
  ADD KEY `Item_ListID` (`Item_ListID`),
  ADD KEY `OverrideUOMSet_ListID` (`OverrideUOMSet_ListID`),
  ADD KEY `Class_ListID` (`Class_ListID`),
  ADD KEY `SalesTaxCode_ListID` (`SalesTaxCode_ListID`),
  ADD KEY `IsManuallyClosed` (`IsManuallyClosed`);

--
-- Indexes for table `qb_salesreceipt`
--
ALTER TABLE `qb_salesreceipt`
  ADD PRIMARY KEY (`qbsql_id`),
  ADD KEY `Customer_ListID` (`Customer_ListID`),
  ADD KEY `Class_ListID` (`Class_ListID`),
  ADD KEY `Template_ListID` (`Template_ListID`),
  ADD KEY `TxnDate` (`TxnDate`),
  ADD KEY `RefNumber` (`RefNumber`),
  ADD KEY `BillAddress_Country` (`BillAddress_Country`),
  ADD KEY `ShipAddress_Country` (`ShipAddress_Country`),
  ADD KEY `IsPending` (`IsPending`),
  ADD KEY `PaymentMethod_ListID` (`PaymentMethod_ListID`),
  ADD KEY `SalesRep_ListID` (`SalesRep_ListID`),
  ADD KEY `ShipMethod_ListID` (`ShipMethod_ListID`),
  ADD KEY `ItemSalesTax_ListID` (`ItemSalesTax_ListID`),
  ADD KEY `Currency_ListID` (`Currency_ListID`),
  ADD KEY `CustomerMsg_ListID` (`CustomerMsg_ListID`),
  ADD KEY `IsToBePrinted` (`IsToBePrinted`),
  ADD KEY `IsToBeEmailed` (`IsToBeEmailed`),
  ADD KEY `CustomerSalesTaxCode_ListID` (`CustomerSalesTaxCode_ListID`),
  ADD KEY `DepositToAccount_ListID` (`DepositToAccount_ListID`),
  ADD KEY `TxnID` (`TxnID`);

--
-- Indexes for table `qb_salesreceipt_salesreceiptline`
--
ALTER TABLE `qb_salesreceipt_salesreceiptline`
  ADD PRIMARY KEY (`qbsql_id`),
  ADD KEY `SalesReceipt_TxnID` (`SalesReceipt_TxnID`),
  ADD KEY `TxnLineID` (`TxnLineID`),
  ADD KEY `Item_ListID` (`Item_ListID`),
  ADD KEY `OverrideUOMSet_ListID` (`OverrideUOMSet_ListID`),
  ADD KEY `Class_ListID` (`Class_ListID`),
  ADD KEY `InventorySite_ListID` (`InventorySite_ListID`),
  ADD KEY `SalesTaxCode_ListID` (`SalesTaxCode_ListID`);

--
-- Indexes for table `qb_salesreceipt_salesreceiptlinegroup`
--
ALTER TABLE `qb_salesreceipt_salesreceiptlinegroup`
  ADD PRIMARY KEY (`qbsql_id`),
  ADD KEY `SalesReceipt_TxnID` (`SalesReceipt_TxnID`),
  ADD KEY `TxnLineID` (`TxnLineID`),
  ADD KEY `ItemGroup_ListID` (`ItemGroup_ListID`),
  ADD KEY `OverrideUOMSet_ListID` (`OverrideUOMSet_ListID`);

--
-- Indexes for table `qb_salesreceipt_salesreceiptlinegroup_salesreceiptline`
--
ALTER TABLE `qb_salesreceipt_salesreceiptlinegroup_salesreceiptline`
  ADD PRIMARY KEY (`qbsql_id`),
  ADD KEY `SalesReceipt_TxnID` (`SalesReceipt_TxnID`),
  ADD KEY `TxnLineID` (`TxnLineID`),
  ADD KEY `Item_ListID` (`Item_ListID`),
  ADD KEY `OverrideUOMSet_ListID` (`OverrideUOMSet_ListID`),
  ADD KEY `Class_ListID` (`Class_ListID`),
  ADD KEY `SalesTaxCode_ListID` (`SalesTaxCode_ListID`);

--
-- Indexes for table `qb_salesrep`
--
ALTER TABLE `qb_salesrep`
  ADD PRIMARY KEY (`qbsql_id`),
  ADD KEY `IsActive` (`IsActive`),
  ADD KEY `SalesRepEntity_ListID` (`SalesRepEntity_ListID`),
  ADD KEY `ListID` (`ListID`);

--
-- Indexes for table `qb_salestaxcode`
--
ALTER TABLE `qb_salestaxcode`
  ADD PRIMARY KEY (`qbsql_id`),
  ADD KEY `IsActive` (`IsActive`),
  ADD KEY `ListID` (`ListID`),
  ADD KEY `Name` (`Name`);

--
-- Indexes for table `qb_shipmethod`
--
ALTER TABLE `qb_shipmethod`
  ADD PRIMARY KEY (`qbsql_id`),
  ADD KEY `IsActive` (`IsActive`),
  ADD KEY `ListID` (`ListID`),
  ADD KEY `Name` (`Name`);

--
-- Indexes for table `qb_standardterms`
--
ALTER TABLE `qb_standardterms`
  ADD PRIMARY KEY (`qbsql_id`),
  ADD KEY `IsActive` (`IsActive`),
  ADD KEY `ListID` (`ListID`),
  ADD KEY `Name` (`Name`);

--
-- Indexes for table `qb_timetracking`
--
ALTER TABLE `qb_timetracking`
  ADD PRIMARY KEY (`qbsql_id`),
  ADD KEY `TxnDate` (`TxnDate`),
  ADD KEY `Entity_ListID` (`Entity_ListID`),
  ADD KEY `Customer_ListID` (`Customer_ListID`),
  ADD KEY `ItemService_ListID` (`ItemService_ListID`),
  ADD KEY `Class_ListID` (`Class_ListID`),
  ADD KEY `PayrollItemWage_ListID` (`PayrollItemWage_ListID`),
  ADD KEY `TxnID` (`TxnID`);

--
-- Indexes for table `qb_unitofmeasureset`
--
ALTER TABLE `qb_unitofmeasureset`
  ADD PRIMARY KEY (`qbsql_id`),
  ADD KEY `IsActive` (`IsActive`),
  ADD KEY `ListID` (`ListID`),
  ADD KEY `Name` (`Name`);

--
-- Indexes for table `qb_unitofmeasureset_defaultunit`
--
ALTER TABLE `qb_unitofmeasureset_defaultunit`
  ADD PRIMARY KEY (`qbsql_id`),
  ADD KEY `UnitOfMeasureSet_ListID` (`UnitOfMeasureSet_ListID`);

--
-- Indexes for table `qb_unitofmeasureset_relatedunit`
--
ALTER TABLE `qb_unitofmeasureset_relatedunit`
  ADD PRIMARY KEY (`qbsql_id`),
  ADD KEY `UnitOfMeasureSet_ListID` (`UnitOfMeasureSet_ListID`);

--
-- Indexes for table `qb_vehicle`
--
ALTER TABLE `qb_vehicle`
  ADD PRIMARY KEY (`qbsql_id`),
  ADD KEY `IsActive` (`IsActive`),
  ADD KEY `ListID` (`ListID`),
  ADD KEY `Name` (`Name`);

--
-- Indexes for table `qb_vehiclemileage`
--
ALTER TABLE `qb_vehiclemileage`
  ADD PRIMARY KEY (`qbsql_id`),
  ADD KEY `Vehicle_ListID` (`Vehicle_ListID`),
  ADD KEY `Customer_ListID` (`Customer_ListID`),
  ADD KEY `Item_ListID` (`Item_ListID`),
  ADD KEY `Class_ListID` (`Class_ListID`),
  ADD KEY `TxnID` (`TxnID`);

--
-- Indexes for table `qb_vendor`
--
ALTER TABLE `qb_vendor`
  ADD PRIMARY KEY (`qbsql_id`),
  ADD KEY `IsActive` (`IsActive`),
  ADD KEY `CompanyName` (`CompanyName`),
  ADD KEY `LastName` (`LastName`),
  ADD KEY `VendorType_ListID` (`VendorType_ListID`),
  ADD KEY `Terms_ListID` (`Terms_ListID`),
  ADD KEY `BillingRate_ListID` (`BillingRate_ListID`),
  ADD KEY `ListID` (`ListID`),
  ADD KEY `Name` (`Name`);

--
-- Indexes for table `qb_vendorcredit`
--
ALTER TABLE `qb_vendorcredit`
  ADD PRIMARY KEY (`qbsql_id`),
  ADD KEY `Vendor_ListID` (`Vendor_ListID`),
  ADD KEY `APAccount_ListID` (`APAccount_ListID`),
  ADD KEY `TxnDate` (`TxnDate`),
  ADD KEY `TxnID` (`TxnID`);

--
-- Indexes for table `qb_vendorcredit_expenseline`
--
ALTER TABLE `qb_vendorcredit_expenseline`
  ADD PRIMARY KEY (`qbsql_id`),
  ADD KEY `VendorCredit_TxnID` (`VendorCredit_TxnID`),
  ADD KEY `TxnLineID` (`TxnLineID`),
  ADD KEY `Account_ListID` (`Account_ListID`),
  ADD KEY `Customer_ListID` (`Customer_ListID`),
  ADD KEY `Class_ListID` (`Class_ListID`);

--
-- Indexes for table `qb_vendorcredit_itemgroupline`
--
ALTER TABLE `qb_vendorcredit_itemgroupline`
  ADD PRIMARY KEY (`qbsql_id`),
  ADD KEY `VendorCredit_TxnID` (`VendorCredit_TxnID`),
  ADD KEY `TxnLineID` (`TxnLineID`),
  ADD KEY `ItemGroup_ListID` (`ItemGroup_ListID`),
  ADD KEY `OverrideUOMSet_ListID` (`OverrideUOMSet_ListID`);

--
-- Indexes for table `qb_vendorcredit_itemgroupline_itemline`
--
ALTER TABLE `qb_vendorcredit_itemgroupline_itemline`
  ADD PRIMARY KEY (`qbsql_id`),
  ADD KEY `VendorCredit_TxnID` (`VendorCredit_TxnID`),
  ADD KEY `TxnLineID` (`TxnLineID`),
  ADD KEY `Item_ListID` (`Item_ListID`),
  ADD KEY `OverrideUOMSet_ListID` (`OverrideUOMSet_ListID`),
  ADD KEY `Customer_ListID` (`Customer_ListID`),
  ADD KEY `Class_ListID` (`Class_ListID`);

--
-- Indexes for table `qb_vendorcredit_itemline`
--
ALTER TABLE `qb_vendorcredit_itemline`
  ADD PRIMARY KEY (`qbsql_id`),
  ADD KEY `VendorCredit_TxnID` (`VendorCredit_TxnID`),
  ADD KEY `TxnLineID` (`TxnLineID`),
  ADD KEY `Item_ListID` (`Item_ListID`),
  ADD KEY `OverrideUOMSet_ListID` (`OverrideUOMSet_ListID`),
  ADD KEY `Customer_ListID` (`Customer_ListID`),
  ADD KEY `Class_ListID` (`Class_ListID`);

--
-- Indexes for table `qb_vendorcredit_linkedtxn`
--
ALTER TABLE `qb_vendorcredit_linkedtxn`
  ADD PRIMARY KEY (`qbsql_id`),
  ADD KEY `FromTxnID` (`FromTxnID`),
  ADD KEY `VendorCredit_TxnID` (`VendorCredit_TxnID`),
  ADD KEY `ToTxnID` (`ToTxnID`),
  ADD KEY `TxnType` (`TxnType`),
  ADD KEY `TxnDate` (`TxnDate`);

--
-- Indexes for table `qb_vendortype`
--
ALTER TABLE `qb_vendortype`
  ADD PRIMARY KEY (`qbsql_id`),
  ADD KEY `FullName` (`FullName`),
  ADD KEY `IsActive` (`IsActive`),
  ADD KEY `Parent_ListID` (`Parent_ListID`),
  ADD KEY `ListID` (`ListID`);

--
-- Indexes for table `qb_workerscompcode`
--
ALTER TABLE `qb_workerscompcode`
  ADD PRIMARY KEY (`qbsql_id`),
  ADD KEY `IsActive` (`IsActive`),
  ADD KEY `ListID` (`ListID`);

--
-- Indexes for table `qb_workerscompcode_ratehistory`
--
ALTER TABLE `qb_workerscompcode_ratehistory`
  ADD PRIMARY KEY (`qbsql_id`),
  ADD KEY `WorkersCompCode_ListID` (`WorkersCompCode_ListID`);

--
-- Indexes for table `quickbooks_config`
--
ALTER TABLE `quickbooks_config`
  ADD PRIMARY KEY (`quickbooks_config_id`);

--
-- Indexes for table `quickbooks_log`
--
ALTER TABLE `quickbooks_log`
  ADD PRIMARY KEY (`quickbooks_log_id`),
  ADD KEY `quickbooks_ticket_id` (`quickbooks_ticket_id`),
  ADD KEY `batch` (`batch`);

--
-- Indexes for table `quickbooks_oauth`
--
ALTER TABLE `quickbooks_oauth`
  ADD PRIMARY KEY (`quickbooks_oauth_id`);

--
-- Indexes for table `quickbooks_queue`
--
ALTER TABLE `quickbooks_queue`
  ADD PRIMARY KEY (`quickbooks_queue_id`),
  ADD KEY `quickbooks_ticket_id` (`quickbooks_ticket_id`),
  ADD KEY `priority` (`priority`),
  ADD KEY `qb_username` (`qb_username`,`qb_action`,`ident`,`qb_status`),
  ADD KEY `qb_status` (`qb_status`);

--
-- Indexes for table `quickbooks_recur`
--
ALTER TABLE `quickbooks_recur`
  ADD PRIMARY KEY (`quickbooks_recur_id`),
  ADD KEY `qb_username` (`qb_username`,`qb_action`,`ident`),
  ADD KEY `priority` (`priority`);

--
-- Indexes for table `quickbooks_ticket`
--
ALTER TABLE `quickbooks_ticket`
  ADD PRIMARY KEY (`quickbooks_ticket_id`),
  ADD KEY `ticket` (`ticket`);

--
-- Indexes for table `quickbooks_user`
--
ALTER TABLE `quickbooks_user`
  ADD PRIMARY KEY (`qb_username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `qb_account`
--
ALTER TABLE `qb_account`
  MODIFY `qbsql_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `qb_account_taxlineinfo`
--
ALTER TABLE `qb_account_taxlineinfo`
  MODIFY `qbsql_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `qb_bill`
--
ALTER TABLE `qb_bill`
  MODIFY `qbsql_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `qb_billingrate`
--
ALTER TABLE `qb_billingrate`
  MODIFY `qbsql_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `qb_billingrate_billingrateperitem`
--
ALTER TABLE `qb_billingrate_billingrateperitem`
  MODIFY `qbsql_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `qb_billpaymentcheck`
--
ALTER TABLE `qb_billpaymentcheck`
  MODIFY `qbsql_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `qb_billpaymentcheck_appliedtotxn`
--
ALTER TABLE `qb_billpaymentcheck_appliedtotxn`
  MODIFY `qbsql_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `qb_billpaymentcreditcard`
--
ALTER TABLE `qb_billpaymentcreditcard`
  MODIFY `qbsql_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `qb_billpaymentcreditcard_appliedtotxn`
--
ALTER TABLE `qb_billpaymentcreditcard_appliedtotxn`
  MODIFY `qbsql_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `qb_billtopay`
--
ALTER TABLE `qb_billtopay`
  MODIFY `qbsql_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `qb_bill_expenseline`
--
ALTER TABLE `qb_bill_expenseline`
  MODIFY `qbsql_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `qb_bill_itemgroupline`
--
ALTER TABLE `qb_bill_itemgroupline`
  MODIFY `qbsql_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `qb_bill_itemgroupline_itemline`
--
ALTER TABLE `qb_bill_itemgroupline_itemline`
  MODIFY `qbsql_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `qb_bill_itemline`
--
ALTER TABLE `qb_bill_itemline`
  MODIFY `qbsql_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `qb_bill_linkedtxn`
--
ALTER TABLE `qb_bill_linkedtxn`
  MODIFY `qbsql_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `qb_charge`
--
ALTER TABLE `qb_charge`
  MODIFY `qbsql_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `qb_check`
--
ALTER TABLE `qb_check`
  MODIFY `qbsql_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `qb_check_expenseline`
--
ALTER TABLE `qb_check_expenseline`
  MODIFY `qbsql_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `qb_check_itemgroupline`
--
ALTER TABLE `qb_check_itemgroupline`
  MODIFY `qbsql_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `qb_check_itemgroupline_itemline`
--
ALTER TABLE `qb_check_itemgroupline_itemline`
  MODIFY `qbsql_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `qb_check_itemline`
--
ALTER TABLE `qb_check_itemline`
  MODIFY `qbsql_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `qb_check_linkedtxn`
--
ALTER TABLE `qb_check_linkedtxn`
  MODIFY `qbsql_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `qb_class`
--
ALTER TABLE `qb_class`
  MODIFY `qbsql_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `qb_company`
--
ALTER TABLE `qb_company`
  MODIFY `qbsql_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `qb_company_subscribedservices_service`
--
ALTER TABLE `qb_company_subscribedservices_service`
  MODIFY `qbsql_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `qb_creditcardcharge`
--
ALTER TABLE `qb_creditcardcharge`
  MODIFY `qbsql_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `qb_creditcardcharge_expenseline`
--
ALTER TABLE `qb_creditcardcharge_expenseline`
  MODIFY `qbsql_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `qb_creditcardcharge_itemgroupline`
--
ALTER TABLE `qb_creditcardcharge_itemgroupline`
  MODIFY `qbsql_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `qb_creditcardcharge_itemgroupline_itemline`
--
ALTER TABLE `qb_creditcardcharge_itemgroupline_itemline`
  MODIFY `qbsql_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `qb_creditcardcharge_itemline`
--
ALTER TABLE `qb_creditcardcharge_itemline`
  MODIFY `qbsql_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `qb_creditcardcredit`
--
ALTER TABLE `qb_creditcardcredit`
  MODIFY `qbsql_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `qb_creditcardcredit_expenseline`
--
ALTER TABLE `qb_creditcardcredit_expenseline`
  MODIFY `qbsql_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `qb_creditcardcredit_itemgroupline`
--
ALTER TABLE `qb_creditcardcredit_itemgroupline`
  MODIFY `qbsql_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `qb_creditcardcredit_itemgroupline_itemline`
--
ALTER TABLE `qb_creditcardcredit_itemgroupline_itemline`
  MODIFY `qbsql_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `qb_creditcardcredit_itemline`
--
ALTER TABLE `qb_creditcardcredit_itemline`
  MODIFY `qbsql_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `qb_creditmemo`
--
ALTER TABLE `qb_creditmemo`
  MODIFY `qbsql_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `qb_creditmemo_creditmemoline`
--
ALTER TABLE `qb_creditmemo_creditmemoline`
  MODIFY `qbsql_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `qb_creditmemo_creditmemolinegroup`
--
ALTER TABLE `qb_creditmemo_creditmemolinegroup`
  MODIFY `qbsql_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `qb_creditmemo_creditmemolinegroup_creditmemoline`
--
ALTER TABLE `qb_creditmemo_creditmemolinegroup_creditmemoline`
  MODIFY `qbsql_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `qb_creditmemo_linkedtxn`
--
ALTER TABLE `qb_creditmemo_linkedtxn`
  MODIFY `qbsql_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `qb_credittoapply`
--
ALTER TABLE `qb_credittoapply`
  MODIFY `qbsql_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `qb_currency`
--
ALTER TABLE `qb_currency`
  MODIFY `qbsql_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `qb_customer`
--
ALTER TABLE `qb_customer`
  MODIFY `qbsql_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `qb_customermsg`
--
ALTER TABLE `qb_customermsg`
  MODIFY `qbsql_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `qb_customertype`
--
ALTER TABLE `qb_customertype`
  MODIFY `qbsql_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `qb_dataext`
--
ALTER TABLE `qb_dataext`
  MODIFY `qbsql_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `qb_dataextdef`
--
ALTER TABLE `qb_dataextdef`
  MODIFY `qbsql_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `qb_dataextdef_assigntoobject`
--
ALTER TABLE `qb_dataextdef_assigntoobject`
  MODIFY `qbsql_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `qb_datedriventerms`
--
ALTER TABLE `qb_datedriventerms`
  MODIFY `qbsql_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `qb_deposit`
--
ALTER TABLE `qb_deposit`
  MODIFY `qbsql_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `qb_deposit_depositline`
--
ALTER TABLE `qb_deposit_depositline`
  MODIFY `qbsql_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `qb_employee`
--
ALTER TABLE `qb_employee`
  MODIFY `qbsql_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `qb_employee_earnings`
--
ALTER TABLE `qb_employee_earnings`
  MODIFY `qbsql_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `qb_estimate`
--
ALTER TABLE `qb_estimate`
  MODIFY `qbsql_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `qb_estimate_estimateline`
--
ALTER TABLE `qb_estimate_estimateline`
  MODIFY `qbsql_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `qb_estimate_estimatelinegroup`
--
ALTER TABLE `qb_estimate_estimatelinegroup`
  MODIFY `qbsql_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `qb_estimate_estimatelinegroup_estimateline`
--
ALTER TABLE `qb_estimate_estimatelinegroup_estimateline`
  MODIFY `qbsql_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `qb_estimate_linkedtxn`
--
ALTER TABLE `qb_estimate_linkedtxn`
  MODIFY `qbsql_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `qb_host`
--
ALTER TABLE `qb_host`
  MODIFY `qbsql_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `qb_inventoryadjustment`
--
ALTER TABLE `qb_inventoryadjustment`
  MODIFY `qbsql_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `qb_inventoryadjustment_inventoryadjustmentline`
--
ALTER TABLE `qb_inventoryadjustment_inventoryadjustmentline`
  MODIFY `qbsql_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `qb_invoice`
--
ALTER TABLE `qb_invoice`
  MODIFY `qbsql_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `qb_invoice_invoiceline`
--
ALTER TABLE `qb_invoice_invoiceline`
  MODIFY `qbsql_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `qb_invoice_invoicelinegroup`
--
ALTER TABLE `qb_invoice_invoicelinegroup`
  MODIFY `qbsql_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `qb_invoice_invoicelinegroup_invoiceline`
--
ALTER TABLE `qb_invoice_invoicelinegroup_invoiceline`
  MODIFY `qbsql_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `qb_invoice_linkedtxn`
--
ALTER TABLE `qb_invoice_linkedtxn`
  MODIFY `qbsql_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `qb_itemdiscount`
--
ALTER TABLE `qb_itemdiscount`
  MODIFY `qbsql_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `qb_itemfixedasset`
--
ALTER TABLE `qb_itemfixedasset`
  MODIFY `qbsql_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `qb_itemgroup`
--
ALTER TABLE `qb_itemgroup`
  MODIFY `qbsql_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `qb_itemgroup_itemgroupline`
--
ALTER TABLE `qb_itemgroup_itemgroupline`
  MODIFY `qbsql_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `qb_iteminventory`
--
ALTER TABLE `qb_iteminventory`
  MODIFY `qbsql_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `qb_iteminventoryassembly`
--
ALTER TABLE `qb_iteminventoryassembly`
  MODIFY `qbsql_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `qb_iteminventoryassembly_iteminventoryassemblyline`
--
ALTER TABLE `qb_iteminventoryassembly_iteminventoryassemblyline`
  MODIFY `qbsql_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `qb_itemnoninventory`
--
ALTER TABLE `qb_itemnoninventory`
  MODIFY `qbsql_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `qb_itemothercharge`
--
ALTER TABLE `qb_itemothercharge`
  MODIFY `qbsql_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `qb_itempayment`
--
ALTER TABLE `qb_itempayment`
  MODIFY `qbsql_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `qb_itemreceipt`
--
ALTER TABLE `qb_itemreceipt`
  MODIFY `qbsql_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `qb_itemreceipt_expenseline`
--
ALTER TABLE `qb_itemreceipt_expenseline`
  MODIFY `qbsql_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `qb_itemreceipt_itemgroupline`
--
ALTER TABLE `qb_itemreceipt_itemgroupline`
  MODIFY `qbsql_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `qb_itemreceipt_itemgroupline_itemline`
--
ALTER TABLE `qb_itemreceipt_itemgroupline_itemline`
  MODIFY `qbsql_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `qb_itemreceipt_itemline`
--
ALTER TABLE `qb_itemreceipt_itemline`
  MODIFY `qbsql_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `qb_itemreceipt_linkedtxn`
--
ALTER TABLE `qb_itemreceipt_linkedtxn`
  MODIFY `qbsql_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `qb_itemsalestax`
--
ALTER TABLE `qb_itemsalestax`
  MODIFY `qbsql_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `qb_itemsalestaxgroup`
--
ALTER TABLE `qb_itemsalestaxgroup`
  MODIFY `qbsql_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `qb_itemsalestaxgroup_itemsalestax`
--
ALTER TABLE `qb_itemsalestaxgroup_itemsalestax`
  MODIFY `qbsql_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `qb_itemservice`
--
ALTER TABLE `qb_itemservice`
  MODIFY `qbsql_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `qb_itemsubtotal`
--
ALTER TABLE `qb_itemsubtotal`
  MODIFY `qbsql_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `qb_jobtype`
--
ALTER TABLE `qb_jobtype`
  MODIFY `qbsql_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `qb_journalentry`
--
ALTER TABLE `qb_journalentry`
  MODIFY `qbsql_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `qb_journalentry_journalcreditline`
--
ALTER TABLE `qb_journalentry_journalcreditline`
  MODIFY `qbsql_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `qb_journalentry_journaldebitline`
--
ALTER TABLE `qb_journalentry_journaldebitline`
  MODIFY `qbsql_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `qb_paymentmethod`
--
ALTER TABLE `qb_paymentmethod`
  MODIFY `qbsql_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `qb_payrollitemwage`
--
ALTER TABLE `qb_payrollitemwage`
  MODIFY `qbsql_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `qb_preferences`
--
ALTER TABLE `qb_preferences`
  MODIFY `qbsql_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `qb_pricelevel`
--
ALTER TABLE `qb_pricelevel`
  MODIFY `qbsql_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `qb_pricelevel_pricelevelperitem`
--
ALTER TABLE `qb_pricelevel_pricelevelperitem`
  MODIFY `qbsql_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `qb_purchaseorder`
--
ALTER TABLE `qb_purchaseorder`
  MODIFY `qbsql_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `qb_purchaseorder_linkedtxn`
--
ALTER TABLE `qb_purchaseorder_linkedtxn`
  MODIFY `qbsql_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `qb_purchaseorder_purchaseorderline`
--
ALTER TABLE `qb_purchaseorder_purchaseorderline`
  MODIFY `qbsql_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `qb_purchaseorder_purchaseorderlinegroup`
--
ALTER TABLE `qb_purchaseorder_purchaseorderlinegroup`
  MODIFY `qbsql_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `qb_purchaseorder_purchaseorderlinegroup_purchaseorderline`
--
ALTER TABLE `qb_purchaseorder_purchaseorderlinegroup_purchaseorderline`
  MODIFY `qbsql_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `qb_receivepayment`
--
ALTER TABLE `qb_receivepayment`
  MODIFY `qbsql_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `qb_receivepayment_appliedtotxn`
--
ALTER TABLE `qb_receivepayment_appliedtotxn`
  MODIFY `qbsql_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `qb_salesorder`
--
ALTER TABLE `qb_salesorder`
  MODIFY `qbsql_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `qb_salesorder_linkedtxn`
--
ALTER TABLE `qb_salesorder_linkedtxn`
  MODIFY `qbsql_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `qb_salesorder_salesorderline`
--
ALTER TABLE `qb_salesorder_salesorderline`
  MODIFY `qbsql_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `qb_salesorder_salesorderlinegroup`
--
ALTER TABLE `qb_salesorder_salesorderlinegroup`
  MODIFY `qbsql_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `qb_salesorder_salesorderlinegroup_salesorderline`
--
ALTER TABLE `qb_salesorder_salesorderlinegroup_salesorderline`
  MODIFY `qbsql_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `qb_salesreceipt`
--
ALTER TABLE `qb_salesreceipt`
  MODIFY `qbsql_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `qb_salesreceipt_salesreceiptline`
--
ALTER TABLE `qb_salesreceipt_salesreceiptline`
  MODIFY `qbsql_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `qb_salesreceipt_salesreceiptlinegroup`
--
ALTER TABLE `qb_salesreceipt_salesreceiptlinegroup`
  MODIFY `qbsql_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `qb_salesreceipt_salesreceiptlinegroup_salesreceiptline`
--
ALTER TABLE `qb_salesreceipt_salesreceiptlinegroup_salesreceiptline`
  MODIFY `qbsql_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `qb_salesrep`
--
ALTER TABLE `qb_salesrep`
  MODIFY `qbsql_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `qb_salestaxcode`
--
ALTER TABLE `qb_salestaxcode`
  MODIFY `qbsql_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `qb_shipmethod`
--
ALTER TABLE `qb_shipmethod`
  MODIFY `qbsql_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `qb_standardterms`
--
ALTER TABLE `qb_standardterms`
  MODIFY `qbsql_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `qb_timetracking`
--
ALTER TABLE `qb_timetracking`
  MODIFY `qbsql_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `qb_unitofmeasureset`
--
ALTER TABLE `qb_unitofmeasureset`
  MODIFY `qbsql_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `qb_unitofmeasureset_defaultunit`
--
ALTER TABLE `qb_unitofmeasureset_defaultunit`
  MODIFY `qbsql_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `qb_unitofmeasureset_relatedunit`
--
ALTER TABLE `qb_unitofmeasureset_relatedunit`
  MODIFY `qbsql_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `qb_vehicle`
--
ALTER TABLE `qb_vehicle`
  MODIFY `qbsql_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `qb_vehiclemileage`
--
ALTER TABLE `qb_vehiclemileage`
  MODIFY `qbsql_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `qb_vendor`
--
ALTER TABLE `qb_vendor`
  MODIFY `qbsql_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `qb_vendorcredit`
--
ALTER TABLE `qb_vendorcredit`
  MODIFY `qbsql_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `qb_vendorcredit_expenseline`
--
ALTER TABLE `qb_vendorcredit_expenseline`
  MODIFY `qbsql_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `qb_vendorcredit_itemgroupline`
--
ALTER TABLE `qb_vendorcredit_itemgroupline`
  MODIFY `qbsql_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `qb_vendorcredit_itemgroupline_itemline`
--
ALTER TABLE `qb_vendorcredit_itemgroupline_itemline`
  MODIFY `qbsql_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `qb_vendorcredit_itemline`
--
ALTER TABLE `qb_vendorcredit_itemline`
  MODIFY `qbsql_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `qb_vendorcredit_linkedtxn`
--
ALTER TABLE `qb_vendorcredit_linkedtxn`
  MODIFY `qbsql_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `qb_vendortype`
--
ALTER TABLE `qb_vendortype`
  MODIFY `qbsql_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `qb_workerscompcode`
--
ALTER TABLE `qb_workerscompcode`
  MODIFY `qbsql_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `qb_workerscompcode_ratehistory`
--
ALTER TABLE `qb_workerscompcode_ratehistory`
  MODIFY `qbsql_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `quickbooks_config`
--
ALTER TABLE `quickbooks_config`
  MODIFY `quickbooks_config_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `quickbooks_log`
--
ALTER TABLE `quickbooks_log`
  MODIFY `quickbooks_log_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;
--
-- AUTO_INCREMENT for table `quickbooks_oauth`
--
ALTER TABLE `quickbooks_oauth`
  MODIFY `quickbooks_oauth_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `quickbooks_queue`
--
ALTER TABLE `quickbooks_queue`
  MODIFY `quickbooks_queue_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `quickbooks_recur`
--
ALTER TABLE `quickbooks_recur`
  MODIFY `quickbooks_recur_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `quickbooks_ticket`
--
ALTER TABLE `quickbooks_ticket`
  MODIFY `quickbooks_ticket_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
