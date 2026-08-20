Profile: CaseIntakeAssessmentTaskTWSSBase
Parent: Task
Id: CaseIntakeAssessmentTask-twss-base
Title: "個案受理與評估-Task TWSS Base"
Description: "因 TW Core IG 0.3.2 尚無針對社福個案受理與評估流程的 Task Profile，故繼承原生 Task，並於設定社福欄位後補回適用的 TW Core 0.3.2 共通交換規則。"
* ^version = "0.0.1"

* status 1..1 MS
* status ^short = "Task 工作狀態"
* businessStatus 1..1 MS
* businessStatus from TWSSServiceCaseStatusVS (required)
* businessStatus ^short = "服務案件狀態"
* for only Reference(PatientTWSSBase)
* for 1..1 MS
* focus only Reference(ServiceRequestCaseReportTWSSBase)
* focus 1..1 MS
* focus ^short = "個案通報 ServiceRequest"
* input ^slicing.discriminator.type = #value
* input ^slicing.discriminator.path = "type.coding.code"
* input ^slicing.rules = #open
* input contains assessmentResponse 0..* MS and caseType 0..1 MS
* input[assessmentResponse].type.coding.system = "https://sfaa.gov.tw/base/CodeSystem/twss-task-input-type"
* input[assessmentResponse].type.coding.code = #assessment-response
* input[assessmentResponse].type.coding.display = "評估回覆"
* input[assessmentResponse].value[x] only Reference(QuestionnaireResponseTWSSBase)
* input[caseType].type.coding.system = "https://sfaa.gov.tw/base/CodeSystem/twss-task-input-type"
* input[caseType].type.coding.code = #case-type
* input[caseType].type.coding.display = "評估案件類型"
* input[caseType].value[x] only CodeableConceptTW
* input[caseType].valueCodeableConcept from TWSSEpisodeOfCareTypeVS (extensible)
* input[caseType] ^short = "評估的案件類型"
