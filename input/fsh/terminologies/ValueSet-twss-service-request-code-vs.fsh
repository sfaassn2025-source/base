ValueSet: TWSSServiceRequestCodeVS
Id: twss-service-request-code-vs
Title: "TWSS 申請或服務請求項目 ValueSet"
Description: "TWSS 申請、服務或補助項目的主要代碼。"
* ^version = "0.0.1"
* ^experimental = false
* include codes from system TWSSEpisodeOfCareType

ValueSet: TWSSServiceRequestCategoryVS
Id: twss-service-request-category-vs
Title: "TWSS 通報與轉介 ServiceRequest 類型值集"
Description: "TWSS 個案通報與個案轉介 ServiceRequest 的類型代碼。"
* ^version = "0.0.1"
* ^experimental = false
* http://snomed.info/sct#185087000 "Notifications"
* http://snomed.info/sct#306206005 "Referral to service"

ValueSet: TWSSCaseReportServiceRequestCodeVS
Id: twss-case-report-service-request-code-vs
Title: "TWSS 個案通報 ServiceRequest 項目值集"
Description: "TWSS 個案通報 ServiceRequest 的請求項目代碼。"
* ^version = "0.0.1"
* ^experimental = false
* http://snomed.info/sct#710824005 "Assessment of health and social care needs"

ValueSet: TWSSReferralServiceRequestCodeVS
Id: twss-referral-service-request-code-vs
Title: "TWSS 個案轉介 ServiceRequest 項目值集"
Description: "TWSS 個案轉介 ServiceRequest 的請求項目代碼。"
* ^version = "0.0.1"
* ^experimental = false
* http://snomed.info/sct#3457005 "Patient referral"
