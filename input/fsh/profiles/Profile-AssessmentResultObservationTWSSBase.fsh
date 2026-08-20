Profile: AssessmentResultObservationTWSSBase
Parent: Observation
Id: AssessmentResultObservation-twss-base
Title: "評估結果-Observation TWSS Base"
Description: "因 TW Core IG 0.3.2 尚無針對社福個案最終評估結果的 Profile，故繼承原生 Observation，並於設定社福欄位後補回適用的 TW Core 0.3.2 共通交換規則。"
* ^version = "0.0.1"
* status 1..1 MS
* code = TWSSObservationType#assessment-result "評估結果"
* code from TWSSObservationTypeVS (required)
* subject only Reference(PatientTWSSBase)
* subject 1..1 MS
* encounter only Reference(AssessmentServiceEncounterTWSSBase)
* encounter 1..1 MS
* performer only Reference(PractitionerTWSSBase or PractitionerRoleTWSSBase)
* performer 1..* MS
* effective[x] only dateTime
* effectiveDateTime 1..1 MS
* value[x] only string
* valueString 1..1 MS
* valueString ^short = "評估結果"
