Profile:        ClaimTWSSBase
Parent:         Claim
Id:             Claim-twss-base
Title:          "補助申請或核付明細-Claim TWSS Base"
Description:    "補助申請或核付明細-Claim TWSS Base Profile 表達社家署業務中的補助申請或核付明細。因 TW Core 0.3.2 尚未提供 Claim Profile，故繼承原生 Claim，並於設定社福欄位後補回適用的 TW Core 0.3.2 共通交換規則。"
* ^version = "0.0.1"

* identifier MS
* status MS
* type MS
* subType MS
* use MS
* patient only Reference(PatientTWSSBase)
* patient MS
* billablePeriod MS
* created MS
* enterer only Reference(PractitionerTWSSBase or PractitionerRoleTWSSBase)
* enterer MS
* insurer only Reference(OrganizationTWSSBase)
* insurer MS
* provider only Reference(PractitionerTWSSBase or PractitionerRoleTWSSBase or OrganizationTWSSBase)
* provider MS
* priority MS
* prescription MS
* originalPrescription MS
* payee MS
* careTeam MS
* careTeam.provider only Reference(PractitionerTWSSBase or PractitionerRoleTWSSBase or OrganizationTWSSBase)
* referral 0..0
* supportingInfo MS
* supportingInfo.value[x] only boolean or string or Quantity or Attachment or Reference(PatientTWSSBase or RelatedPersonTWSSBase or OrganizationTWSSBase or EpisodeOfCareTWSSBase or ConditionTWSSBase or CoverageTWSSBase or DocumentReferenceTWSSBase)
* supportingInfo ^slicing.discriminator.type = #value
* supportingInfo ^slicing.discriminator.path = "category.coding.code"
* supportingInfo ^slicing.rules = #open
* supportingInfo contains serviceCase 0..* MS
    and documentsComplete 0..1 MS
    and applicationChannel 0..1 MS
    and applicant 0..1 MS
    and bankAccount 0..1 MS
* supportingInfo[serviceCase].category.coding.system = "https://sfaa.gov.tw/base/CodeSystem/twss-claim-supporting-info-type"
* supportingInfo[serviceCase].category.coding.code = #service-case
* supportingInfo[serviceCase].category.coding.display = "服務案件"
* supportingInfo[serviceCase].value[x] only Reference(EpisodeOfCareTWSSBase)
* supportingInfo[serviceCase] ^short = "服務案件"
* supportingInfo[documentsComplete].category.coding.system = "https://sfaa.gov.tw/base/CodeSystem/twss-claim-supporting-info-type"
* supportingInfo[documentsComplete].category.coding.code = #documents-complete
* supportingInfo[documentsComplete].category.coding.display = "申請人證件備齊日"
* supportingInfo[documentsComplete].timing[x] only date
* supportingInfo[documentsComplete] ^short = "申請人證件備齊日"
* supportingInfo[applicationChannel].category.coding.system = "https://sfaa.gov.tw/base/CodeSystem/twss-claim-supporting-info-type"
* supportingInfo[applicationChannel].category.coding.code = #application-channel
* supportingInfo[applicationChannel].category.coding.display = "申請管道"
* supportingInfo[applicationChannel].code only CodeableConceptTW
* supportingInfo[applicationChannel].code from TWSSApplicationChannelVS (required)
* supportingInfo[applicationChannel] ^short = "申請管道"
* supportingInfo[applicationChannel] ^definition = "申請管道；線上申請填寫 online，非線上申請填寫 offline。"
* supportingInfo[applicant].category.coding.system = "https://sfaa.gov.tw/base/CodeSystem/twss-claim-supporting-info-type"
* supportingInfo[applicant].category.coding.code = #applicant
* supportingInfo[applicant].category.coding.display = "申請人"
* supportingInfo[applicant].value[x] only Reference(PatientTWSSBase or RelatedPersonTWSSBase or OrganizationTWSSBase)
* supportingInfo[applicant] ^short = "申請人"
* supportingInfo[bankAccount].category.coding.system = "https://sfaa.gov.tw/base/CodeSystem/twss-claim-supporting-info-type"
* supportingInfo[bankAccount].category.coding.code = #bank-account
* supportingInfo[bankAccount].category.coding.display = "申請人銀行帳戶"
* supportingInfo[bankAccount].value[x] only string
* supportingInfo[bankAccount] ^short = "申請人銀行帳戶"
* diagnosis MS
* insurance MS
* insurance.coverage only Reference(CoverageTWSSBase)
* item MS
* item.productOrService MS
* item.factor MS
* item.productOrService ^short = "申請補助項目"
* item.factor ^short = "補助比率"
* item.serviced[x] MS
* item.net MS
* total MS
