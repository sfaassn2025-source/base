Profile: OrganizationAuditObservationTWSSBase
Parent: Observation
Id: OrganizationAuditObservation-twss-base
Title: "機構查核結果-Observation TWSS Base"
Description: "因 TW Core IG 0.3.2 尚無針對社福機構查核結果的 Profile，故繼承原生 Observation，並於設定社福欄位後補回適用的 TW Core 0.3.2 共通交換規則。"
* ^version = "0.0.1"

* status 1..1 MS
* code = TWSSObservationType#organization-audit-result
* code from TWSSObservationTypeVS (required)
* code ^short = "查核結果"
* focus only Reference(OrganizationTWSSBase)
* focus 1..1 MS
* focus ^short = "被查核機構"
* effective[x] only dateTime
* effective[x] MS
* performer only Reference(OrganizationTWSSBase)
* performer MS
* value[x] only boolean
* valueBoolean 1..1 MS
* valueBoolean ^short = "查核結果"
