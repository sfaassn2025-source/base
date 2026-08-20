Profile: PsychologicalCounselingObservationTWSSBase
Parent: Observation
Id: PsychologicalCounselingObservation-twss-base
Title: "心理諮商與評估-Observation TWSS Base"
Description: "因 TW Core IG 0.3.2 尚無社福心理諮商與評估 Profile，故繼承原生 Observation，並補回適用的 TW Core IG 0.3.2 共通交換規則。"
* ^version = "0.0.1"
* status 1..1 MS
* code = TWSSObservationType#psychological-counseling-assessment "心理諮商與評估"
* code from TWSSObservationTypeVS (required)
* subject only Reference(PatientTWSSBase)
* subject 1..1 MS
* encounter only Reference(AssessmentServiceEncounterTWSSBase or ActualServiceEncounterTWSSBase)
* encounter MS
* value[x] only string
* valueString 0..1 MS
* valueString ^short = "心理諮商與評估。"
