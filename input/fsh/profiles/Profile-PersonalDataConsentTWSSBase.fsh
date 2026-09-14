Profile: PersonalDataConsentTWSSBase
Parent: ConsentTWSSBase
Id: PersonalDataConsent-twss-base
Title: "個資同意-Consent TWSS Base"
Description: "用於記錄個案、關係人或服務人員對其本人個人資料之同意。資料主體以 consentSubject Extension 表達；Consent.performer 表示實際表示同意或代理簽署的人員。"
* ^version = "0.0.1"

* scope = TWSSConsentScopeCS#personal-data-privacy "個人資料隱私"
* scope from TWSSConsentScopeVS (required)
* category = http://terminology.hl7.org/CodeSystem/v3-ActCode#ICOL
* status 1..1 MS
* status ^short = "同意狀態"
* scope 1..1 MS
* scope ^short = "同意適用範圍"
* category 1..* MS
* category ^short = "同意分類"
* patient only Reference(PatientTWSSBase)
* patient MS
* patient ^short = "同意所適用的個案；僅資料主體為個案時填寫"
* performer only Reference(PatientTWSSBase or RelatedPersonTWSSBase or PractitionerTWSSBase or PractitionerRoleTWSSBase)
* performer MS
* performer ^short = "表示同意或代表簽署的人員"
* organization only Reference(OrganizationTWSSBase)
* organization MS
* organization ^short = "同意紀錄的保管機構"
* sourceReference only Reference(DocumentReferenceTWSSBase)
* sourceReference 0..1 MS
* sourceReference ^short = "同意書文件"
* policy 1..*
* policy ^short = "同意所依循的法規、政策或規範"
* extension contains TWSSConsentSubject named consentSubject 0..1 MS
* extension[consentSubject] ^short = "同意所適用的資料主體"
