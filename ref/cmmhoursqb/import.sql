CREATE DATABASE IF NOT EXISTS `quickbooks_import` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `quickbooks_import`;

-- --------------------------------------------------------

--
-- Table structure for table `qb_example_customer`
--

CREATE TABLE `qb_example_customer` (
  `ListID` varchar(40) NOT NULL,
  `TimeCreated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `TimeModified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Name` varchar(50) NOT NULL,
  `FullName` varchar(255) NOT NULL,
  `FirstName` varchar(40) NOT NULL,
  `MiddleName` varchar(10) NOT NULL,
  `LastName` varchar(40) NOT NULL,
  `Contact` varchar(50) NOT NULL,
  `ShipAddress_Addr1` varchar(50) NOT NULL,
  `ShipAddress_Addr2` varchar(50) NOT NULL,
  `ShipAddress_City` varchar(50) NOT NULL,
  `ShipAddress_State` varchar(25) NOT NULL,
  `ShipAddress_Province` varchar(25) NOT NULL,
  `ShipAddress_PostalCode` varchar(16) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qb_example_estimate`
--

CREATE TABLE `qb_example_estimate` (
  `TxnID` varchar(40) NOT NULL,
  `TimeCreated` datetime NOT NULL,
  `TimeModified` datetime NOT NULL,
  `RefNumber` varchar(16) NOT NULL,
  `Customer_ListID` varchar(40) NOT NULL,
  `Customer_FullName` varchar(255) NOT NULL,
  `ShipAddress_Addr1` varchar(50) NOT NULL,
  `ShipAddress_Addr2` varchar(50) NOT NULL,
  `ShipAddress_City` varchar(50) NOT NULL,
  `ShipAddress_State` varchar(25) NOT NULL,
  `ShipAddress_Province` varchar(25) NOT NULL,
  `ShipAddress_PostalCode` varchar(16) NOT NULL,
  `BalanceRemaining` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qb_example_estimate_lineitem`
--

CREATE TABLE `qb_example_estimate_lineitem` (
  `TxnID` varchar(40) NOT NULL,
  `TxnLineID` varchar(40) NOT NULL,
  `Item_ListID` varchar(40) NOT NULL,
  `Item_FullName` varchar(255) NOT NULL,
  `Descrip` text NOT NULL,
  `Quantity` int(10) UNSIGNED NOT NULL,
  `Rate` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qb_example_invoice`
--

CREATE TABLE `qb_example_invoice` (
  `TxnID` varchar(40) NOT NULL,
  `TimeCreated` datetime NOT NULL,
  `TimeModified` datetime NOT NULL,
  `RefNumber` varchar(16) NOT NULL,
  `Customer_ListID` varchar(40) NOT NULL,
  `Customer_FullName` varchar(255) NOT NULL,
  `ShipAddress_Addr1` varchar(50) NOT NULL,
  `ShipAddress_Addr2` varchar(50) NOT NULL,
  `ShipAddress_City` varchar(50) NOT NULL,
  `ShipAddress_State` varchar(25) NOT NULL,
  `ShipAddress_Province` varchar(25) NOT NULL,
  `ShipAddress_PostalCode` varchar(16) NOT NULL,
  `BalanceRemaining` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qb_example_invoice_lineitem`
--

CREATE TABLE `qb_example_invoice_lineitem` (
  `TxnID` varchar(40) NOT NULL,
  `TxnLineID` varchar(40) NOT NULL,
  `Item_ListID` varchar(40) NOT NULL,
  `Item_FullName` varchar(255) NOT NULL,
  `Descrip` text NOT NULL,
  `Quantity` int(10) UNSIGNED NOT NULL,
  `Rate` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qb_example_item`
--

CREATE TABLE `qb_example_item` (
  `ListID` varchar(40) NOT NULL,
  `TimeCreated` datetime NOT NULL,
  `TimeModified` datetime NOT NULL,
  `Name` varchar(50) NOT NULL,
  `FullName` varchar(255) NOT NULL,
  `Type` varchar(40) NOT NULL,
  `Parent_ListID` varchar(40) NOT NULL,
  `Parent_FullName` varchar(255) NOT NULL,
  `ManufacturerPartNumber` varchar(40) NOT NULL,
  `SalesTaxCode_ListID` varchar(40) NOT NULL,
  `SalesTaxCode_FullName` varchar(255) NOT NULL,
  `BuildPoint` varchar(40) NOT NULL,
  `ReorderPoint` varchar(40) NOT NULL,
  `QuantityOnHand` int(10) UNSIGNED NOT NULL,
  `AverageCost` float NOT NULL,
  `QuantityOnOrder` int(10) UNSIGNED NOT NULL,
  `QuantityOnSalesOrder` int(10) UNSIGNED NOT NULL,
  `TaxRate` varchar(40) NOT NULL,
  `SalesPrice` float NOT NULL,
  `SalesDesc` text NOT NULL,
  `PurchaseCost` float NOT NULL,
  `PurchaseDesc` text NOT NULL,
  `PrefVendor_ListID` varchar(40) NOT NULL,
  `PrefVendor_FullName` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qb_example_salesorder`
--

CREATE TABLE `qb_example_salesorder` (
  `TxnID` varchar(40) NOT NULL,
  `TimeCreated` datetime NOT NULL,
  `TimeModified` datetime NOT NULL,
  `RefNumber` varchar(16) NOT NULL,
  `Customer_ListID` varchar(40) NOT NULL,
  `Customer_FullName` varchar(255) NOT NULL,
  `ShipAddress_Addr1` varchar(50) NOT NULL,
  `ShipAddress_Addr2` varchar(50) NOT NULL,
  `ShipAddress_City` varchar(50) NOT NULL,
  `ShipAddress_State` varchar(25) NOT NULL,
  `ShipAddress_Province` varchar(25) NOT NULL,
  `ShipAddress_PostalCode` varchar(16) NOT NULL,
  `BalanceRemaining` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qb_example_salesorder_lineitem`
--

CREATE TABLE `qb_example_salesorder_lineitem` (
  `TxnID` varchar(40) NOT NULL,
  `TxnLineID` varchar(40) NOT NULL,
  `Item_ListID` varchar(40) NOT NULL,
  `Item_FullName` varchar(255) NOT NULL,
  `Descrip` text NOT NULL,
  `Quantity` int(10) UNSIGNED NOT NULL,
  `Rate` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `quickbooks_config`
--

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
-- Dumping data for table `quickbooks_user`
--

INSERT INTO `quickbooks_user` (`qb_username`, `qb_password`, `qb_company_file`, `qbwc_wait_before_next_update`, `qbwc_min_run_every_n_seconds`, `status`, `write_datetime`, `touch_datetime`) VALUES
('quickbooks', '63dbae93fd428318ad3a73be3bcad17250b09825', '', 0, 0, 'e', '2016-08-23 20:45:57', '2016-08-23 23:22:52');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `qb_example_customer`
--
ALTER TABLE `qb_example_customer`
  ADD PRIMARY KEY (`ListID`);

--
-- Indexes for table `qb_example_estimate`
--
ALTER TABLE `qb_example_estimate`
  ADD PRIMARY KEY (`TxnID`);

--
-- Indexes for table `qb_example_estimate_lineitem`
--
ALTER TABLE `qb_example_estimate_lineitem`
  ADD PRIMARY KEY (`TxnID`,`TxnLineID`);

--
-- Indexes for table `qb_example_invoice`
--
ALTER TABLE `qb_example_invoice`
  ADD PRIMARY KEY (`TxnID`);

--
-- Indexes for table `qb_example_invoice_lineitem`
--
ALTER TABLE `qb_example_invoice_lineitem`
  ADD PRIMARY KEY (`TxnID`,`TxnLineID`);

--
-- Indexes for table `qb_example_item`
--
ALTER TABLE `qb_example_item`
  ADD PRIMARY KEY (`ListID`);

--
-- Indexes for table `qb_example_salesorder`
--
ALTER TABLE `qb_example_salesorder`
  ADD PRIMARY KEY (`TxnID`);

--
-- Indexes for table `qb_example_salesorder_lineitem`
--
ALTER TABLE `qb_example_salesorder_lineitem`
  ADD PRIMARY KEY (`TxnID`,`TxnLineID`);

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
-- AUTO_INCREMENT for table `quickbooks_config`
--
ALTER TABLE `quickbooks_config`
  MODIFY `quickbooks_config_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `quickbooks_log`
--
ALTER TABLE `quickbooks_log`
  MODIFY `quickbooks_log_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `quickbooks_oauth`
--
ALTER TABLE `quickbooks_oauth`
  MODIFY `quickbooks_oauth_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `quickbooks_queue`
--
ALTER TABLE `quickbooks_queue`
  MODIFY `quickbooks_queue_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `quickbooks_recur`
--
ALTER TABLE `quickbooks_recur`
  MODIFY `quickbooks_recur_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `quickbooks_ticket`
--
ALTER TABLE `quickbooks_ticket`
  MODIFY `quickbooks_ticket_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;