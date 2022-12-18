CREATE TABLE `driver` (
  `driverId` int NOT NULL AUTO_INCREMENT,
  `firstName` varchar(100) NOT NULL,
  `lastName` varchar(100) NOT NULL,
  `mobileNumber` varchar(100) NOT NULL,
  `emailAddr` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `idNumber` varchar(100) NOT NULL,
  `licenseNumber` varchar(100) NOT NULL,
  `driverStatus` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`driverId`),
  UNIQUE KEY `emailAddr_UNIQUE` (`emailAddr`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `passenger` (
  `passengerId` int NOT NULL AUTO_INCREMENT,
  `firstName` varchar(100) NOT NULL,
  `lastName` varchar(100) NOT NULL,
  `mobileNumber` varchar(100) NOT NULL,
  `emailAddr` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`passengerId`),
  UNIQUE KEY `emailAddr_UNIQUE` (`emailAddr`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `trip` (
  `tripId` int NOT NULL AUTO_INCREMENT,
  `pickUpPostalCode` varchar(100) NOT NULL,
  `dropOffPostalCode` varchar(100) NOT NULL,
  `passengerId` int NOT NULL,
  `startTime` datetime DEFAULT NULL,
  `endTime` datetime DEFAULT NULL,
  `tripStatus` varchar(45) DEFAULT NULL,
  `requestTime` datetime DEFAULT NULL,
  `driverId` int DEFAULT NULL,
  PRIMARY KEY (`tripId`),
  KEY `tripPassengerId` (`passengerId`),
  KEY `driverId_idx` (`driverId`),
  CONSTRAINT `tripDriverId` FOREIGN KEY (`driverId`) REFERENCES `driver` (`driverId`),
  CONSTRAINT `tripPassengerId` FOREIGN KEY (`passengerId`) REFERENCES `passenger` (`passengerId`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;