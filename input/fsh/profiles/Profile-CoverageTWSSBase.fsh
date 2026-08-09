Profile:        CoverageTWSSBase
Parent:         Coverage
Id:             Coverage-twss-base
Title:          "補助資格或補助案件-Coverage TWSS Base"
Description:    "補助資格或補助案件-Coverage TWSS Base Profile 表達社家署業務中的補助或給付資格。本 Profile 因社福補助語境與 TWSS Base 的 reference target 需求與 TW Core Coverage 0.3.2 限制不同，故繼承原生 Coverage，並沿用相容的 TW Core 0.3.2 規則。"
* ^version = "0.0.1"

* extension contains TWSSCoverageAidYear named aidYear 0..1 MS
* extension[aidYear] ^short = "補助年度"
* identifier MS
* status MS
* type MS
* type only CodeableConceptTW
* type from TWSSWelfareTypeVS (extensible)
* type ^binding.description = "Coverage.type 優先採用 FHIR Coverage Type and Self-Pay Codes；若需表達社家署福利身分別，可使用 TWSS 福利身分別代碼。"
* type ^short = "福利身分別、補助資格或給付資格類型。"
* policyHolder only Reference(PatientTWSSBase or RelatedPersonTWSSBase or OrganizationTWSSBase)
* policyHolder MS
* subscriber only Reference(PatientTWSSBase or RelatedPersonTWSSBase)
* subscriber MS
* subscriberId MS
* beneficiary only Reference(PatientTWSSBase)
* beneficiary MS
* relationship MS
* period MS
* payor only Reference(OrganizationTWSSBase or PatientTWSSBase or RelatedPersonTWSSBase)
* payor MS
* class MS
* costToBeneficiary MS
