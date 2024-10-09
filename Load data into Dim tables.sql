-- DimOfficer
INSERT INTO DimOfficer (OfficerID, OfficerName)
SELECT DISTINCT OfficerID, OfficerName
FROM RawEnvironmentalData;

-- DimSite
INSERT INTO DimSite (SiteID, SiteName, SiteLocation)
SELECT DISTINCT SiteID, SiteName, SiteLocation
FROM RawEnvironmentalData;

-- DimActivity
INSERT INTO DimActivity (ActivityID, ActivityType, ActivityDescription)
SELECT DISTINCT ActivityID, ActivityType, ActivityDescription
FROM RawEnvironmentalData;

-- DimEquipment
INSERT INTO DimEquipment (EquipmentUsed)
SELECT DISTINCT EquipmentUsed
FROM RawEnvironmentalData;

-- DimDate
INSERT INTO DimDate (FullDate, Year, Month, Day)
SELECT DISTINCT 
    MonitoringDate,
    YEAR(MonitoringDate),
    MONTH(MonitoringDate),
    DAY(MonitoringDate)
FROM RawEnvironmentalData;

-- DimTransaction
INSERT INTO DimTransaction (TransactionID)
SELECT DISTINCT TransactionID
FROM RawEnvironmentalData;