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
* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code.text"
* component ^slicing.rules = #open
* component contains assessmentDate 0..1 MS and cancellationReason 0..1 MS
* component[assessmentDate].code 1..1 MS
* component[assessmentDate].code.text = "身心障礙鑑定日期"
* component[assessmentDate].value[x] only dateTime
* component[assessmentDate].value[x] 1..1 MS
* component[cancellationReason].code 1..1 MS
* component[cancellationReason].code.text = "註銷原因"
* component[cancellationReason].value[x] only string
* component[cancellationReason].value[x] 1..1 MS
* component.code ^short = "身心障礙鑑定日期或註銷原因"
* component.value[x] ^short = "對應組成項目的值"
