Profile: AssessmentReviewTaskTWSSBase
Parent: Task
Id: AssessmentReviewTask-twss-base
Title: "個案服務評估審核-Task TWSS Base"
Description: "因 TW Core IG 0.3.2 尚無針對個案服務評估審核的 Task Profile，故繼承原生 Task，並於設定社福欄位後補回適用的 TW Core 0.3.2 共通交換規則。"
* ^version = "0.1.0"

* identifier MS
* identifier ^short = "核定文號"
* status 1..1 MS
* authoredOn 0..1 MS
* authoredOn ^short = "送審日期"
* lastModified MS
* lastModified ^short = "審核日期"
* statusReason MS
* businessStatus MS
* businessStatus ^short = "審核工作狀態"
* description 1..1 MS
* for only Reference(PatientTWSSBase)
* for 1..1 MS
* focus only Reference(ServiceRequestCaseReportTWSSBase)
* focus 1..1 MS
* note MS
* note ^short = "審核意見或不符原因"

* input ^slicing.discriminator.type = #value
* input ^slicing.discriminator.path = "type.coding.code"
* input ^slicing.rules = #open
* input contains assessmentResponse 0..* MS
* input[assessmentResponse].type.coding.system = "https://sfaa.gov.tw/base/CodeSystem/twss-task-input-type"
* input[assessmentResponse].type.coding.code = #assessment-response
* input[assessmentResponse].type.coding.display = "評估回覆"
* input[assessmentResponse].value[x] only Reference(QuestionnaireResponseTWSSBase)

* output ^slicing.discriminator.type = #value
* output ^slicing.discriminator.path = "type.coding.code"
* output ^slicing.rules = #open
* output contains
    reviewResult 0..1 MS and
    caseDisposition 1..1 MS and
    openedEpisodeOfCare 0..1 MS and
    referralRequest 0..1 MS
* output[reviewResult].type.coding.system = "https://sfaa.gov.tw/base/CodeSystem/twss-task-output-type"
* output[reviewResult].type.coding.code = #review-result
* output[reviewResult].type.coding.display = "審核結果"
* output[reviewResult].value[x] only boolean
* output[reviewResult] ^short = "審核結果"
* output[caseDisposition].type.coding.system = "https://sfaa.gov.tw/base/CodeSystem/twss-task-output-type"
* output[caseDisposition].type.coding.code = #open-case-decision
* output[caseDisposition].type.coding.display = "是否開案"
* output[caseDisposition].value[x] only CodeableConceptTW
* output[caseDisposition].valueCodeableConcept from TWSSOpenCaseStatusVS (required)
* output[caseDisposition] ^short = "是否開案"
* output[openedEpisodeOfCare].type.coding.system = "https://sfaa.gov.tw/base/CodeSystem/twss-task-output-type"
* output[openedEpisodeOfCare].type.coding.code = #opened-episode-of-care
* output[openedEpisodeOfCare].type.coding.display = "開案案件"
* output[openedEpisodeOfCare].value[x] only Reference(EpisodeOfCareTWSSBase)
* output[openedEpisodeOfCare] ^short = "開案時建立的個案服務案件"
* output[referralRequest].type.coding.system = "https://sfaa.gov.tw/base/CodeSystem/twss-task-output-type"
* output[referralRequest].type.coding.code = #referral-request
* output[referralRequest].type.coding.display = "轉介請求"
* output[referralRequest].value[x] only Reference(ServiceRequestReferralTWSSBase)
* obeys TWSSOpenCaseEpisodeConsistency

Invariant: TWSSOpenCaseEpisodeConsistency
Description: "開案時必須輸出建立的個案服務案件；未開案時不得輸出該案件。"
Expression: "output.where(type.coding.where(code = 'open-case-decision').exists()).single().value.ofType(CodeableConcept).coding.where(code = 'Y').exists() = output.where(type.coding.where(code = 'opened-episode-of-care').exists()).exists()"
Severity: #error
