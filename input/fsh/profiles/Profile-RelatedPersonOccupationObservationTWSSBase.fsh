Profile: RelatedPersonOccupationObservationTWSSBase
Parent: Observation
Id: RelatedPersonOccupationObservation-twss-base
Title: "關係人職業-Observation TWSS Base"
Description: "以職業觀察記錄關係人的職業資訊。"
* ^version = "0.0.1"
* status 1..1 MS
* category = http://terminology.hl7.org/CodeSystem/observation-category#social-history "Social History"
* code = http://loinc.org#11341-5 "History of occupation"
* subject only Reference(PatientTWSSBase)
* subject 1..1 MS
* focus only Reference(RelatedPersonTWSSBase)
* focus 1..1 MS
* value[x] only CodeableConcept
* valueCodeableConcept 1..1 MS
* valueCodeableConcept from https://twcore.mohw.gov.tw/ig/twcore/ValueSet/occupation-lia-roc-tw (extensible)
* valueCodeableConcept ^short = "關係人職業"
