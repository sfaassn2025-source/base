Extension: TWSSRelatedPersonNationality
Id: twss-related-person-nationality
Title: "關係人國籍"
Description: "記錄關係人的國籍。"
Context: RelatedPerson
* ^version = "0.0.1"
* value[x] only CodeableConceptTW
* valueCodeableConcept MS
* valueCodeableConcept.coding ^slicing.discriminator.type = #value
* valueCodeableConcept.coding ^slicing.discriminator.path = "code"
* valueCodeableConcept.coding ^slicing.rules = #open
* valueCodeableConcept.coding contains iso3166Alpha2 0..1 MS and iso3166Alpha3 0..1 MS
* valueCodeableConcept.coding[iso3166Alpha2].system = "urn:iso:std:iso:3166"
* valueCodeableConcept.coding[iso3166Alpha2].code from http://hl7.org/fhir/ValueSet/iso3166-1-2 (required)
* valueCodeableConcept.coding[iso3166Alpha3].system = "urn:iso:std:iso:3166"
* valueCodeableConcept.coding[iso3166Alpha3].code from http://hl7.org/fhir/ValueSet/iso3166-1-3 (required)

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
* valueCodeableConcept from TWSSMaritalStatusVS (extensible)

Invariant: twss-age-requires-recorded-date
Description: "填寫年齡時，必須同時填寫年齡記錄日期。"
Expression: "extension.where(url = 'age').exists() implies extension.where(url = 'recordedDate').exists()"
Severity: #error

Extension: TWSSRelatedPersonAge
Id: twss-related-person-age
Title: "關係人年齡"
Description: "記錄關係人年齡及其判定日期。"
Context: RelatedPerson
* ^version = "0.0.1"
* obeys twss-age-requires-recorded-date
* extension contains age 0..1 MS and recordedDate 0..1 MS
* extension[age].value[x] only Age
* extension[age].value[x] 1..1
* extension[recordedDate].value[x] only date
* extension[recordedDate].value[x] 1..1
* value[x] 0..0

Extension: TWSSPatientAge
Id: twss-patient-age
Title: "個案年齡"
Description: "記錄個案年齡及其判定日期。"
Context: Patient
* ^version = "0.0.1"
* obeys twss-age-requires-recorded-date
* extension contains age 0..1 MS and recordedDate 0..1 MS
* extension[age].value[x] only Age
* extension[age].value[x] 1..1
* extension[recordedDate].value[x] only date
* extension[recordedDate].value[x] 1..1
* value[x] 0..0

Extension: TWSSPractitionerNationality
Id: twss-practitioner-nationality
Title: "服務人國籍"
Description: "記錄服務人的國籍。"
Context: Practitioner
* ^version = "0.0.1"
* value[x] only CodeableConceptTW
* valueCodeableConcept MS
* valueCodeableConcept.coding ^slicing.discriminator.type = #value
* valueCodeableConcept.coding ^slicing.discriminator.path = "code"
* valueCodeableConcept.coding ^slicing.rules = #open
* valueCodeableConcept.coding contains iso3166Alpha2 0..1 MS and iso3166Alpha3 0..1 MS
* valueCodeableConcept.coding[iso3166Alpha2].system = "urn:iso:std:iso:3166"
* valueCodeableConcept.coding[iso3166Alpha2].code from http://hl7.org/fhir/ValueSet/iso3166-1-2 (required)
* valueCodeableConcept.coding[iso3166Alpha3].system = "urn:iso:std:iso:3166"
* valueCodeableConcept.coding[iso3166Alpha3].code from http://hl7.org/fhir/ValueSet/iso3166-1-3 (required)

Extension: TWSSPractitionerAborigineTribe
Id: twss-practitioner-aborigine-tribe
Title: "服務人原住民族別"
Description: "記錄服務人的原住民族別。"
Context: Practitioner
* ^version = "0.0.1"
* value[x] only CodeableConceptTW
* valueCodeableConcept MS
* valueCodeableConcept from TWSSAborigineTribeVS (required)

