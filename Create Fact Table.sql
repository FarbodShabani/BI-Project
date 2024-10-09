CREATE TABLE FactEnvironmentalMonitoring (
    MonitoringKey INT IDENTITY(1,1) PRIMARY KEY,
    DateKey INT,
    OfficerKey INT,
    SiteKey INT,
    ActivityKey INT,
    EquipmentKey INT,
    TransactionKey INT,
    ActivityDuration DECIMAL(5,2),
    PollutionLevelDetected DECIMAL(8,2),
    ComplianceStatus VARCHAR(20),
    CommunityFeedbackRating INT,
    FOREIGN KEY (DateKey) REFERENCES DimDate(DateKey),
    FOREIGN KEY (OfficerKey) REFERENCES DimOfficer(OfficerKey),
    FOREIGN KEY (SiteKey) REFERENCES DimSite(SiteKey),
    FOREIGN KEY (ActivityKey) REFERENCES DimActivity(ActivityKey),
    FOREIGN KEY (EquipmentKey) REFERENCES DimEquipment(EquipmentKey),
    FOREIGN KEY (TransactionKey) REFERENCES DimTransaction(TransactionKey)
);