Profile: EducationObservationTWSSBase
Parent: Observation
Id: EducationObservation-twss-base
Title: "教育資訊-Observation TWSS Base"
Description: "教育資訊 Observation Base Profile。"
* ^version = "0.0.1"
* status 1..1 MS
* code = TWSSObservationType#education-information "教育資訊"
* code from TWSSObservationTypeVS (required)
* subject only Reference(PatientTWSSBase)
* subject 0..1 MS
* focus 0..1 MS
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #closed
* component.code from TWSSEducationComponentVS (required)
* component contains
    schoolingStatus 0..* MS and
    enrollmentYear 0..1 MS and
    schoolName 0..* MS and
    gradeLevel 0..1 MS and
    major 0..1 MS and
    graduated 0..1 MS and
    graduationYear 0..1 MS and
    educationLevel 0..1 MS and
    relatedMajorGraduate 0..1 MS and
    socialWelfareRelated 0..1 MS
* component[schoolingStatus].code = TWSSEducationComponent#schooling-status "就學現況"
* component[schoolingStatus].value[x] only CodeableConcept
* component[schoolingStatus].valueCodeableConcept from TWSSSchoolingStatusVS (required)
* component[enrollmentYear].code = TWSSEducationComponent#enrollment-year "入學年度"
* component[enrollmentYear].value[x] only integer
* component[schoolName].code = TWSSEducationComponent#school-name "就讀學校名稱"
* component[schoolName].value[x] only string
* component[gradeLevel].code = TWSSEducationComponent#grade-level "年級別"
* component[gradeLevel].value[x] only string
* component[major].code = TWSSEducationComponent#major "就讀或畢業科系"
* component[major].value[x] only string
* component[graduated].code = TWSSEducationComponent#graduated "是否畢業"
* component[graduated].value[x] only boolean
* component[graduationYear].code = TWSSEducationComponent#graduation-year "畢業年度"
* component[graduationYear].value[x] only Quantity
* component[educationLevel].code = TWSSEducationComponent#education-level "教育程度"
* component[educationLevel].value[x] only CodeableConcept
* component[educationLevel].valueCodeableConcept from TWSSEducationLevelVS (required)
* component[relatedMajorGraduate].code = TWSSEducationComponent#related-major-graduate "是否為相關科系畢業"
* component[relatedMajorGraduate].value[x] only boolean
* component[socialWelfareRelated].code = TWSSEducationComponent#social-welfare-related "是否為社福相關學歷"
* component[socialWelfareRelated].value[x] only boolean
