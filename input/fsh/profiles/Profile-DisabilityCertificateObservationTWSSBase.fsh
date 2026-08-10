Profile: DisabilityCertificateObservationTWSSBase
Parent: Observation
Id: DisabilityCertificateObservation-twss-base
Title: "身心障礙證明狀態-Observation TWSS Base"
Description: "因 TW Core IG 0.3.2 尚無針對身心障礙證明狀態的 Profile，故繼承原生 Observation，並於設定社福欄位後補回適用的 TW Core 0.3.2 共通交換規則。"
* ^version = "0.0.1"
* status 1..1 MS
* code = TWSSObservationType#disability-certificate-status "身心障礙證明狀態"
* code from TWSSObservationTypeVS (required)
* subject only Reference(PatientTWSSBase)
* subject 1..1 MS
* effective[x] 1..1 MS
