CodeSystem: TWSSApplicationReviewStatus
Id: twss-application-review-status
Title: "TWSS-申請審查狀態代碼系統"
Description: "TWSS 補助申請審查狀態代碼。"
* ^version = "0.0.1"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete
* #00 "暫存中"
* #10 "申請"
* #11 "待補件"
* #12 "查調中"
* #13 "待核定"
* #14 "取回/刪除"
* #20 "核定"
* #21 "初審"
* #22 "複審"
* #30 "退件"
* #31 "申復中"
* #32 "不受理"
* #33 "逾期不補件"
* #40 "遷出"
* #50 "資格停發"
* #60 "核停"
* #70 "結案"
* #80 "審核錯誤"
* #90 "其他"

ValueSet: TWSSApplicationReviewStatusVS
Id: twss-application-review-status-vs
Title: "TWSS-申請審查狀態值集"
Description: "TWSS 補助申請審查狀態值集。"
* ^version = "0.0.1"
* ^status = #active
* ^experimental = false
* include codes from system TWSSApplicationReviewStatus
