CodeSystem: TWSSMaritalStatusSupplement
Id: twss-marital-status-supplement
Title: "TWSS-婚姻狀態補充代碼系統"
Description: "補充 FHIR 原生婚姻狀態值集無法完整表達的社政婚姻、同居及分居狀態。"
* ^version = "0.0.1"
* ^status = #draft
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete
* #married-cohabiting "已婚同居"
* #married-separated "已婚分居"
* #unmarried-cohabiting "未婚同居"
* #unmarried-separated "未婚分居"
* #divorced-cohabiting "離婚同居"
* #divorced-separated "離婚分居"
* #widowed-husband-deceased "鰥居（妻亡）"
* #widowed-wife-deceased "寡居（夫亡）"
* #other "其他"

ValueSet: TWSSMaritalStatusVS
Id: twss-marital-status-vs
Title: "TWSS-婚姻狀態值集"
Description: "由 FHIR 原生婚姻狀態值集及 TWSS 婚姻狀態補充代碼組成。"
* ^version = "0.0.1"
* ^status = #draft
* ^experimental = false
* include codes from valueset http://hl7.org/fhir/ValueSet/marital-status
* include codes from system TWSSMaritalStatusSupplement
