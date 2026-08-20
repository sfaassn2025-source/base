Profile: MedicalRehabilitationServiceObservationTWSSBase
Parent: Observation
Id: MedicalRehabilitationServiceObservation-twss-base
Title: "醫療復健服務現況-Observation TWSS Base"
Description: "因 TW Core IG 0.3.2 尚無針對社福個案既有醫療復健服務的 Profile，故繼承原生 Observation，並補回適用的 TW Core IG 0.3.2 共通交換規則。"
* ^version = "0.0.1"
* status 1..1 MS
* code = TWSSObservationType#medical-rehabilitation-service "醫療復健服務"
* code from TWSSObservationTypeVS (required)
* subject only Reference(PatientTWSSBase)
* subject 1..1 MS
* encounter only Reference(AssessmentServiceEncounterTWSSBase)
* encounter MS
* value[x] only CodeableConceptTW
* valueCodeableConcept 1..1 MS
* valueCodeableConcept from TWSSMedicalRehabilitationServiceVS (required)
* valueCodeableConcept ^short = "醫療復健服務"

Profile: MedicalAssistanceObservationTWSSBase
Parent: Observation
Id: MedicalAssistanceObservation-twss-base
Title: "醫療協助現況-Observation TWSS Base"
Description: "因 TW Core IG 0.3.2 尚無針對社福個案既有醫療協助的 Profile，故繼承原生 Observation，並補回適用的 TW Core IG 0.3.2 共通交換規則。"
* ^version = "0.0.1"
* status 1..1 MS
* code = TWSSObservationType#medical-assistance "醫療協助"
* code from TWSSObservationTypeVS (required)
* subject only Reference(PatientTWSSBase)
* subject 1..1 MS
* encounter only Reference(AssessmentServiceEncounterTWSSBase)
* encounter MS
* value[x] only CodeableConceptTW
* valueCodeableConcept 1..1 MS
* valueCodeableConcept from TWSSMedicalAssistanceVS (required)
* valueCodeableConcept ^short = "醫療協助"
