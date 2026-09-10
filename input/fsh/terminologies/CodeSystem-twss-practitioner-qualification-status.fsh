CodeSystem: TWSSPractitionerQualificationStatusCS
Id: twss-practitioner-qualification-status
Title: "TWSS-服務人資格狀態代碼系統"
Description: "FHIR R4 實作服務人教育資格狀態所使用的代碼；代碼及其業務使用方式參考 HL7 FHIR R6 qualification-status。"
* ^version = "0.0.1"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete
* #active "已畢業"
* #suspended "未畢業"

ValueSet: TWSSPractitionerQualificationStatusVS
Id: twss-practitioner-qualification-status-vs
Title: "TWSS-服務人資格狀態值集"
Description: "服務人教育資格狀態使用的代碼。"
* ^version = "0.0.1"
* ^status = #active
* ^experimental = false
* include codes from system TWSSPractitionerQualificationStatusCS
