Profile:        EpisodeOfCareTWSSBase
Parent:         EpisodeOfCare
Id:             EpisodeOfCare-twss-base
Title:          "個案服務案件-EpisodeOfCare TWSS Base"
Description:    "個案服務案件-EpisodeOfCare TWSS Base Profile 表達社家署業務中的個案服務案件。因 TW Core 0.3.2 尚未提供 EpisodeOfCare Profile，故繼承原生 EpisodeOfCare，並於設定社福欄位後補回適用的 TW Core 0.3.2 共通交換規則。"
* ^version = "0.0.1"

* identifier MS
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier contains caseNumber 0..1 MS and crossSystemCaseNumber 0..1 MS and historicalCaseNumber 0..1 MS
* identifier[caseNumber].system 1..1 MS
* identifier[caseNumber].system = "https://sfaa.gov.tw/base/identifier/case-number"
* identifier[caseNumber].value 1..1 MS
* identifier[caseNumber] ^short = "個案編號"
* identifier[crossSystemCaseNumber].system 1..1 MS
* identifier[crossSystemCaseNumber].system = "https://sfaa.gov.tw/base/identifier/cross-system-case-number"
* identifier[crossSystemCaseNumber].value 1..1 MS
* identifier[crossSystemCaseNumber] ^short = "跨系統個案編號"
* identifier[historicalCaseNumber].system 1..1 MS
* identifier[historicalCaseNumber].system = "https://sfaa.gov.tw/base/identifier/historical-case-number"
* identifier[historicalCaseNumber].value 1..1 MS
* identifier[historicalCaseNumber] ^short = "歷史案號"
* extension contains
    TWSSCaseCloseReason named caseCloseReason 0..* MS and
    TWSSCaseStatusExtension named serviceCaseStatus 0..1 MS and
    TWSSIsReferredAtClosureExtension named isReferredAtClosure 0..1 MS
* extension[caseCloseReason] ^short = "結案原因"
* extension[serviceCaseStatus] ^short = "服務案件狀態"
* extension[isReferredAtClosure] ^short = "結案時是否轉介"
* status MS
* statusHistory MS
* type 1..* MS
* type from TWSSEpisodeOfCareTypeVS (extensible)
* type ^short = "服務或補助案件類型"
* diagnosis MS
* patient only Reference(PatientTWSSBase)
* patient MS
* managingOrganization only Reference(OrganizationTWSSBase)
* managingOrganization 1..1 MS
* period MS
* period ^short = "主責單位承擔個案服務案件責任的期間。"
* period ^definition = "個案開案至結案期間；轉介請求及其處理不以 EpisodeOfCare 表達。"
* referralRequest only Reference(ServiceRequestReferralTWSSBase)
* referralRequest MS
* careManager only Reference(PractitionerTWSSBase or PractitionerRoleTWSSBase)
* careManager MS
* team only Reference(CareTeam)
* team MS
* account MS
