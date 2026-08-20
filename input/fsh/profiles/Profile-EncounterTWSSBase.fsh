Profile: AssessmentServiceEncounterTWSSBase
Parent: Encounter
Id: Encounter-assessment-service-twss-base
Title: "個案評估或服務接觸-Encounter TWSS Base"
Description: "因 TW Core IG 0.3.2 尚無針對社福個案評估或服務接觸的 Profile，故繼承原生 Encounter，並於設定社福欄位後補回適用的 TW Core 0.3.2 共通交換規則。"
* ^version = "0.0.1"
* status 1..1 MS
* class MS
* type only CodeableConceptTW
* type MS
* type from TWSSVisitServiceMethodVS (extensible)
* type ^short = "訪視服務方式"
* subject only Reference(PatientTWSSBase)
* subject 1..1 MS
* basedOn only Reference(ServiceRequestCaseReportTWSSBase)
* basedOn 1..1 MS
* basedOn ^short = "個案通報"
* episodeOfCare only Reference(EpisodeOfCareTWSSBase)
* episodeOfCare MS
* participant MS
* participant.individual only Reference(RelatedPersonTWSSBase or PractitionerTWSSBase or PractitionerRoleTWSSBase)
* period 1..1 MS
* period.start 1..1 MS
* period.start ^short = "訪視開始時間"
* period.end MS
* period.end ^short = "訪視結束時間"
* serviceProvider only Reference(OrganizationTWSSBase)
* serviceProvider MS
