CREATE TABLE `TABKassaTransAufbereit` (
  `nProjNr` smallint DEFAULT NULL,
  `nKassaNr` smallint NOT NULL,
  `nSerienNr` int NOT NULL,
  `nUniCodeNr` bigint NOT NULL,
  `nKassaTransAktArt` tinyint NOT NULL,
  `nEinzelJournalNr` bigint DEFAULT NULL,
  `nStornoJournalNr` bigint DEFAULT NULL,
  `nKundenKartenTypNr` int DEFAULT NULL,
  `nPersTypNr` int DEFAULT NULL,
  `nArtikelNr` bigint DEFAULT NULL,
  `nStk` int NOT NULL,
  `fEinzelTarifTats` decimal(13,5) NOT NULL,
  `fEinzelTarifBlatt` decimal(13,5) NOT NULL,
  `dtAusgabeDat` datetime NOT NULL,
  `dtAusgabeZeit` datetime NOT NULL,
  `dtGiltAb` datetime DEFAULT NULL,
  `dtGiltBis` datetime DEFAULT NULL,
  `nKassierID` smallint NOT NULL,
  `nPoolNr` int DEFAULT NULL,
  `nPoolPersTypNr` int DEFAULT NULL,
  `nKassierAbrechNr` bigint DEFAULT NULL,
  `nZeitStafNr` tinyint DEFAULT NULL,
  `nZeitStafTabNr` smallint DEFAULT NULL,
  `nWochStafNr` tinyint DEFAULT NULL,
  `nWochStafTabNr` smallint DEFAULT NULL,
  `nSaisStafNr` tinyint DEFAULT NULL,
  `nSaisStafTabNr` smallint DEFAULT NULL,
  `nTarifBlattNr` smallint NOT NULL,
  `nTarifBlattGueltNr` smallint NOT NULL,
  `nLfdSaisonNr` tinyint DEFAULT NULL,
  `nActProjNr` smallint NOT NULL,
  `nActKassaNr` smallint NOT NULL,
  `nActGesNr` smallint NOT NULL,
  `nProjNrAlt` smallint DEFAULT NULL,
  `nKassaNrAlt` smallint DEFAULT NULL,
  `nSerienNrAlt` int DEFAULT NULL,
  `nUniCodeNrAlt` bigint DEFAULT NULL,
  `nRestPunkteAlt` int DEFAULT NULL,
  `bLeserTransIsModified` tinyint NOT NULL,
  `dtFirstLeserChanges` datetime DEFAULT NULL,
  `nLfdZaehler` bigint NOT NULL,
  `nAnzGrpPersonen` smallint DEFAULT NULL,
  `nPersProjNr` smallint DEFAULT NULL,
  `nPersKassaNr` smallint DEFAULT NULL,
  `nPersPersNr` bigint DEFAULT NULL,
  `nFirmenProjNr` smallint DEFAULT NULL,
  `nFirmenKassaNr` smallint DEFAULT NULL,
  `nFirmenNr` bigint DEFAULT NULL,
  `nTransPersProjNr` smallint DEFAULT NULL,
  `nTransPersKassaNr` smallint DEFAULT NULL,
  `nTransPersPersNr` bigint DEFAULT NULL,
  `nKartenNr` varchar(64) DEFAULT NULL,
  `dtInsertTimeStamp` datetime DEFAULT NULL,
  `nTransNr` bigint DEFAULT NULL,
  `nBlockNr` smallint DEFAULT NULL,
  `id` varchar(45) DEFAULT NULL,
  `persID` varchar(45) DEFAULT NULL,
  `nRentalPersTypeNr` bigint DEFAULT NULL,
  `nRentalItemNr` bigint DEFAULT NULL,
  `nWareSaleItemNr` bigint DEFAULT NULL,
  `fAmount` decimal(13,5) DEFAULT NULL,
  `nSaleQuantity` smallint DEFAULT NULL,
  `fWareTarif` decimal(13,5) DEFAULT NULL,
  KEY `idx_TABKassaTransAufbereit_nTransNr` (`nTransNr`),
  KEY `idx_TABKassaTransAufbereit_nProjNr` (`nProjNr`),
  KEY `idx_TABKassaTransAufbereit_nKassaNr` (`nKassaNr`),
  KEY `idx_TABKassaTransAufbereit_dtAusgabeDat` (`dtAusgabeDat`),
  KEY `idx_TABKassaTransAufbereit_nPersTypNr` (`nPersTypNr`),
  KEY `idx_TABKassaTransAufbereit_nKundenKartenTypNr` (`nKundenKartenTypNr`),
  KEY `idx_TABKassaTransAufbereit_nKassierID` (`nKassierID`),
  KEY `idx_TABKassaTransAufbereit_nPoolNr` (`nPoolNr`),
  KEY `idx_TABKassaTransAufbereit_nActKassaNr` (`nActKassaNr`),
  KEY `idx_TABKassaTransAufbereit_nBlockNr` (`nBlockNr`),
  KEY `idx_TABKassaTransAufbereit_nFirmenNr` (`nFirmenNr`),
  KEY `idx_TABKassaTransAufbereit_nSerienNr` (`nSerienNr`),
  KEY `idx_TABKassaTransAufbereit_nUniCodeNr` (`nUniCodeNr`),
  KEY `idx_TABKassaTransAufbereit_nPersPersNr` (`nPersPersNr`),
  KEY `nKassierAbrechNr` (`nKassierAbrechNr`),
  KEY `nLfdZaehler` (`nLfdZaehler`),
  KEY `idx_TABKassaTransAufbereit_nArtikelNr` (`nArtikelNr`),
  KEY `idx_TABKassaTransAufbereit_nKassaTransAktArt` (`nKassaTransAktArt`),
  KEY `idx_TABKassaTransAufbereit_dtGiltAb` (`dtGiltAb`),
  KEY `idx_TABKassaTransAufbereit_dtGiltBis` (`dtGiltBis`),
  KEY `idx_TABKassaTransAufbereit_nStk` (`nStk`),
  KEY `idx_nProjNr_nKassaNr_nSerienNr` (`nProjNr`,`nKassaNr`,`nSerienNr`),
  KEY `idx_TABKassaTransAufbereit_nKartenNr` (`nKartenNr`),
  KEY `DEVOPS_TABKassaTransAufbereit_nKassierAbrechNr_nKassaTransAktArt` (`nKassierAbrechNr`,`nKassaTransAktArt`),
  KEY `DEVOPS_TABKassaTransAufbereit_nKassaTransAktArt` (`nKassaTransAktArt`,`nKassierAbrechNr`) USING BTREE,
  KEY `idx_dtInsertTimeStamp` (`dtInsertTimeStamp`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE `Person` (
  `nPersPersNr` bigint NOT NULL,  
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(100),
  `phone_number` varchar(15),
  `date_of_birth` date,
  `address` varchar(255),
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`nPersPersNr`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE `ProductData` (
  `nSerienNr` int NOT NULL,
  `ProductName` varchar(255) NOT NULL,
  `ProductType` varchar(50) NOT NULL,
  `Description` varchar(255) NOT NULL,
  `Price` decimal(13, 2) NOT NULL,
  PRIMARY KEY (`nSerienNr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


INSERT INTO `Person` (`nPersPersNr`, `first_name`, `last_name`, `email`, `phone_number`, `date_of_birth`, `address`) VALUES
(852, 'John', 'Doe', 'john.doe@example.com', '555-1234', '1990-05-10', '123 Elm Street, Cityville, NY'),
(4, 'Jane', 'Smith', 'jane.smith@example.com', '555-5678', '1985-03-15', '456 Oak Avenue, Townville, TX'),
(972, 'Michael', 'Johnson', 'michael.johnson@example.com', '555-8765', '1982-07-22', '789 Pine Road, Villageburg, CA'),
(276, 'Emily', 'Brown', 'emily.brown@example.com', '555-4321', '1992-01-11', '135 Maple Lane, Hamlet, FL'),
(973, 'Chris', 'Williams', 'chris.williams@example.com', '555-1357', '1988-11-30', '246 Birch Street, Metropolis, IL'),
(277, 'Patricia', 'Jones', 'patricia.jones@example.com', '555-2468', '1994-02-28', '987 Cedar Blvd, Suburbia, OH'),
(65, 'David', 'Miller', 'david.miller@example.com', '555-3579', '1980-09-09', '654 Redwood Drive, Countryside, CO'),
(66, 'Linda', 'Davis', 'linda.davis@example.com', '555-4680', '1978-12-25', '321 Willow Way, Lakeside, AZ'),
(67, 'James', 'Garcia', 'james.garcia@example.com', '555-5791', '1995-10-05', '432 Spruce Avenue, Hilltop, KS'),
(68, 'Karen', 'Martinez', 'karen.martinez@example.com', '555-6802', '1983-06-18', '654 Chestnut Street, Riverside, WA');

INSERT INTO scan_db.TABKassaTransAufbereit (
    nProjNr, nKassaNr, nSerienNr, nUniCodeNr, nKassaTransAktArt, nEinzelJournalNr, nStornoJournalNr, 
    nKundenKartenTypNr, nPersTypNr, nArtikelNr, nStk, fEinzelTarifTats, fEinzelTarifBlatt, 
    dtAusgabeDat, dtAusgabeZeit, dtGiltAb, dtGiltBis, nKassierID, nPoolNr, nPoolPersTypNr, 
    nKassierAbrechNr, nZeitStafNr, nZeitStafTabNr, nWochStafNr, nWochStafTabNr, nSaisStafNr, 
    nSaisStafTabNr, nTarifBlattNr, nTarifBlattGueltNr, nLfdSaisonNr, nActProjNr, nActKassaNr, 
    nActGesNr, nProjNrAlt, nKassaNrAlt, nSerienNrAlt, nUniCodeNrAlt, nRestPunkteAlt, 
    bLeserTransIsModified, dtFirstLeserChanges, nLfdZaehler, nAnzGrpPersonen, nPersProjNr, 
    nPersKassaNr, nPersPersNr, nFirmenProjNr, nFirmenKassaNr, nFirmenNr, nTransPersProjNr, 
    nTransPersKassaNr, nTransPersPersNr, nKartenNr, dtInsertTimeStamp, nTransNr, nBlockNr, 
    id, persID, nRentalPersTypeNr, nRentalItemNr, nWareSaleItemNr, fAmount, nSaleQuantity, 
    fWareTarif
) VALUES
    -- Valid ticket example (valid date range)
    (270, 45, 61127, 2, 0, 168436, NULL, 4508, 6274, NULL, 1, 299.00000, 299.00000, 
     '2022-06-27 00:00:00', '2022-06-01 11:15:31', '2022-06-27 11:15:30', '2025-02-06 23:59:59', 
     37, 32, 32, 164, 1, 236, 0, 236, 0, 236, 258, 2, 0, 270, 45, 10, NULL, NULL, NULL, NULL, NULL, -1, NULL, 
     32868117, NULL, 270, 44, 852, NULL, NULL, NULL, NULL, NULL, NULL, 'E0040108249CFF93', '2022-06-27 11:16:42', 
     72157, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
    
    -- Invalid ticket (expired date range, expired `dtGiltBis`)
    (270, 40, 26047, 2, 0, 127842, NULL, 4508, 6276, NULL, 1, 30.00000, 30.00000, 
     '2022-06-27 00:00:00', '2022-06-01 11:49:56', '2022-06-27 11:49:47', '2025-01-31 23:59:59', 
     214, 32, 32, 162, 1, 236, 0, 236, 0, 236, 258, 2, 0, 270, 40, 9, NULL, NULL, NULL, NULL, NULL, -1, NULL, 
     32869627, NULL, 270, 40, 4, NULL, NULL, NULL, NULL, NULL, NULL, 'E0040108249C8CF3', '2022-06-27 11:50:36', 
     64973, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
    
    -- Valid ticket (valid time range)
    (270, 47, 22128, 4, 0, 330600, NULL, 4508, 6274, NULL, 1, 299.00000, 299.00000, 
     '2022-06-27 00:00:00', '2022-06-01 11:51:36', '2022-06-27 11:51:33', '2025-02-06 23:59:59', 
     441, 32, 32, 106, 1, 236, 0, 236, 0, 236, 258, 2, 0, 270, 47, 10, NULL, NULL, NULL, NULL, NULL, -1, NULL, 
     32869691, NULL, 270, 47, 972, NULL, NULL, NULL, NULL, NULL, NULL, 'E004010824B6E446', '2022-06-27 11:53:19', 
     111647, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
    
    -- Invalid ticket (future `dtGiltAb`, starting after today)
    (270, 40, 26049, 2, 0, 127844, NULL, 4508, 6276, NULL, 1, 30.00000, 30.00000, 
     '2022-06-27 00:00:00', '2022-06-01 11:50:38', '2025-02-07 11:50:31', '2025-06-26 23:59:59', 
     214, 32, 32, 162, 1, 236, 0, 236, 0, 236, 258, 2, 0, 270, 40, 9, NULL, NULL, NULL, NULL, NULL, -1, NULL, 
     32869706, NULL, 270, 40, 276, NULL, NULL, NULL, NULL, NULL, NULL, 'E0040108249C649F', '2022-06-27 11:53:52', 
     64974, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
    
    -- Valid ticket (valid time range)
    (270, 47, 22129, 4, 0, 330601, NULL, 4508, 6274, NULL, 1, 299.00000, 299.00000, 
     '2022-06-27 00:00:00', '2022-06-01 11:53:59', '2022-06-27 11:53:14', '2025-02-06 23:59:59', 
     441, 32, 32, 106, 1, 236, 0, 236, 0, 236, 258, 2, 0, 270, 47, 10, NULL, NULL, NULL, NULL, NULL, -1, NULL, 
     32869762, NULL, 270, 47, 973, NULL, NULL, NULL, NULL, NULL, NULL, 'E0040108249C8B22', '2022-06-27 11:55:12', 
     111648, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
    
    -- Invalid ticket (expired `dtGiltBis` in the past)
    (270, 40, 26050, 2, 0, 127845, NULL, 4508, 6276, NULL, 1, 30.00000, 30.00000, 
     '2022-06-27 00:00:00', '2022-06-01 11:53:59', '2022-06-27 11:53:47', '2025-02-01 23:59:59', 
     214, 32, 32, 162, 1, 236, 0, 236, 0, 236, 258, 2, 0, 270, 40, 9, NULL, NULL, NULL, NULL, NULL, -1, NULL, 
     32869820, NULL, 270, 40, 277, NULL, NULL, NULL, NULL, NULL, NULL, 'E0040108249C64B9', '2022-06-27 11:56:03', 
     64975, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
    
    -- Valid ticket (valid time range)
    (270, 5, 78214, 1, 0, 81847, NULL, 4508, 6274, NULL, 1, 299.00000, 299.00000, 
     '2022-06-27 00:00:00', '2022-06-01 12:03:00', '2022-06-27 12:02:39', '2025-02-06 23:59:59', 
     34, 32, 32, 78, 1, 236, 0, 236, 0, 236, 258, 2, 0, 270, 5, 5, NULL, NULL, NULL, NULL, NULL, -1, NULL, 
     32870144, NULL, 270, 5, 65, NULL, NULL, NULL, NULL, NULL, NULL, 'E0040108201CAA50', '2022-06-27 12:07:00', 
     30906, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);


-- Sample product data (Referenced by nSerienNr)

INSERT INTO scan_db.ProductData (
    nSerienNr, ProductName, ProductType, Description, Price
) VALUES
    -- Harder Ticket, Return
    (61127, 'Harder Ticket, Return', 'Ticket', 'Return ticket for Harderbahn, a scenic cable car ride in Interlaken.', 100.00),
    
    -- Skiabo
    (26047, 'Skiabo', 'Ski Pass', 'Day ski pass valid for various slopes in the region of Skiabo.', 120.00),
    
    -- Schynige Platte Bahn
    (22128, 'Schynige Platte Bahn', 'Ticket', 'Ticket for the scenic Schynige Platte Railway, offering views of the Alps.', 150.00),
    
    -- Interlaken Ost - Kl Scheidegg
    (26049, 'Interlaken Ost - Kl Scheidegg', 'Ticket', 'Train ticket from Interlaken Ost to the Kleine Scheidegg mountain station.', 75.00),
    
    -- Schlittelpass Tagspass
    (22129, 'Schlittelpass Tagspass', 'Pass', 'Day pass for sledging in the region of Schlittelpass.', 85.00),
    
    -- Wilderwil - Grindelwald Terminal
    (26050, 'Wilderwil - Grindelwald Terminal', 'Ticket', 'Train ticket between Wilderwil and Grindelwald Terminal station.', 60.00),
    
    -- Ski Tagespass (Ski Day Pass)
    (78214, 'Ski Tagespass', 'Ski Pass', 'Day ski pass for all slopes in the ski region around Grindelwald.', 130.00);