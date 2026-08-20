Invariant: twss-practitioner-tribe-requires-indigenous
Description: "填寫原住民族別時，族群身分必須為原住民。"
Expression: "extension.where(url = 'https://sfaa.gov.tw/base/StructureDefinition/twss-practitioner-aborigine-tribe').exists() implies extension.where(url = 'https://sfaa.gov.tw/base/StructureDefinition/twss-ethnic-group').value.coding.where(code = 'B').exists()"
Severity: #error

Invariant: twss-practitioner-indigenous-requires-tribe
Description: "服務人族群身分為原住民時，必須填寫原住民族別。"
Expression: "extension.where(url = 'https://sfaa.gov.tw/base/StructureDefinition/twss-ethnic-group').value.coding.where(code = 'B').exists() implies extension.where(url = 'https://sfaa.gov.tw/base/StructureDefinition/twss-practitioner-aborigine-tribe').exists()"
Severity: #error

Profile:        PractitionerTWSSBase
Parent:         TWCorePractitioner
Id:             Practitioner-twss-base
Title:          "人員資料-Practitioner TWSS Base"
Description:    "人員資料-Practitioner TWSS Base Profile 表達社家署業務中的人員資料。"
* ^version = "0.0.1"
* obeys twss-practitioner-tribe-requires-indigenous and twss-practitioner-indigenous-requires-tribe

* identifier 1..* MS
* identifier.use MS
* identifier.type MS
* identifier.system MS
* identifier.value MS
* identifier ^short = "人員身分證字號、證照號碼、員工編號或來源系統內部人員識別碼。"

* extension contains
    TWSSPractitionerNationality named nationality 0..1 MS and
    TWSSEthnicGroupExtension named ethnicGroup 0..1 MS and
    TWSSPractitionerAborigineTribe named AborigineTribe 0..1 MS
* extension[nationality] ^short = "服務人國籍。"
* extension[ethnicGroup] ^short = "服務人族群身分。"
* extension[AborigineTribe] ^short = "服務人原住民族別。"

* active MS

* name MS
* name.use MS
* name.text MS
* name.family MS
* name.given MS
* name ^short = "人員姓名。"

* telecom MS
* telecom.system MS
* telecom.value MS
* telecom.use MS
* telecom ^short = "人員聯絡電話、手機、電子郵件或其他聯絡方式。"

* address MS
* address only AddressTWSSBase
* address.use MS
* address.type MS
* address.text MS
* address.line MS
* address.city MS
* address.district MS
* address.postalCode MS
* address.country MS

* gender MS
* birthDate MS

* qualification MS
* qualification.identifier MS
* qualification.code MS
* qualification.period MS
* qualification.issuer only Reference(OrganizationTWSSBase)
* qualification.issuer MS
* qualification ^short = "人員資格、證照或訓練紀錄。"
