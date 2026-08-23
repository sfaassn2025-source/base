Profile: ServiceRequestReferralTWSSBase
Parent: ServiceRequestTWSSBase
Id: ServiceRequest-referral-twss-base
Title: "個案轉介-ServiceRequest TWSS Base"
Description: "個案轉介 ServiceRequest Profile 表達將個案轉請其他單位或人員處理的請求。"
* ^version = "0.0.1"
* category = http://snomed.info/sct#306206005 "Referral to service"
* category from TWSSServiceRequestCategoryVS (required)
* category ^short = "個案轉介類型"
* code = http://snomed.info/sct#3457005 "Patient referral"
* code from TWSSReferralServiceRequestCodeVS (required)
* code ^short = "個案轉介請求項目"
* orderDetail MS
* orderDetail ^short = "轉介所涉服務或補助類別。"
* identifier MS
* identifier.use MS
* identifier.type MS
* identifier.system MS
* identifier.value MS
* authoredOn 1..1 MS
* authoredOn ^short = "轉介日期"
* basedOn only Reference(ServiceRequestCaseReportTWSSBase or ServiceRequestTransitionTWSSBase or CarePlanTWSSBase)
* supportingInfo only Reference(AssessmentServiceEncounterTWSSBase or ActualServiceEncounterTWSSBase or InterviewEncounterTWSSBase or MeetingEncounterTWSSBase or PlacementEncounterTWSSBase or QuestionnaireResponseTWSSBase or DocumentReferenceTWSSBase)
* supportingInfo ^short = "轉介依據；可參照評估、服務或追蹤紀錄，以及相關評估回覆或文件。"
* basedOn ^short = "轉介請求的來源；通報衍生時參照通報 ServiceRequest，轉銜或服務規劃衍生時參照其 ServiceRequest 或 CarePlan。"
* requester 1..1 MS
* requester ^short = "轉介單位或人員"
* performer 1..1 MS
* performer ^short = "受轉介單位或人員"
* reasonCode MS
* reasonCode ^short = "轉介原因"
