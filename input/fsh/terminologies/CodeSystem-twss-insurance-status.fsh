CodeSystem: TWSSInsuranceStatus
Id: twss-insurance-status
Title: "TWSS-保險狀況"
Description: "個案服務評估使用的保險狀況代碼。"
* ^version = "0.0.1"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete
* #1 "勞工保險"
* #2 "公教人員保險"
* #3 "退休人員保險"
* #4 "農漁民健康保險"
* #5 "軍人保險"
* #6 "全民健康保險"
* #7 "無"
* #8 "國民年金保險"
* #9 "低收入戶健保補助（福保）"
* #10 "學生團體平安保險"
* #11 "商業保險"
* #12 "團體傷害險"
* #99 "其他（含不詳）"

ValueSet: TWSSInsuranceStatusVS
Id: twss-insurance-status-vs
Title: "TWSS-保險狀況值集"
Description: "個案服務評估使用的保險狀況代碼。"
* ^version = "0.0.1"
* ^status = #active
* ^experimental = false
* include codes from system TWSSInsuranceStatus
