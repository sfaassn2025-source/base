Profile: ReferralHandlingTaskTWSSBase
Parent: Task
Id: ReferralHandlingTask-twss-base
Title: "個案轉介處理-Task TWSS Base"
Description: "因 TW Core IG 0.3.2 尚無針對個案轉介處理的 Task Profile，故繼承原生 Task，並於設定社福欄位後補回適用的 TW Core 0.3.2 共通交換規則。"
* ^version = "0.0.1"
* status 1..1 MS
* businessStatus only CodeableConceptTW
* businessStatus 1..1 MS
* businessStatus from TWSSReferralProcessingStatusVS (required)
* businessStatus ^short = "轉介處理情形"
* focus only Reference(ServiceRequestReferralTWSSBase)
* focus 1..1 MS
* focus ^short = "個案轉介 ServiceRequest"
* for only Reference(PatientTWSSBase)
* for 1..1 MS
* executionPeriod MS
* executionPeriod ^short = "轉介處理期間"
* requester only Reference(PractitionerTWSSBase or PractitionerRoleTWSSBase or OrganizationTWSSBase)
* requester MS
* owner only Reference(PractitionerTWSSBase or PractitionerRoleTWSSBase or OrganizationTWSSBase)
* owner MS
