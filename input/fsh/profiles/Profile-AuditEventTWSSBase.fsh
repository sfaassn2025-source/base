Profile: AuditEventTWSSBase
Parent: AuditEvent
Id: AuditEvent-twss-base
Title: "資訊記錄-AuditEvent TWSS Base"
Description: "本 Profile 繼承 FHIR R4 原生 AuditEvent。TW Core IG 0.3.2 未提供 AuditEvent Profile，因此以原生 AuditEvent 表達臺灣社政領域系統的資訊記錄與稽核軌跡。"
* ^version = "0.0.1"

* type 1..1 MS
* type ^short = "活動記錄類型"
* period MS
* period ^short = "活動發生時間"
* recorded 1..1 MS
* recorded ^short = "事件被記錄時間"
* agent ^slicing.discriminator.type = #value
* agent ^slicing.discriminator.path = "network.type"
* agent ^slicing.rules = #open
* agent contains ipAddress 0..* MS
* agent[ipAddress].altId MS
* agent[ipAddress].altId ^short = "行為人識別碼"
* agent[ipAddress].requestor 1..1 MS
* agent[ipAddress].requestor ^short = "是否為事件發起人"
* agent[ipAddress].location only Reference(LocationTWSSBase)
* agent[ipAddress].location MS
* agent[ipAddress].location ^short = "行為人所在位置"
* agent[ipAddress].network.type = #2
* agent[ipAddress].network.address MS
* agent[ipAddress].network.address ^short = "行為人裝置網路識別碼"
* source.observer only Reference(OrganizationTWSSBase or Device)
* source.observer 1..1 MS
* source.observer ^short = "事件記錄來源"
