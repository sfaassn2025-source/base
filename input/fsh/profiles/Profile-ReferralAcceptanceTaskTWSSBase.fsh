Profile: ReferralAcceptanceTaskTWSSBase
Parent: Task
Id: ReferralAcceptanceTask-twss-base
Title: "個案轉介受理-Task TWSS Base"
Description: "因 TW Core IG 0.3.2 尚無針對個案轉介受理的 Task Profile，故繼承原生 Task，並於設定社福欄位後補回適用的 TW Core 0.3.2 共通交換規則。"
* ^version = "0.0.1"
* status 1..1 MS
* authoredOn 1..1 MS
* authoredOn ^short = "受轉介日期"
* focus only Reference(ServiceRequestReferralTWSSBase)
* focus 1..1 MS
* focus ^short = "個案轉介 ServiceRequest"
* for only Reference(PatientTWSSBase)
* for 1..1 MS
* requester only Reference(PractitionerTWSSBase or PractitionerRoleTWSSBase or OrganizationTWSSBase)
* requester MS
* owner only Reference(PractitionerTWSSBase or PractitionerRoleTWSSBase or OrganizationTWSSBase)
* owner MS
* output ^slicing.discriminator.type = #value
* output ^slicing.discriminator.path = "type.coding.code"
* output ^slicing.rules = #open
* output contains acceptanceDecision 1..1 MS
* output[acceptanceDecision].type.coding.system = "https://sfaa.gov.tw/base/CodeSystem/twss-task-output-type"
* output[acceptanceDecision].type.coding.code = #referral-acceptance-decision
* output[acceptanceDecision].type.coding.display = "轉介受理情形"
* output[acceptanceDecision].value[x] only CodeableConceptTW
* output[acceptanceDecision].valueCodeableConcept from TWSSReferralAcceptanceStatusVS (required)
* output[acceptanceDecision] ^short = "轉介受理情形"
