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
* focus only Reference(ServiceRequestTWSSBase)
* focus 1..1 MS
* input.value[x] only Reference(QuestionnaireResponseTWSSBase)
* input MS
