Instance: visual-acuity-min
InstanceOf: VisualAcuityObservationTWSSBase
Usage: #example
Title: "視力檢查範例"
Description: "以 LOINC 視力檢查 panel 記錄左右眼矯正與未矯正視力的範例。"
* status = #final
* code = http://loinc.org#98497-1 "Visual acuity panel"
* subject = Reference(pat-min)
* component[correctedVisionLeft].code = http://loinc.org#65897-1 "Visual acuity best corrected Left eye"
* component[correctedVisionLeft].valueQuantity.value = 1.0
* component[visionLeft].code = http://loinc.org#98498-9 "Visual acuity uncorrected Left eye"
* component[visionLeft].valueQuantity.value = 0.8
* component[correctedVisionRight].code = http://loinc.org#65893-0 "Visual acuity best corrected Right eye"
* component[correctedVisionRight].valueQuantity.value = 1.0
* component[visionRight].code = http://loinc.org#98499-7 "Visual acuity uncorrected Right eye"
* component[visionRight].valueQuantity.value = 0.8
