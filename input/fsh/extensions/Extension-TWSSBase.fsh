Extension: TWSSRelatedPersonNationality
Id: twss-related-person-nationality
Title: "關係人國籍"
Description: "記錄關係人的國籍。"
Context: RelatedPerson
* ^version = "0.0.1"
* value[x] only CodeableConceptTW
* valueCodeableConcept MS
* valueCodeableConcept from http://hl7.org/fhir/ValueSet/iso3166-1-2 (extensible)

Extension: TWSSEthnicGroupExtension
Id: twss-ethnic-group
Title: "族群身分"
Description: "記錄個案、關係人或服務人的族群身分。"
Context: Patient, RelatedPerson, Practitioner
* ^version = "0.0.1"
* value[x] only CodeableConceptTW
* valueCodeableConcept MS
* valueCodeableConcept from TWSSEthnicGroupVS (required)

Extension: TWSSRelatedPersonMaritalStatus
Id: twss-related-person-marital-status
Title: "關係人婚姻狀態"
Description: "記錄關係人的婚姻狀態。"
Context: RelatedPerson
* ^version = "0.0.1"
* value[x] only CodeableConceptTW
* valueCodeableConcept MS
* valueCodeableConcept from http://hl7.org/fhir/ValueSet/marital-status (extensible)

Extension: TWSSRelatedPersonAge
Id: twss-related-person-age
Title: "關係人年齡"
Description: "記錄關係人的年齡。"
Context: RelatedPerson
* ^version = "0.0.1"
* value[x] only Age
* valueAge MS

Extension: TWSSPractitionerNationality
Id: twss-practitioner-nationality
Title: "服務人國籍"
Description: "記錄服務人的國籍。"
Context: Practitioner
* ^version = "0.0.1"
* value[x] only CodeableConceptTW
* valueCodeableConcept MS
* valueCodeableConcept from http://hl7.org/fhir/ValueSet/iso3166-1-2 (extensible)

Extension: TWSSPractitionerAborigineTribe
Id: twss-practitioner-aborigine-tribe
Title: "服務人原住民族別"
Description: "記錄服務人的原住民族別。"
Context: Practitioner
* ^version = "0.0.1"
* value[x] only CodeableConceptTW
* valueCodeableConcept MS
* valueCodeableConcept from TWSSAborigineTribeVS (required)

Extension: TWSSBirthDateBeforeROC
Id: twss-birth-date-before-roc
Title: "是否出生於民國年前"
Description: "記錄個案出生日期是否位於民國紀元前。"
Context: Patient
* ^version = "0.0.1"
* value[x] only boolean
* valueBoolean MS

Extension: TWSSBirthDateUnknown
Id: twss-birth-date-unknown
Title: "出生日期不明註記"
Description: "記錄個案出生日期是否不明。"
Context: Patient
* ^version = "0.0.1"
* value[x] only boolean
* valueBoolean MS

Extension: TWSSRelatedPersonIdentifierUnknown
Id: twss-related-person-identifier-unknown
Title: "關係人身分識別碼不明註記"
Description: "記錄關係人身分識別碼是否不明。"
Context: RelatedPerson
* ^version = "0.0.1"
* value[x] only boolean
* valueBoolean MS

Extension: TWSSIsReferralCaseExtension
Id: twss-is-referral-case
Title: "是否為轉介案件"
Description: "記錄個案通報是否屬於轉介案件。"
Context: ServiceRequest
* ^version = "0.0.1"
* value[x] only boolean
* valueBoolean MS

Extension: TWSSIsPrimaryCaregiverExtension
Id: twss-is-primary-caregiver
Title: "是否為主要照顧者"
Description: "記錄關係人是否為個案的主要照顧者。"
Context: RelatedPerson
* ^version = "0.0.1"
* value[x] only boolean
* valueBoolean MS

Extension: TWSSIsGuardianExtension
Id: twss-is-guardian
Title: "是否為監護人"
Description: "記錄關係人是否為個案的監護人。"
Context: RelatedPerson
* ^version = "0.0.1"
* value[x] only boolean
* valueBoolean MS

Extension: TWSSIsPrimaryContactExtension
Id: twss-is-primary-contact
Title: "是否為主要聯絡者"
Description: "記錄關係人是否為個案的主要聯絡者。"
Context: RelatedPerson
* ^version = "0.0.1"
* value[x] only boolean
* valueBoolean MS

Extension: TWSSIsLegalRepresentativeExtension
Id: twss-is-legal-representative
Title: "是否為代理人"
Description: "記錄關係人是否為個案的代理人。"
Context: RelatedPerson
* ^version = "0.0.1"
* value[x] only boolean
* valueBoolean MS

