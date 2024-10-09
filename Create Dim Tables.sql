-- DimOfficer
CREATE TABLE DimOfficer (
    OfficerKey INT IDENTITY(1,1) PRIMARY KEY,
    OfficerID INT,
    OfficerName VARCHAR(100)
);

-- DimSite
CREATE TABLE DimSite (
    SiteKey INT IDENTITY(1,1) PRIMARY KEY,
    SiteID INT,
    SiteName VARCHAR(100),
    SiteLocation VARCHAR(255)
);

-- DimActivity
CREATE TABLE DimActivity (
    ActivityKey INT IDENTITY(1,1) PRIMARY KEY,
    ActivityID INT,
    ActivityType VARCHAR(50),
    ActivityDescription VARCHAR(255)
);

-- DimEquipment
CREATE TABLE DimEquipment (
    EquipmentKey INT IDENTITY(1,1) PRIMARY KEY,
    EquipmentUsed VARCHAR(50)
);

-- DimDate
CREATE TABLE DimDate (
    DateKey INT IDENTITY(1,1) PRIMARY KEY,
    FullDate DATE,
    Year INT,
    Month INT,
    Day INT
);

-- DimTransaction
CREATE TABLE DimTransaction (
    TransactionKey INT IDENTITY(1,1) PRIMARY KEY,
    TransactionID INT
);