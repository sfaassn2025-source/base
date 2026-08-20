Extension: TWSSReportingUnitExtension
Id: twss-reporting-unit
Title: "通報單位"
Description: "記錄個案通報的通報單位類別。"
Context: ServiceRequest
* ^version = "0.0.1"
* value[x] only CodeableConceptTW
* valueCodeableConcept MS
* valueCodeableConcept from TWSSReportingUnitVS (required)

Extension: TWSSCaseSourceExtension
Id: twss-case-source
Title: "個案來源"
Description: "記錄個案通報的個案來源。"
Context: ServiceRequest
* ^version = "0.0.1"
* value[x] only CodeableConceptTW
* valueCodeableConcept MS
* valueCodeableConcept from TWSSCaseSourceVS (required)
