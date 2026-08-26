Profile: QuestionnaireResponseTWSSBase
Parent: QuestionnaireResponse
Id: QuestionnaireResponse-twss-base
Title: "社福表單回覆-QuestionnaireResponse TWSS Base"
Description: "因 TW Core 0.3.2 的 QuestionnaireResponse Profile 限制與本 IG 所需的 Reference target 不完全相容，故繼承原生 QuestionnaireResponse，並保留相容的 TW Core 0.3.2 交換規則。"
* ^version = "0.0.1"

* questionnaire 1..1 MS
* questionnaire ^type.targetProfile[0] = "https://sfaa.gov.tw/base/StructureDefinition/Questionnaire-twss-base"
* questionnaire ^short = "本 IG 社福 Questionnaire 的 canonical URL"
* status 1..1 MS
* subject only Reference(PatientTWSSBase or RelatedPersonTWSSBase or PractitionerTWSSBase or PractitionerRoleTWSSBase or OrganizationTWSSBase)
* subject 1..1 MS
* basedOn only Reference(ServiceRequestCaseReportTWSSBase or ServiceRequestReferralTWSSBase or ServiceRequestTransitionTWSSBase or CarePlanTWSSBase)
* basedOn MS
* authored 1..1 MS
* author MS
* source only Reference(PatientTWSSBase or RelatedPersonTWSSBase or PractitionerTWSSBase or PractitionerRoleTWSSBase)
* source MS
* encounter only Reference(AssessmentServiceEncounterTWSSBase or ActualServiceEncounterTWSSBase or InterviewEncounterTWSSBase or MeetingEncounterTWSSBase or PlacementEncounterTWSSBase)
* encounter MS
* item MS

Profile: AssessmentQuestionnaireResponseTWSSBase
Parent: QuestionnaireResponseTWSSBase
Id: AssessmentQuestionnaireResponse-twss-base
Title: "個案服務評估回覆-QuestionnaireResponse TWSS Base"
Description: "用於個案通報後，在個案服務評估 Encounter 中完成的 QuestionnaireResponse。"
* ^version = "0.0.1"
* subject only Reference(PatientTWSSBase)
* basedOn only Reference(ServiceRequestCaseReportTWSSBase)
* basedOn 1..1 MS
* encounter only Reference(AssessmentServiceEncounterTWSSBase)
* encounter 1..1 MS
