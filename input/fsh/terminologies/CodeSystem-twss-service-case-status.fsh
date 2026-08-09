CodeSystem: TWSSServiceCaseStatus
Id: twss-service-case-status
Title: "TWSS 服務案件狀態"
Description: "個案受理與評估 Task 使用的詳細服務案件狀態代碼。"
* ^version = "0.0.1"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete
* #1 "待派案"
* #2 "待指派社工"
* #3 "處理中"
* #4 "待新增"
* #5 "後追"
* #6 "評估中個案"
* #7 "評估中個案開案審查中"
* #8 "督導審核中"
* #9 "開案審查中"
* #10 "暫存"
* #11 "未通過"
* #12 "提供服務"
* #13 "已完成/結案"
* #14 "不開案"

ValueSet: TWSSServiceCaseStatusVS
Id: twss-service-case-status-vs
Title: "TWSS 服務案件狀態值集"
Description: "個案受理與評估 Task 使用的詳細服務案件狀態代碼。"
* ^version = "0.0.1"
* ^status = #active
* ^experimental = false
* include codes from system TWSSServiceCaseStatus
