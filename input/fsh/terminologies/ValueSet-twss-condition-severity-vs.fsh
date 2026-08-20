ValueSet: TWSSConditionSeverityVS
Id: twss-condition-severity-vs
Title: "TWSS-FHIR Condition Severity與健康及障礙分級值集"
Description: "Condition 嚴重程度值集；優先使用 FHIR Condition severity 原值集之 SNOMED CT 代碼，並納入社家署健康狀況與障礙分級代碼。"
* ^version = "0.0.1"
* ^experimental = false
* include codes from valueset http://hl7.org/fhir/ValueSet/condition-severity
* TWSSDisabilityLevel#0 "無"
* TWSSDisabilityLevel#4 "極重度"
* TWSSDisabilityLevel#5 "重大傷病卡"
* TWSSDisabilityLevel#9 "無資料"
* include codes from system TWSSHealthStatusLevel
