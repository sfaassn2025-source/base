Profile:        RelatedPersonTWSSBase
Parent:         RelatedPerson
Id:             RelatedPerson-twss-base
Title:          "關係人資料-RelatedPerson TWSS Base"
Description:    "關係人資料-RelatedPerson TWSS Base Profile 表達社家署業務中的關係人資料。本 Profile 因 TWSS Base 的基數需求與 reference target 與 TW Core RelatedPerson 0.3.2 限制不同，故繼承原生 RelatedPerson，並沿用相容的 TW Core 0.3.2 規則。"
* ^version = "0.0.1"

* identifier MS
* identifier.use MS
* identifier.type MS
* identifier.system MS
* identifier.value MS
* identifier ^slicing.discriminator[0].type = #value
* identifier ^slicing.discriminator[=].path = "type.coding.system"
* identifier ^slicing.discriminator[+].type = #value
* identifier ^slicing.discriminator[=].path = "type.coding.code"
* identifier ^slicing.rules = #open
* identifier contains idCardNumber 0..1 MS and relationNumber 1..1 MS
* identifier[idCardNumber].use = #official
* identifier[idCardNumber].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[idCardNumber].type.coding.code = #NNxxx
* identifier[idCardNumber].value 1..1 MS
* identifier[idCardNumber] ^short = "關係人身分證字號。"
* identifier[relationNumber].use = #usual
* identifier[relationNumber].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[relationNumber].type.coding.code = #RI
* identifier[relationNumber].value 1..1 MS
* identifier[relationNumber] ^short = "關係人編號；識別碼型別使用 HL7 v2-0203 的 RI（Resource identifier）。"

* extension contains
    TWSSRelatedPersonNationality named nationality 0..1 MS and
    TWSSEthnicGroupExtension named ethnicGroup 0..1 MS and
    TWSSRelatedPersonMaritalStatus named maritalStatus 0..1 MS and
    TWSSRelatedPersonReligion named religion 0..1 MS and
    TWSSRelatedPersonAge named age 0..1 MS
* extension[nationality] ^short = "關係人國籍。"
* extension[ethnicGroup] ^short = "關係人族群身分。"
* extension[maritalStatus] ^short = "關係人婚姻狀態。"
* extension[religion] ^short = "關係人宗教信仰。"
* extension[age] ^short = "關係人年齡。"

* active MS
* patient only Reference(PatientTWSSBase)
* patient MS
* relationship MS
* relationship ^binding.description = "病人與相關人士之間關係的類型。"
* name MS
* name.text MS
* telecom MS
* telecom.system MS
* telecom.value MS
* gender MS
* birthDate MS
* address MS
* address only AddressTWSSBase
* period MS

// ----- TW Core 0.3.2 retained element definitions -----
// TWSS Base 以 FHIR R4 RelatedPerson 為基底；未與 TWSS 欄位需求衝突之元素說明與交換規則，沿用 TW Core RelatedPerson 0.3.2。
* relationship ^binding.description = "病人與相關人士之間關係的類型。"
// ----- End TW Core 0.3.2 retained element definitions -----

