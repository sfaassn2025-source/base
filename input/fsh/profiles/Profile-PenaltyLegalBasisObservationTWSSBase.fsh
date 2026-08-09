Profile: PenaltyLegalBasisObservationTWSSBase
Parent: Observation
Id: PenaltyLegalBasisObservation-twss-base
Title: "裁罰法規依據-Observation TWSS Base"
Description: "因 TW Core IG 0.3.2 尚無針對社福機構裁罰法規依據的 Profile，故繼承原生 Observation，並於設定社福欄位後補回適用的 TW Core 0.3.2 共通交換規則。"
* ^version = "0.0.1"

* status 1..1 MS
* code 1..1 MS
* code ^short = "裁罰法規依據"
* focus only Reference(OrganizationTWSSBase)
* focus 1..1 MS
* focus ^short = "被裁罰機構"
* effective[x] only dateTime
* effective[x] MS
* performer only Reference(OrganizationTWSSBase)
* performer MS
* value[x] only string
* valueString 1..1 MS
* valueString ^short = "裁罰法規依據"
