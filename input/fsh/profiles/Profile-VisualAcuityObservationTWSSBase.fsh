Profile: VisualAcuityObservationTWSSBase
Parent: Observation
Id: VisualAcuityObservation-twss-base
Title: "視力檢查-Observation TWSS Base"
Description: "以 LOINC 視力檢查 panel 記錄左右眼矯正與未矯正視力。"
* ^version = "0.0.1"
* status 1..1 MS
* code = http://loinc.org#98497-1 "Visual acuity panel"
* subject only Reference(PatientTWSSBase)
* subject 1..1 MS
* value[x] 0..0
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #closed
* component contains
    correctedVisionLeft 0..1 MS and
    visionLeft 0..1 MS and
    correctedVisionRight 0..1 MS and
    visionRight 0..1 MS
* component[correctedVisionLeft].code = http://loinc.org#65897-1 "Visual acuity best corrected Left eye"
* component[correctedVisionLeft].value[x] only Quantity
* component[correctedVisionLeft].valueQuantity.value 1..1 MS
* component[visionLeft].code = http://loinc.org#98498-9 "Visual acuity uncorrected Left eye"
* component[visionLeft].value[x] only Quantity
* component[visionLeft].valueQuantity.value 1..1 MS
* component[correctedVisionRight].code = http://loinc.org#65893-0 "Visual acuity best corrected Right eye"
* component[correctedVisionRight].value[x] only Quantity
* component[correctedVisionRight].valueQuantity.value 1..1 MS
* component[visionRight].code = http://loinc.org#98499-7 "Visual acuity uncorrected Right eye"
* component[visionRight].value[x] only Quantity
* component[visionRight].valueQuantity.value 1..1 MS
