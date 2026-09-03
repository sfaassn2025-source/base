Profile: ServiceRequestCaseReportTWSSBase
Parent: ServiceRequestTWSSBase
Id: ServiceRequest-case-report-twss-base
Title: "個案通報-ServiceRequest TWSS Base"
Description: "個案通報 ServiceRequest Profile 表達外部人員或單位提出的個案受理或評估請求。"
* ^version = "0.0.1"
* category = http://snomed.info/sct#185087000 "Notifications"
* category from TWSSServiceRequestCategoryVS (required)
* category ^short = "個案通報類型"
* code = http://snomed.info/sct#710824005 "Assessment of health and social care needs"
* code from TWSSCaseReportServiceRequestCodeVS (required)
* code ^short = "個案通報請求項目"
* orderDetail MS
* orderDetail ^short = "通報所涉服務類別。"
* extension contains
    TWSSIsReferralCaseExtension named isReferralCase 0..1 MS and
    TWSSCaseReportTypeExtension named reportType 0..1 MS and
    TWSSReportingUnitExtension named reportingUnit 0..1 MS and
    TWSSCaseSourceExtension named caseSource 0..1 MS
* extension[isReferralCase] ^short = "是否為轉介案件"
* extension[reportType] ^short = "通報類型"
* extension[reportingUnit] ^short = "通報單位及管道"
* extension[caseSource] ^short = "個案來源"
* identifier MS
* identifier.use MS
* identifier.type MS
* identifier.system MS
* identifier.value MS
* authoredOn 1..1 MS
* authoredOn ^short = "通報時間"
* requester MS
* requester ^short = "通報者或通報單位"
* performer MS
* performer ^short = "受理通報的機構或人員"
* reasonCode MS
