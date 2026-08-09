ValueSet: TWSSConditionSeverityVS
Id: twss-condition-severity-vs
Title: "FHIR Condition Severity + TWSS 健康與障礙分級 ValueSet"
Description: "Condition 嚴重程度值集；優先使用 FHIR Condition severity 原值集之 SNOMED CT 代碼，並納入社家署健康狀況與障礙分級代碼。"
* ^version = "0.0.1"
* ^experimental = false
* include codes from valueset http://hl7.org/fhir/ValueSet/condition-severity
* include codes from system TWSSDisabilityLevel
* include codes from system TWSSHealthStatusLevel
