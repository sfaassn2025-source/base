Profile: OrganizationAccreditationObservationTWSSBase
Parent: Observation
Id: OrganizationAccreditationObservation-twss-base
Title: "機構評鑑結果-Observation TWSS Base"
Description: "機構評鑑等級 Observation Profile。"
* ^version = "0.0.1"
* status 1..1 MS
* code = TWSSObservationType#organization-accreditation-level "機構評鑑等級"
* code from TWSSObservationTypeVS (required)
* subject 0..0
* focus only Reference(OrganizationTWSSBase)
* focus 1..1 MS
* value[x] only CodeableConcept
* valueCodeableConcept 1..1 MS
* valueCodeableConcept from TWSSOrganizationAccreditationLevelVS (required)
