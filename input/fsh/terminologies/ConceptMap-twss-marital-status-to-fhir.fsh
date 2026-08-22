Instance: twss-marital-status-to-fhir
InstanceOf: ConceptMap
Usage: #definition
Title: "TWSS 婚姻狀態對應 FHIR 婚姻狀態"
Description: "TWSS 婚姻狀態補充代碼與 FHIR 原生婚姻狀態代碼之對應。"
* name = "TWSSMaritalStatusToFHIRMaritalStatus"
* version = "0.0.1"
* status = #draft
* experimental = false
* targetCanonical = "http://hl7.org/fhir/ValueSet/marital-status"
* group[0].source = "https://sfaa.gov.tw/base/CodeSystem/twss-marital-status-supplement"
* group[0].target = "http://terminology.hl7.org/CodeSystem/v3-MaritalStatus"
* group[0].element[0].code = #married-cohabiting
* group[0].element[0].display = "已婚同居"
* group[0].element[0].target[0].code = #M
* group[0].element[0].target[0].display = "Married"
* group[0].element[0].target[0].equivalence = #wider
* group[0].element[1].code = #married-separated
* group[0].element[1].display = "已婚分居"
* group[0].element[1].target[0].code = #M
* group[0].element[1].target[0].display = "Married"
* group[0].element[1].target[0].equivalence = #wider
* group[0].element[2].code = #unmarried-cohabiting
* group[0].element[2].display = "未婚同居"
* group[0].element[2].target[0].code = #S
* group[0].element[2].target[0].display = "Never Married"
* group[0].element[2].target[0].equivalence = #wider
* group[0].element[3].code = #unmarried-separated
* group[0].element[3].display = "未婚分居"
* group[0].element[3].target[0].code = #S
* group[0].element[3].target[0].display = "Never Married"
* group[0].element[3].target[0].equivalence = #wider
* group[0].element[4].code = #divorced-cohabiting
* group[0].element[4].display = "離婚同居"
* group[0].element[4].target[0].code = #D
* group[0].element[4].target[0].display = "Divorced"
* group[0].element[4].target[0].equivalence = #wider
* group[0].element[5].code = #divorced-separated
* group[0].element[5].display = "離婚分居"
* group[0].element[5].target[0].code = #D
* group[0].element[5].target[0].display = "Divorced"
* group[0].element[5].target[0].equivalence = #wider
* group[0].element[6].code = #widowed-husband-deceased
* group[0].element[6].display = "鰥居（妻亡）"
* group[0].element[6].target[0].code = #W
* group[0].element[6].target[0].display = "Widowed"
* group[0].element[6].target[0].equivalence = #wider
* group[0].element[7].code = #widowed-wife-deceased
* group[0].element[7].display = "寡居（夫亡）"
* group[0].element[7].target[0].code = #W
* group[0].element[7].target[0].display = "Widowed"
* group[0].element[7].target[0].equivalence = #wider
