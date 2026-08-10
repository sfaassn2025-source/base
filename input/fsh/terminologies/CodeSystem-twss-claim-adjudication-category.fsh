CodeSystem: TWSSClaimAdjudicationCategory
Id: twss-claim-adjudication-category
Title: "TWSS-補助裁決類別"
Description: "記錄補助申請審核結果中各類裁決資料的用途。"
* ^version = "0.0.1"
* ^status = #active
* ^caseSensitive = true
* ^experimental = false
* ^content = #complete
* #approved-amount "核定補助金額"
* #eligibility-denial "不符原因"
* #benefit-termination "註銷原因"
* #benefit-suspension "停發原因"

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
