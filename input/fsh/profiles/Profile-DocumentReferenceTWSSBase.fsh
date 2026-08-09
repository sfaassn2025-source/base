Profile: DocumentReferenceTWSSBase
Parent: DocumentReference
Id: DocumentReference-twss-base
Title: "共用公文-DocumentReference TWSS Base"
Description: "因 TW Core IG 0.3.2 尚無針對社福業務公文的 Profile，故繼承原生 DocumentReference，並於設定社福欄位後補回適用的 TW Core 0.3.2 共通交換規則。"
* ^version = "0.0.1"

* status 1..1 MS
* masterIdentifier 0..1 MS
* masterIdentifier ^short = "公文文號"
* type 0..1 MS
* type ^short = "公文類型"
* subject only Reference(PatientTWSSBase)
* subject MS
* date MS
* content 1..* MS
* content.attachment 1..1 MS
* content.attachment.creation 0..1 MS
* content.attachment.creation ^short = "核准文號日期或公文日期"
* context.related only Reference(ServiceRequestTWSSBase or ClaimTWSSBase or ClaimResponseTWSSBase or AssessmentReviewTaskTWSSBase or ReferralAcceptanceTaskTWSSBase or ReferralHandlingTaskTWSSBase or AssessmentServiceEncounterTWSSBase or EpisodeOfCareTWSSBase or CarePlanTWSSBase or QuestionnaireResponseTWSSBase)
* context.related MS
