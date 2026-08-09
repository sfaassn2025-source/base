Instance: practitioner-education-min
InstanceOf: PractitionerEducationObservationTWSSBase
Usage: #example
Title: "服務人教育經歷範例"
Description: "符合服務人教育經歷 Observation Profile 的範例。"
* status = #final
* code = TWSSObservationType#practitioner-education "服務人教育經歷"
* focus = Reference(prac-min)
* component[enrollmentYear].code = TWSSPractitionerEducationComponent#education-enrollment-year "入學年度"
* component[enrollmentYear].valueInteger = 2014
* component[graduationSchool].code = TWSSPractitionerEducationComponent#education-graduation-school "畢業學校名稱"
* component[graduationSchool].valueString = "示範大學"
* component[educationLevel].code = http://loinc.org#91694-0 "Highest level of education of Personnel"
* component[educationLevel].valueCodeableConcept = TWSSPractitionerEducationLevel#4 "大學"
* component[major].code = TWSSPractitionerEducationComponent#education-major "畢業科系"
* component[major].valueString = "社會工作學系"
* component[socialWelfareRelated].code = TWSSPractitionerEducationComponent#education-social-welfare-related "是否為社福相關學歷"
* component[socialWelfareRelated].valueBoolean = true