Extension: TWSSPatientAborigineTribe
Id: twss-patient-aborigine-tribe
Title: "個案原住民族別"
Description: "記錄個案的原住民族別。"
Context: Patient
* ^version = "0.0.1"
* value[x] only CodeableConceptTW
* valueCodeableConcept MS
* valueCodeableConcept from TWSSAborigineTribeVS (required)

Extension: TWSSRelatedPersonReligion
Id: twss-related-person-religion
Title: "關係人宗教信仰"
Description: "記錄關係人的宗教信仰。"
Context: RelatedPerson
* ^version = "0.0.1"
* value[x] only CodeableConceptTW
* valueCodeableConcept MS
* valueCodeableConcept from TWSSReligionVS (required)

Extension: TWSSIsReferralCaseExtension
Id: twss-is-referral-case
Title: "是否為轉介案件"
Description: "記錄個案通報是否屬於轉介案件。"
Context: ServiceRequest
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
* value[x] only integer
* valueInteger MS

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

Extension: TWSSClaimSubsidyPeriod
Id: twss-claim-subsidy-period
Title: "補助期間"
Description: "記錄實際開始與停止領取補助的期間。"
Context: ClaimResponse
* ^version = "0.0.1"
* extension contains start 0..1 MS and end 0..1 MS
* extension[start].value[x] only date
* extension[start].valueDate MS
* extension[end].value[x] only date
* extension[end].valueDate MS
* value[x] 0..0

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

Extension: TWSSPractitionerQualificationStatus
Id: twss-practitioner-qualification-status
Title: "服務人資格狀態"
Description: "使用參考 HL7 FHIR R6 qualification-status 的 TWSS R4 代碼表達服務人教育資格狀態。本 IG 的業務定義為 active 代表已畢業；suspended 代表未畢業，包括在學、休學或肄業等未取得畢業資格的情況。"
Context: Practitioner.qualification
* ^version = "0.0.1"
* value[x] only CodeableConcept
* valueCodeableConcept 1..1 MS
* valueCodeableConcept.coding 1..* MS
* valueCodeableConcept.coding.system = "https://sfaa.gov.tw/base/CodeSystem/twss-practitioner-qualification-status"
* valueCodeableConcept from TWSSPractitionerQualificationStatusVS (required)

Extension: TWSSPractitionerTrainingHours
Id: twss-practitioner-training-hours
Title: "服務人受訓課程時數"
Description: "記錄服務人單一受訓課程的時數。"
Context: Practitioner.qualification
* ^version = "0.0.1"
* value[x] only Quantity
* valueQuantity 1..1 MS

Extension: TWSSPractitionerSalary
Id: twss-practitioner-salary
Title: "服務人薪資"
Description: "記錄服務人的薪資數值。"
Context: Practitioner
* ^version = "0.0.1"
* value[x] only decimal
* valueDecimal 1..1 MS

Extension: TWSSOrganizationQualification
Id: twss-organization-qualification
Title: "機構評鑑資格"
Description: "以 FHIR R5 Organization.qualification 的 code 結構，於 FHIR R4 表達機構評鑑資格或等級。"
Context: Organization
* ^version = "0.0.1"
* extension contains code 1..1 MS
* extension[code].value[x] only CodeableConcept
* extension[code].valueCodeableConcept 1..1 MS
* extension[code].valueCodeableConcept from TWSSOrganizationAccreditationLevelVS (required)
* value[x] 0..0

Extension: TWSSCaseReportTypeExtension
Id: twss-case-report-type
Title: "通報類型"
Description: "記錄個案通報的業務類型。"
Context: ServiceRequest
* ^version = "0.0.1"
* value[x] only CodeableConcept
* valueCodeableConcept from TWSSCaseReportTypeVS (required)
* valueCodeableConcept MS

Extension: TWSSConsentSubject
Id: twss-consent-subject
Title: "同意適用資料主體"
Description: "記錄個人資料同意所適用的資料主體。FHIR R4 Consent.patient 僅能參照 Patient；本 Extension 補充關係人或服務人員本人作為資料主體的情境。"
Context: Consent
* ^version = "0.0.1"
* value[x] only Reference(PatientTWSSBase or RelatedPersonTWSSBase or PractitionerTWSSBase)
* valueReference 1..1 MS
