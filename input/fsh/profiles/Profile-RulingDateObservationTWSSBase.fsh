Profile: RulingDateObservationTWSSBase
Parent: Observation
Id: RulingDateObservation-twss-base
Title: "裁定日期-Observation TWSS Base"
Description: "因 TW Core IG 0.3.2 尚無針對社福裁定日期的 Profile，故繼承原生 Observation，並於設定社福欄位後補回適用的 TW Core 0.3.2 共通交換規則。"
* ^version = "0.0.1"

* status 1..1 MS
* code = TWSSObservationType#ruling-date
* code from TWSSObservationTypeVS (required)
* code ^short = "裁定日期的業務類型"
* subject only Reference(PatientTWSSBase)
* subject 1..1 MS
* value[x] only dateTime
* valueDateTime 1..1 MS
* valueDateTime ^short = "裁定日期"
