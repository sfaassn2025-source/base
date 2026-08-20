Instance: body-weight-min
InstanceOf: Observation
Usage: #example
Title: "個案體重範例"
Description: "依 TW Core 身體體重量測語意記錄個案體重的範例。"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs "Vital Signs"
* code = http://loinc.org#29463-7 "Body weight"
* subject = Reference(pat-min)
* effectiveDateTime = "2026-08-19T09:00:00+08:00"
* valueQuantity.value = 52.4
* valueQuantity.unit = "kg"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #kg

Instance: body-height-min
InstanceOf: Observation
Usage: #example
Title: "個案身高範例"
Description: "依 TW Core 身體身高量測語意記錄個案身高的範例。"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs "Vital Signs"
* code = http://loinc.org#8302-2 "Body height"
* subject = Reference(pat-min)
* effectiveDateTime = "2026-08-19T09:00:00+08:00"
* valueQuantity.value = 160.2
* valueQuantity.unit = "cm"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #cm