Extension: TWSSIsReferredAtClosureExtension
Id: twss-is-referred-at-closure
Title: "結案時是否轉介"
Description: "記錄個案結案時是否另行提出轉介。"
Context: EpisodeOfCare
* ^version = "0.0.1"
* value[x] only boolean
* valueBoolean MS

Extension: TWSSCaseCloseReason
Id: twss-case-close-reason
Title: "結案原因"
Description: "記錄個案服務案件結案時的原因。"
Context: EpisodeOfCare
* ^version = "0.0.1"
* value[x] only CodeableConceptTW
* valueCodeableConcept MS

Extension: TWSSCaseStatusExtension
Id: twss-case-status-extension
Title: "案件狀態"
Description: "記錄個案服務案件的 TWSS 案件狀態。"
Context: EpisodeOfCare
* ^version = "0.0.1"
* value[x] only CodeableConceptTW
* valueCodeableConcept MS
* valueCodeableConcept from TWSSCaseStatusVS (extensible)

Extension: TWSSCoverageAidYear
Id: twss-coverage-aid-year
Title: "補助年度"
Description: "記錄補助資格或補助案件所屬年度。"
Context: Coverage
* ^version = "0.0.1"
* value[x] only string
* valueString MS

Extension: TWSSClaimReviewStatus
Id: twss-claim-review-status
Title: "補助審核結果"
Description: "記錄補助申請的業務審核結果。"
Context: ClaimResponse
* ^version = "0.0.1"
* value[x] only CodeableConceptTW
* valueCodeableConcept MS
* valueCodeableConcept from TWSSReviewResultVS (required)

Extension: TWSSClaimPaymentStatus
Id: twss-claim-payment-status
Title: "補助撥款狀況"
Description: "記錄補助核定後的撥款處理狀況。"
Context: ClaimResponse
* ^version = "0.0.1"
* value[x] only CodeableConceptTW
* valueCodeableConcept MS
* valueCodeableConcept from TWSSPaymentStatusVS (required)

Extension: TWSSClaimSubsidyMonth
Id: twss-claim-subsidy-month
Title: "補助月分"
Description: "記錄補助款項所屬月份。"
Context: ClaimResponse
* ^version = "0.0.1"
* value[x] only integer
* valueInteger MS

Extension: TWSSOrganizationEstablishmentTypeExtension
Id: twss-organization-establishment-type
Title: "機構設立別"
Description: "記錄機構的設立別。"
Context: Organization
* ^version = "0.0.1"
* value[x] only CodeableConceptTW
* valueCodeableConcept MS
* valueCodeableConcept from TWSSOrganizationEstablishmentTypeVS (required)

// 待確認欄位：通報單位類別目前未納入最終欄位對應，暫不發布。
// Extension: TWSSReportingUnitTypeExtension
// Id: twss-reporting-unit-type
// Title: "通報單位類別"
// Description: "記錄提出個案通報之人員、單位或系統類別。"
// Context: ServiceRequest
// * ^version = "0.0.1"
// * value[x] only CodeableConceptTW
// * valueCodeableConcept MS
// * valueCodeableConcept from TWSSReportingUnitTypeVS (extensible)

Extension: TWSSOrganizationRegistrationDateExtension
Id: twss-organization-registration-date
Title: "機構立案日期"
Description: "記錄機構立案日期。"
Context: Organization
* ^version = "0.0.1"
* value[x] only date
* valueDate MS

Extension: TWSSOrganizationCompetentAuthority
Id: twss-organization-competent-authority
Title: "機構主管機關"
Description: "記錄機構的主管機關。"
Context: Organization
* ^version = "0.0.1"
* value[x] only Reference(OrganizationTWSSBase)
* valueReference MS

Extension: TWSSOrganizationCapacity
Id: twss-organization-capacity
Title: "機構收容量能"
Description: "記錄機構可收容或服務的容量。"
Context: Organization
* ^version = "0.0.1"
* extension contains
    type 1..1 MS and
    value 1..1 MS
* extension[type].value[x] only code
* extension[value].value[x] only integer
* value[x] 0..0

Extension: TWSSOrganizationUsableArea
Id: twss-organization-usable-area
Title: "機構可使用面積"
Description: "記錄機構可使用面積。"
Context: Organization
* ^version = "0.0.1"
* extension contains
    type 1..1 MS and
    value 1..1 MS
* extension[type].value[x] only code
* extension[value].value[x] only Quantity
* value[x] 0..0

Extension: TWSSOrganizationStatutoryStaffing
Id: twss-organization-statutory-staffing
Title: "法定設置標準人數"
Description: "記錄機構依角色所需的法定人力。"
Context: Organization
* ^version = "0.0.1"
* extension contains
    role 1..1 MS and
    requiredCount 1..1 MS
* extension[role].value[x] only CodeableConcept
* extension[requiredCount].value[x] only integer
* value[x] 0..0
