CodeSystem: TWSSCaseType
Id: twss-case-type
Title: "TWSS-案件類型"
Description: "社家署個案服務案件類型代碼。"
* ^version = "0.0.1"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete
* #A "收養"
* #B "出養"
* #C "終止收養"
* #D "收出養後追"
* #0 "兒少安置及教養機構"
* #1 "寄養家庭"
* #2 "親屬安置"
* #3 "感化教育處所"
* #4 "中途學校"
* #5 "其他安置類型"
* #6 "未經安置之兒少性交易個案"
* #7 "未經安置之自立生活個案"
* #8 "其他"
* #9 "少年安置輔導之福利及教養機構（司法轉向，少事法第42條）"
* #10 "團體家庭"

ValueSet: TWSSCaseTypeVS
Id: twss-case-type-vs
Title: "TWSS-案件類型值集"
Description: "社家署個案服務案件類型代碼。"
* ^version = "0.0.1"
* ^status = #active
* ^experimental = false
* include codes from system TWSSCaseType
