CodeSystem: TWSSSubsidyServiceType
Id: twss-subsidy-service-type
Title: "TWSS-申請補助別"
Description: "社家署補助申請所屬系統或補助類別代碼。"
* ^version = "0.0.1"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete
* #CRA "未滿2歲兒童育兒津貼資訊系統"
* #SWIS "特殊境遇家庭暨兒童少年福利資訊系統"
* #NCWIS "托育服務整合資訊系統"

ValueSet: TWSSSubsidyServiceTypeVS
Id: twss-subsidy-service-type-vs
Title: "TWSS-申請補助別值集"
Description: "社家署補助申請所屬系統或補助類別代碼。"
* ^version = "0.0.1"
* ^status = #active
* ^experimental = false
* include codes from system TWSSSubsidyServiceType
