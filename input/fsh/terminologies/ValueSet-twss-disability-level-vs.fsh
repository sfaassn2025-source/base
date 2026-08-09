ValueSet: TWSSDisabilityLevelVS
Id: twss-disability-level-vs
Title: "FHIR Condition Severity + TWSS 障礙等級 ValueSet"
Description: "身心障礙障礙等級代碼值集；輕度、中度、重度優先使用 FHIR Condition severity 原值集之 SNOMED CT 代碼，其餘 TWSS 業務值以本 IG 補充。"
* ^version = "0.0.1"
* ^experimental = false
* include codes from valueset http://hl7.org/fhir/ValueSet/condition-severity
* TWSSDisabilityLevel#0 "無"
* TWSSDisabilityLevel#4 "極重度"
* TWSSDisabilityLevel#5 "重大傷病卡"
* TWSSDisabilityLevel#9 "無資料"
