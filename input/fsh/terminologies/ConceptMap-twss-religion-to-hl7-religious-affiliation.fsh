Instance: twss-religion-to-hl7-religious-affiliation
InstanceOf: ConceptMap
Usage: #definition
Title: "TWSS-宗教信仰對應 HL7 宗教信仰"
Description: "TWSS 宗教信仰代碼與可明確對應之 HL7 v3 ReligiousAffiliation 代碼對應。未明確對應的 TWSS 代碼維持本地使用。"
* name = "TWSSReligionToHL7ReligiousAffiliation"
* version = "0.0.1"
* status = #draft
* experimental = false
* targetCanonical = "http://terminology.hl7.org/ValueSet/v3-ReligiousAffiliation"
* group[0].source = "https://sfaa.gov.tw/base/CodeSystem/twss-religion"
* group[0].target = "http://terminology.hl7.org/CodeSystem/v3-ReligiousAffiliation"
* group[0].element[0].code = #A
* group[0].element[0].display = "佛教"
* group[0].element[0].target[0].code = #1029
* group[0].element[0].target[0].display = "Mahayana"
* group[0].element[0].target[0].equivalence = #equivalent
* group[0].element[1].code = #B
* group[0].element[1].display = "道教"
* group[0].element[1].target[0].code = #1050
* group[0].element[1].target[0].display = "Taoism"
* group[0].element[1].target[0].equivalence = #equivalent
* group[0].element[2].code = #C
* group[0].element[2].display = "基督教"
* group[0].element[2].target[0].code = #1077
* group[0].element[2].target[0].display = "Protestant"
* group[0].element[2].target[0].equivalence = #equivalent
* group[0].element[3].code = #D
* group[0].element[3].display = "天主教"
* group[0].element[3].target[0].code = #1041
* group[0].element[3].target[0].display = "Roman Catholic Church"
* group[0].element[3].target[0].equivalence = #equivalent
* group[0].element[4].code = #F
* group[0].element[4].display = "回教"
* group[0].element[4].target[0].code = #1023
* group[0].element[4].target[0].display = "Islam"
* group[0].element[4].target[0].equivalence = #equivalent
* group[0].element[5].code = #G
* group[0].element[5].display = "摩門教"
* group[0].element[5].target[0].code = #1027
* group[0].element[5].target[0].display = "Latter Day Saints"
* group[0].element[5].target[0].equivalence = #equivalent
