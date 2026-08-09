Instance: organization-audit-result-min
InstanceOf: OrganizationAuditObservationTWSSBase
Title: "機構查核結果範例"
Description: "符合機構查核結果 Observation TWSS Base Profile 的範例。"
Usage: #example

* status = #final
* code.text = "查核結果"
* focus = Reference(org-min)
* effectiveDateTime = "2026-07-29T10:00:00+08:00"
* performer[0] = Reference(org-min)
* valueBoolean = true
