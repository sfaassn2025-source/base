Profile:        ClaimResponseTWSSBase
Parent:         ClaimResponse
Id:             ClaimResponse-twss-base
Title:          "補助審核或核付結果-ClaimResponse TWSS Base"
Description:    "補助審核或核付結果-ClaimResponse TWSS Base Profile 表達社家署業務中的補助審核或核付結果。因 TW Core 0.3.2 尚未提供 ClaimResponse Profile，故繼承原生 ClaimResponse，並於設定社福欄位後補回適用的 TW Core 0.3.2 共通交換規則。"
* ^version = "0.0.1"

* identifier MS
* identifier ^short = "核定文號"
* status MS
* type MS
* subType MS
* use MS
* patient only Reference(PatientTWSSBase)
* patient MS
* created MS
* created ^short = "審核日期"
* insurer only Reference(OrganizationTWSSBase)
* insurer MS
* requestor only Reference(PractitionerTWSSBase or PractitionerRoleTWSSBase or OrganizationTWSSBase)
* requestor MS
* request only Reference(ClaimTWSSBase)
* request MS
* outcome MS
* disposition MS
* extension contains
    TWSSClaimReviewResult named reviewResult 0..1 MS and
    TWSSClaimPaymentStatus named paymentStatus 0..1 MS and
    TWSSClaimSubsidyMonth named subsidyMonth 0..1 MS and
    TWSSClaimSubsidyPeriod named subsidyPeriod 0..1 MS
* extension[reviewResult] ^short = "審核結果"
* extension[paymentStatus] ^short = "補助撥款狀況"
* extension[subsidyMonth] ^short = "補助月分"
* extension[subsidyPeriod] ^short = "實際補助期間"
* preAuthPeriod MS
* preAuthPeriod.start MS
* preAuthPeriod.start ^short = "核定起領日"
* preAuthPeriod.end MS
* preAuthPeriod.end ^short = "核定結束日"
* preAuthRef MS
* payeeType MS
* item MS
* item.itemSequence MS
* item.adjudication.reason MS
* item.noteNumber MS
* processNote.number MS
* processNote.text MS
* item.adjudication MS
* item.adjudication.category MS
* item.adjudication.amount MS
* item.adjudication.amount ^short = "核定補助金額"
* item.adjudication ^slicing.discriminator.type = #value
* item.adjudication ^slicing.discriminator.path = "category.coding.code"
* item.adjudication ^slicing.rules = #open
* item.adjudication contains approvedAmount 0..1 MS and eligibilityDenial 0..1 MS and benefitTermination 0..1 MS and benefitSuspension 0..1 MS
* item.adjudication[approvedAmount].category.coding.system = "https://sfaa.gov.tw/base/CodeSystem/twss-claim-adjudication-category"
* item.adjudication[approvedAmount].category.coding.code = #approved-amount
* item.adjudication[approvedAmount].amount 1..1 MS
* item.adjudication[approvedAmount] ^short = "核定補助金額"
* item.adjudication[eligibilityDenial].category.coding.system = "https://sfaa.gov.tw/base/CodeSystem/twss-claim-adjudication-category"
* item.adjudication[eligibilityDenial].category.coding.code = #eligibility-denial
* item.adjudication[eligibilityDenial].reason.text 1..1 MS
* item.adjudication[eligibilityDenial] ^short = "不符原因"
* item.adjudication[benefitTermination].category.coding.system = "https://sfaa.gov.tw/base/CodeSystem/twss-claim-adjudication-category"
* item.adjudication[benefitTermination].category.coding.code = #benefit-termination
* item.adjudication[benefitTermination].reason.text 1..1 MS
* item.adjudication[benefitTermination] ^short = "註銷原因"
* item.adjudication[benefitSuspension].category.coding.system = "https://sfaa.gov.tw/base/CodeSystem/twss-claim-adjudication-category"
* item.adjudication[benefitSuspension].category.coding.code = #benefit-suspension
* item.adjudication[benefitSuspension].reason.text 1..1 MS
* item.adjudication[benefitSuspension] ^short = "停發原因"
* total MS
* payment MS
* processNote MS
* processNote.text ^short = "審核意見說明"
* insurance MS
* insurance.coverage only Reference(CoverageTWSSBase)
