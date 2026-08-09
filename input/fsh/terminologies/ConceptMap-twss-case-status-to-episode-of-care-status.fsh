Instance: twss-case-status-to-episode-of-care-status
InstanceOf: ConceptMap
Usage: #definition
Title: "TWSS 個案案件狀態對應 FHIR EpisodeOfCare Status"
Description: "TWSS 個案案件狀態代碼系統與 FHIR episode-of-care-status 代碼系統之對應。"
* name = "TWSSCaseStatusToEpisodeOfCareStatus"
* version = "0.0.1"
* status = #draft
* experimental = false
* targetCanonical = "http://hl7.org/fhir/ValueSet/episode-of-care-status"
* group[0].source = "https://sfaa.gov.tw/base/CodeSystem/twss-case-status"
* group[0].target = "http://hl7.org/fhir/episode-of-care-status"
* group[0].element[0].code = #B
* group[0].element[0].display = "處遇中"
* group[0].element[0].target[0].code = #active
* group[0].element[0].target[0].display = "Active"
* group[0].element[0].target[0].equivalence = #equivalent
* group[0].element[1].code = #C
* group[0].element[1].display = "已結案"
* group[0].element[1].target[0].code = #finished
* group[0].element[1].target[0].display = "Finished"
* group[0].element[1].target[0].equivalence = #equivalent
