CodeSystem: TWSSReportingUnitType
Id: twss-reporting-unit-type
Title: "TWSS 通報單位類別"
Description: "提出個案通報之人員、單位或系統類別。"
* ^version = "0.0.1"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete
* #1 "家長或監護者"
* #2 "社會福利機構-托嬰中心"
* #3 "社會福利機構-早期療育中心"
* #4 "社會福利機構-社福機構"
* #5 "幼教機構-幼兒園"
* #6 "幼教機構-學前特教班"
* #7 "醫療機構-醫療院所"
* #8 "醫療機構-衛生所"
* #9 "國健署-兒童健康管理系統"
* #10 "國健署-聽損兒童"
* #11 "國健署-聯合評估中心"
* #12 "前台通報"
* #13 "其他"
* #14 "居家托育人員"
* #15 "寄養家庭照顧者"
* #16 "教育機構（幼兒園、學前特教班）"

CodeSystem: TWSSReferralHandlingStatus
Id: twss-referral-handling-status
Title: "TWSS 轉介處理狀態"
Description: "轉介接收與處理流程使用的業務狀態代碼。"
* ^version = "0.0.1"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete
* #accepted "受案"
* #referred-again "再轉"
* #not-accepted "不受案"
* #returned "退回"
* #pending "轉介等待中"
* #completed "轉介完成"
* #failed "轉介失敗"
* #other "其他"

CodeSystem: TWSSVisitServiceMethod
Id: twss-visit-service-method
Title: "TWSS 訪視服務方式"
Description: "個案服務評估或服務接觸的方式。"
* ^version = "0.0.1"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete
* #A "電訪家庭"
* #B "面訪家庭"
* #C "陪同服務"
* #D "網絡聯繫"
* #E "案家來電"
* #F "校園訪視"
* #G "面談"
* #H "信箱回覆"
* #I "公文回覆"
* #J "資源拜訪"
* #K "機構訪視"
* #Z "其他"
