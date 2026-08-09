Profile:        ServiceRequestTWSSBase
Parent:         ServiceRequest
Id:             ServiceRequest-twss-base
Title:          "申請或服務請求-ServiceRequest TWSS Base"
Description:    "申請或服務請求-ServiceRequest TWSS Base Profile 表達社家署業務中的申請或服務請求。本 Profile 因 TWSS Base 的 reference target 與 TW Core ServiceRequest 0.3.2 限制不同，且 TWSS Base 需求尚未穩定要求 TW Core 的所有限制，故繼承原生 ServiceRequest，並沿用相容的 TW Core 0.3.2 規則。"
* ^version = "0.0.1"

* identifier MS
* identifier.use MS
* identifier.type MS
* identifier.system MS
* identifier.value MS

* basedOn only Reference(ServiceRequestTWSSBase or CarePlanTWSSBase)
* basedOn MS
* replaces only Reference(ServiceRequestTWSSBase)
* replaces MS

* status MS
* intent MS

* category 1..1 MS
* category only CodeableConceptTW
* category ^short = "服務請求類型。"
* category ^binding.description = "依申請、通報、轉介或服務情境，由業務子 Profile 指定適用的代碼。"

* priority MS

* code only CodeableConceptTW
* code 1..1 MS
* code ^short = "申請、服務或補助項目的主要代碼。"
* code ^binding.description = "依申請、通報、轉介或服務情境，由業務子 Profile 指定適用的代碼。"

* orderDetail only CodeableConceptTW
* orderDetail MS

* subject only Reference(PatientTWSSBase)
* subject 1..1 MS

* occurrence[x] only dateTime or Period or Timing
* occurrence[x] MS

* authoredOn MS
* authoredOn ^short = "通報時間、申請日期、轉介申請日期或請求建立時間。"

* requester only Reference(PatientTWSSBase or RelatedPersonTWSSBase or PractitionerTWSSBase or PractitionerRoleTWSSBase or OrganizationTWSSBase)
* requester MS

* performer only Reference(PractitionerTWSSBase or PractitionerRoleTWSSBase or OrganizationTWSSBase)
* performer MS

* reasonReference only Reference(ConditionTWSSBase or DocumentReferenceTWSSBase)
* reasonReference MS
* reasonCode only CodeableConceptTW
* reasonCode MS
* supportingInfo only Reference(ConditionTWSSBase or CoverageTWSSBase or RelatedPersonTWSSBase or EpisodeOfCareTWSSBase or DocumentReferenceTWSSBase)
* supportingInfo MS
* note MS
