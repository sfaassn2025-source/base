CodeSystem: TWSSDisabilitySeverityLevel
Id: twss-disability-severity-level
Title: "TWSS-障礙程度等級"
Description: "個案服務評估使用的障礙程度等級代碼。"
* ^version = "0.0.1"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete
* #1 "輕度"
* #2 "中度"
* #3 "重度"
* #4 "極重度"

ValueSet: TWSSDisabilitySeverityLevelVS
Id: twss-disability-severity-level-vs
Title: "TWSS-障礙程度等級值集"
Description: "個案服務評估使用的障礙程度等級代碼。"
* ^version = "0.0.1"
* ^status = #active
* ^experimental = false
* include codes from system TWSSDisabilitySeverityLevel
