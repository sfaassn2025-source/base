CodeSystem: TWSSClaimAdjudicationCategory
Id: twss-claim-adjudication-category
Title: "TWSS-補助裁決類別"
Description: "記錄補助申請審核結果中各類裁決資料的用途。"
* ^version = "0.0.1"
* ^status = #active
* ^caseSensitive = true
* ^experimental = false
* ^content = #complete
* #eligibility-denial "不符原因"
* #benefit-termination "註銷原因"
* #benefit-suspension "停發原因"

ValueSet: TWSSClaimAdjudicationCategoryVS
Id: twss-claim-adjudication-category-vs
Title: "TWSS-補助裁決類別值集"
Description: "TWSS Base 補助審核與核付結果使用的裁決類別。"
* ^version = "0.0.1"
* ^status = #active
* ^experimental = false
* include http://terminology.hl7.org/CodeSystem/adjudication#benefit
* include codes from system TWSSClaimAdjudicationCategory

CodeSystem: TWSSSubsidyApprovalDecision
Id: twss-subsidy-approval-decision
Title: "TWSS-補助核定結果"
Description: "TWSS Base 補助申請通過核定時使用的正式結果代碼。"
* ^version = "0.0.1"
* ^status = #active
* ^caseSensitive = true
* ^experimental = false
* ^content = #complete
* #approved "通過"

ValueSet: TWSSSubsidyApprovalDecisionVS
Id: twss-subsidy-approval-decision-vs
Title: "TWSS-補助核定結果值集"
Description: "TWSS Base 補助申請通過核定時使用的正式結果代碼。"
* ^version = "0.0.1"
* ^status = #active
* ^experimental = false
* include codes from system TWSSSubsidyApprovalDecision

CodeSystem: TWSSPaymentStatus
Id: twss-payment-status
Title: "TWSS-補助撥款狀況"
Description: "記錄補助款項的撥款處理狀況。"
* ^version = "0.0.1"
* ^status = #active
* ^caseSensitive = true
* ^experimental = false
* ^content = #complete
* #0 "未撥款"
* #1 "已出帳"
* #2 "已銷帳"

ValueSet: TWSSPaymentStatusVS
Id: twss-payment-status-vs
Title: "TWSS-補助撥款狀況值集"
Description: "TWSS 補助撥款狀況使用的代碼。"
* ^version = "0.0.1"
* ^status = #active
* ^experimental = false
* include codes from system TWSSPaymentStatus
