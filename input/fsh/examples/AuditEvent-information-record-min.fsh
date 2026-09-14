Instance: audit-event-information-record-min
InstanceOf: AuditEventTWSSBase
Title: "資訊記錄範例"
Description: "呈現系統記錄一筆個案資料查詢活動的 AuditEvent 範例。"
Usage: #example

* type = http://dicom.nema.org/resources/ontology/DCM#110101 "Audit Log Used"
* period.start = "2026-09-11T09:30:00+08:00"
* period.end = "2026-09-11T09:31:00+08:00"
* recorded = "2026-09-11T09:31:05+08:00"
* agent[ipAddress].who = Reference(org-min)
* agent[ipAddress].altId = "TWSS-API"
* agent[ipAddress].requestor = true
* agent[ipAddress].location = Reference(location-min)
* agent[ipAddress].network.address = "203.0.113.10"
* source.observer = Reference(org-min)
