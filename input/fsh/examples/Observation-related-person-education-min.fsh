Instance: related-person-education-min
InstanceOf: RelatedPersonEducationObservationTWSSBase
Usage: #example
Title: "關係人教育資訊範例"
Description: "符合關係人教育資訊 Observation Profile 的範例。"
* status = #final
* code = TWSSObservationType#education-information "教育資訊"
* subject = Reference(pat-min)
* focus = Reference(related-min)
* component[educationLevel].code = TWSSEducationComponent#education-level "教育程度"
* component[educationLevel].valueCodeableConcept = TWSSEducationLevel#4 "高中職"
