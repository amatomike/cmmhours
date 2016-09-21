-- phpMyAdmin SQL Dump
-- version 2.11.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 28, 2009 at 07:35 AM
-- Server version: 5.0.67
-- PHP Version: 5.2.9

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Database: 'quickbooks_import'
--

-- --------------------------------------------------------

--
-- Table structure for table 'qb_example_customer'
--

CREATE TABLE IF NOT EXISTS qb_example_customer (
  ListID varchar(40) NOT NULL,
  TimeCreated VARCHAR(30) NULL,
  TimeModified VARCHAR(30) NULL,
  `Name` varchar(50) NULL,
  FullName varchar(255) NULL,
  FirstName varchar(40) NULL,
  MiddleName varchar(10) NULL,
  LastName varchar(40) NULL,
  Contact varchar(50) NULL,
  ShipAddress_Addr1 varchar(50) NULL,
  ShipAddress_Addr2 varchar(50) NULL,
  ShipAddress_City varchar(50) NULL,
  ShipAddress_State varchar(25) NULL,
  ShipAddress_Province varchar(25) NULL,
  ShipAddress_PostalCode varchar(16) NULL,
  PRIMARY KEY  (ListID)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
-- --------------------------------------------------------

--
-- Table structure for table 'qb_example_estimate'
--

CREATE TABLE IF NOT EXISTS qb_example_estimate (
  TxnID varchar(40) NOT NULL,
  TimeCreated VARCHAR(30) NULL,
  TimeModified VARCHAR(30) NULL,
  RefNumber varchar(16) NULL,
  Customer_ListID varchar(40) NULL,
  Customer_FullName varchar(255) NULL,
  ShipAddress_Addr1 varchar(50) NULL,
  ShipAddress_Addr2 varchar(50) NULL,
  ShipAddress_City varchar(50) NULL,
  ShipAddress_State varchar(25) NULL,
  ShipAddress_Province varchar(25) NULL,
  ShipAddress_PostalCode varchar(16) NULL,
  BalanceRemaining VARCHAR(15) NULL,
  PRIMARY KEY  (TxnID)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table 'qb_example_estimate_lineitem'
--

CREATE TABLE IF NOT EXISTS qb_example_estimate_lineitem (
  TxnID varchar(40) NOT NULL,
  TxnLineID varchar(40) NOT NULL,
  Item_ListID varchar(40) NULL,
  Item_FullName varchar(255) NULL,
  Descrip text NULL,
  Quantity VARCHAR(15) NULL,
  Rate VARCHAR(15) NULL,
  PRIMARY KEY  (TxnID,TxnLineID)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table 'qb_example_invoice'
--

CREATE TABLE IF NOT EXISTS qb_example_invoice (
  TxnID varchar(40) NOT NULL,
  TimeCreated VARCHAR(30) NULL,
  TimeModified VARCHAR(30) NULL,
  RefNumber varchar(16) NULL,
  Customer_ListID varchar(40) NULL,
  Customer_FullName varchar(255) NULL,
  ShipAddress_Addr1 varchar(50) NULL,
  ShipAddress_Addr2 varchar(50) NULL,
  ShipAddress_City varchar(50) NULL,
  ShipAddress_State varchar(25) NULL,
  ShipAddress_Province varchar(25) NULL,
  ShipAddress_PostalCode varchar(16) NULL,
  BalanceRemaining VARCHAR(15) NULL,
  PRIMARY KEY  (TxnID)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table 'qb_example_invoice_lineitem'
--

CREATE TABLE IF NOT EXISTS qb_example_invoice_lineitem (
  TxnID varchar(40) NOT NULL,
  TxnLineID varchar(40) NOT NULL,
  Item_ListID varchar(40) NULL,
  Item_FullName varchar(255) NULL,
  Descrip text NULL,
  Quantity VARCHAR(15) NULL,
  Rate VARCHAR(15) NULL,
  PRIMARY KEY  (TxnID,TxnLineID)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------


--
-- Table structure for table 'qb_example_item'
--

CREATE TABLE IF NOT EXISTS qb_example_item (
  ListID varchar(40) NOT NULL,
  TimeCreated VARCHAR(30) NULL,
  TimeModified VARCHAR(30) NULL,
  `Name` varchar(50) NULL,
  FullName varchar(255) NULL,
  `Type` varchar(40) NULL,
  Parent_ListID varchar(40) NULL,
  Parent_FullName varchar(255) NULL,
  ManufacturerPartNumber varchar(40) NULL,
  SalesTaxCode_ListID varchar(40) NULL,
  SalesTaxCode_FullName varchar(255) NULL,
  BuildPoint varchar(40) NULL,
  ReorderPoint varchar(40) NULL,
  QuantityOnHand VARCHAR(15) NULL,
  AverageCost VARCHAR(15) NULL,
  QuantityOnOrder VARCHAR(15) NULL,
  QuantityOnSalesOrder VARCHAR(15) NULL,
  TaxRate varchar(40) NULL,
  SalesPrice VARCHAR(15) NULL,
  SalesDesc text NULL,
  PurchaseCost VARCHAR(15) NULL,
  PurchaseDesc text NULL,
  PrefVendor_ListID varchar(40) NULL,
  PrefVendor_FullName varchar(255) NULL,
  PRIMARY KEY  (ListID)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table 'qb_example_salesorder'
--

CREATE TABLE IF NOT EXISTS qb_example_salesorder (
  TxnID varchar(40) NOT NULL,
  TimeCreated VARCHAR(30) NULL,
  TimeModified VARCHAR(30) NULL,
  RefNumber varchar(16) NULL,
  Customer_ListID varchar(40) NULL,
  Customer_FullName varchar(255) NULL,
  ShipAddress_Addr1 varchar(50) NULL,
  ShipAddress_Addr2 varchar(50) NULL,
  ShipAddress_City varchar(50) NULL,
  ShipAddress_State varchar(25) NULL,
  ShipAddress_Province varchar(25) NULL,
  ShipAddress_PostalCode varchar(16) NULL,
  BalanceRemaining VARCHAR(15) NULL,
  PRIMARY KEY  (TxnID)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table 'qb_example_salesorder_lineitem'
--

CREATE TABLE IF NOT EXISTS qb_example_salesorder_lineitem (
  TxnID varchar(40) NOT NULL,
  TxnLineID varchar(40) NOT NULL,
  Item_ListID varchar(40) NULL,
  Item_FullName varchar(255) NULL,
  Descrip text NULL,
  Quantity VARCHAR(15) NULL,
  Rate VARCHAR(15) NULL,
  PRIMARY KEY  (TxnID,TxnLineID)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
