CodeSystem: TWSSCaseServiceType
Id: twss-case-service-type
Title: "TWSS-個案服務別"
Description: "社家署個案服務所屬系統或服務領域代碼。"
* ^version = "0.0.1"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete
* #CYPT "全國兒童少年安置及追蹤個案管理系統"
* #VFS "脆弱家庭個案管理平台"
* #NCWIS "托育服務整合資訊系統"
* #CECM "發展遲緩兒童通報暨個案管理整合系統"
* #CAMIS "兒童及少年收出養服務個案管理暨媒合資訊系統"
* #RDS "全國身心障礙福利資訊整合平臺"
* #CMPD "身心障礙個案管理服務系統"
* #ICTP "跨部會身心障礙者生涯轉銜資訊平臺"
* #ZIP "獨居老人數位作業平台"
* #CCARE "社區照顧關懷據點服務入口網"

ValueSet: TWSSCaseServiceTypeVS
Id: twss-case-service-type-vs
Title: "TWSS-個案服務別值集"
Description: "社家署個案服務所屬系統或服務領域代碼。"
* ^version = "0.0.1"
* ^status = #active
* ^experimental = false
* include codes from system TWSSCaseServiceType
