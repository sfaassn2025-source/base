CodeSystem: TWSSNonComplianceReason
Id: twss-non-compliance-reason
Title: "TWSS-不符原因代碼系統"
Description: "TWSS 補助申請不符原因代碼。目前收錄已取得的代碼；其他不符原因可僅以文字表達。"
* ^version = "0.0.1"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete
* #01 "兒童已滿2歲"
* #04 "接受托育補助"
* #06 "正接受政府公費安置中"
* #98 "補助資格已到2歲"
* #99 "其他"

ValueSet: TWSSNonComplianceReasonVS
Id: twss-non-compliance-reason-vs
Title: "TWSS-不符原因值集"
Description: "TWSS 補助申請不符原因值集。"
* ^version = "0.0.1"
* ^status = #active
* ^experimental = false
* include codes from system TWSSNonComplianceReason
