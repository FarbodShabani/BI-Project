-- Create a table to hold the raw data
CREATE TABLE EnvironmentalData (
    MonitoringDate DATE,
    OfficerID INT,
    OfficerName VARCHAR(100),
    SiteID INT,
    SiteName VARCHAR(100),
    SiteLocation VARCHAR(255),
    ActivityID INT,
    ActivityType VARCHAR(50),
    ActivityDescription VARCHAR(255),
    ActivityDuration DECIMAL(5,2),
    EquipmentUsed VARCHAR(50),
    PollutionLevelDetected DECIMAL(8,2),
    ComplianceStatus VARCHAR(20),
    CommunityFeedbackRating INT,
    TransactionID INT
);

-- Use BULK INSERT to import the CSV file
BULK INSERT RawEnvironmentalData
FROM 'E:\INFO6090 Business Intelligence for the Enterprise\INFO6090Assignment1.csv'
WITH (
    FORMAT = 'CSV',
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n'
);