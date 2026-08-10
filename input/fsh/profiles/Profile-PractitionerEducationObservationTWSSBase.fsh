Profile: PractitionerEducationObservationTWSSBase
Parent: Observation
Id: PractitionerEducationObservation-twss-base
Title: "服務人教育經歷-Observation TWSS Base"
Description: "因 TW Core IG 0.3.2 尚無針對服務人教育經歷的 Profile，故繼承原生 Observation，並於設定社福欄位後補回適用的 TW Core 0.3.2 共通交換規則。"
* ^version = "0.0.1"
* status 1..1 MS
* code = TWSSObservationType#practitioner-education "服務人教育經歷"
* code from TWSSObservationTypeVS (required)
* focus only Reference(PractitionerTWSSBase)
* focus 1..1 MS
* effective[x] MS
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #closed
* component.code from TWSSPractitionerEducationComponentVS (required)
* component contains enrollmentYear 0..1 MS and graduationSchool 0..1 MS and educationLevel 0..1 MS and major 0..1 MS and socialWelfareRelated 0..1 MS
* component[enrollmentYear].code = TWSSPractitionerEducationComponent#education-enrollment-year "入學年度"
* component[enrollmentYear].value[x] only integer
* component[enrollmentYear].valueInteger ^short = "服務人入學年度"
* component[graduationSchool].code = TWSSPractitionerEducationComponent#education-graduation-school "畢業學校名稱"
* component[graduationSchool].value[x] only string
* component[graduationSchool].valueString ^short = "服務人畢業學校名稱"
* component[educationLevel].code = http://loinc.org#91694-0 "Highest level of education of Personnel"
* component[educationLevel].value[x] only CodeableConcept
* component[educationLevel].valueCodeableConcept from TWSSPractitionerEducationLevelVS (required)
* component[educationLevel].valueCodeableConcept ^short = "服務人最高學歷"
* component[major].code = TWSSPractitionerEducationComponent#education-major "畢業科系"
* component[major].value[x] only string
* component[major].valueString ^short = "服務人畢業科系"
* component[socialWelfareRelated].code = TWSSPractitionerEducationComponent#education-social-welfare-related "是否為社福相關學歷"
* component[socialWelfareRelated].value[x] only boolean
* component[socialWelfareRelated].valueBoolean ^short = "是否為社福相關學歷"
