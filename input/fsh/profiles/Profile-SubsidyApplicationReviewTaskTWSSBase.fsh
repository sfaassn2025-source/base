Profile: SubsidyApplicationReviewTaskTWSSBase
Parent: Task
Id: SubsidyApplicationReviewTask-twss-base
Title: "補助申請審查-Task TWSS Base"
Description: "補助申請審查-Task TWSS Base Profile 表達補助申請受理、補件與審查中的工作流程。Task.focus 參照補助申請 Claim；正式通過或不通過、核定金額及核付結果由 ClaimResponse 表達。因 TW Core IG 0.3.2 尚無社福補助申請審查 Task Profile，故繼承原生 Task，並補回適用的 TW Core IG 0.3.2 共通交換規則。"
* ^version = "0.0.1"

* identifier MS
* status 1..1 MS
* status ^short = "補助申請審查工作狀態"
* businessStatus 1..1 MS
* businessStatus from TWSSApplicationReviewStatusVS (required)
* businessStatus ^short = "申請審查狀態"
* authoredOn 1..1 MS
* authoredOn ^short = "補助申請審查建立日期與時間"
* lastModified MS
* lastModified ^short = "申請審查狀態最後更新日期與時間"
* for only Reference(PatientTWSSBase)
* for 1..1 MS
* focus only Reference(ClaimTWSSBase)
* focus 1..1 MS
* focus ^short = "本次審查的補助申請 Claim"
* requester only Reference(PractitionerTWSSBase or PractitionerRoleTWSSBase or OrganizationTWSSBase)
* requester MS
* owner only Reference(PractitionerTWSSBase or PractitionerRoleTWSSBase or OrganizationTWSSBase)
* owner MS
