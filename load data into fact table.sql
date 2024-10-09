INSERT INTO FactEnvironmentalMonitoring (
    DateKey, OfficerKey, SiteKey, ActivityKey, EquipmentKey, TransactionKey,
    ActivityDuration, PollutionLevelDetected, ComplianceStatus, CommunityFeedbackRating
)
SELECT 
    d.DateKey, o.OfficerKey, s.SiteKey, a.ActivityKey, e.EquipmentKey, t.TransactionKey,
    r.ActivityDuration, r.PollutionLevelDetected, r.ComplianceStatus, r.CommunityFeedbackRating
FROM RawEnvironmentalData r
JOIN DimDate d ON r.MonitoringDate = d.FullDate
JOIN DimOfficer o ON r.OfficerID = o.OfficerID
JOIN DimSite s ON r.SiteID = s.SiteID
JOIN DimActivity a ON r.ActivityID = a.ActivityID
JOIN DimEquipment e ON r.EquipmentUsed = e.EquipmentUsed
JOIN DimTransaction t ON r.TransactionID = t.TransactionID;