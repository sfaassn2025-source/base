Instance: disability-certificate-status-min
InstanceOf: DisabilityCertificateObservationTWSSBase
Usage: #example
Title: "身心障礙證明狀態範例"
Description: "符合身心障礙證明狀態 Observation TWSS Base Profile 的最小範例。"
* status = #final
* code = TWSSObservationType#disability-certificate-status "身心障礙證明狀態"
* subject = Reference(pat-min)
* effectiveDateTime = "2026-08-08"

