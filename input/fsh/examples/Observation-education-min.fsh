Instance: education-min
InstanceOf: EducationObservationTWSSBase
Usage: #example
Title: "個案教育資訊範例"
Description: "符合教育資訊 Observation Base Profile 的個案教育資訊範例。"
* status = #final
* code = TWSSObservationType#education-information "教育資訊"
* subject = Reference(pat-min)
* component[schoolingStatus].code = TWSSEducationComponent#schooling-status "就學現況"
* component[schoolingStatus].valueCodeableConcept = TWSSSchoolingStatus#2 "就學中"
* component[schoolName].code = TWSSEducationComponent#school-name "就讀學校名稱"
* component[schoolName].valueString = "示範國民中學"
* component[gradeLevel].code = TWSSEducationComponent#grade-level "年級別"
* component[gradeLevel].valueString = "八年級"
* component[educationLevel].code = TWSSEducationComponent#education-level "教育程度"
* component[educationLevel].valueCodeableConcept = TWSSEducationLevel#3 "國中"
