// 待確認欄位：通報單位類別目前未納入最終欄位對應，暫不發布。
// ValueSet: TWSSReportingUnitTypeVS
// Id: twss-reporting-unit-type-vs
// Title: "TWSS-通報單位類別值集"
// Description: "個案通報 ServiceRequest 使用的通報單位類別代碼。"
// * ^version = "0.0.1"
// * ^experimental = false
// * include codes from system TWSSReportingUnitType

ValueSet: TWSSReferralAcceptanceStatusVS
Id: twss-referral-acceptance-status-vs
Title: "TWSS-轉介受理情形值集"
Description: "轉介受理 Task 輸出使用的業務結果代碼。"
* ^version = "0.0.1"
* ^experimental = false
* TWSSReferralHandlingStatus#accepted "受案"
* TWSSReferralHandlingStatus#referred-again "再轉"
* TWSSReferralHandlingStatus#not-accepted "不受案"
* TWSSReferralHandlingStatus#returned "退回"
* TWSSReferralHandlingStatus#other "其他"

ValueSet: TWSSReferralProcessingStatusVS
Id: twss-referral-processing-status-vs
Title: "TWSS-轉介處理情形值集"
Description: "轉介處理 Task 的進度狀態代碼。"
* ^version = "0.0.1"
* ^experimental = false
* TWSSReferralHandlingStatus#pending "轉介等待中"
* TWSSReferralHandlingStatus#completed "轉介完成"
* TWSSReferralHandlingStatus#failed "轉介失敗"
* TWSSReferralHandlingStatus#other "其他"

ValueSet: TWSSVisitServiceMethodVS
Id: twss-visit-service-method-vs
Title: "TWSS-訪視服務方式值集"
Description: "評估或服務接觸 Encounter 使用的服務方式代碼。"
* ^version = "0.0.1"
* ^experimental = false
* include codes from system TWSSVisitServiceMethod
