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
    TWSSEthnicGroupExtension named ethnicGroup 0..* MS and
    TWSSPractitionerAborigineTribe named AborigineTribe 0..1 MS and
    TWSSPractitionerSalary named salary 0..1 MS
* extension[salary] ^short = "服務人薪資"
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
* qualification ^slicing.discriminator.type = #value
* qualification ^slicing.discriminator.path = "code.coding.system"
* qualification ^slicing.rules = #open
* qualification contains education 0..* MS and training 0..* MS
* qualification[education].code 1..1 MS
* qualification[education].code.coding 1..* MS
* qualification[education].code.coding.system = "https://sfaa.gov.tw/base/CodeSystem/twss-education-level"
* qualification[education].code from TWSSEducationLevelVS (required)
* qualification[education].code.coding ^short = "服務人教育程度"
* qualification[education].code.text 0..1 MS
* qualification[education].code.text ^short = "服務人就讀學校名稱、服務人畢業科系；格式為「就讀學校名稱；畢業科系」。"
* qualification[education].period 0..1 MS
* qualification[education].period.start 0..1 MS
* qualification[education].period.start ^short = "服務人入學年度"
* qualification[education].period.end 0..1 MS
* qualification[education].period.end ^short = "服務人畢業年度"
* qualification[education].extension contains TWSSPractitionerQualificationStatus named qualificationStatus 0..1 MS
* qualification[education].extension[qualificationStatus] ^short = "服務人是否畢業"
* qualification[education] ^short = "服務人教育資格；教育程度使用 code.coding，學校名稱與畢業科系合併記錄於 code.text。"
* qualification[training].code 1..1 MS
* qualification[training].code.coding 1..* MS
* qualification[training].code.coding.system = "https://sfaa.gov.tw/base/CodeSystem/twss-training-course-type"
* qualification[training].code from TWSSTrainingCourseTypeVS (required)
* qualification[training].code.coding ^short = "受訓課程類型"
* qualification[training].code.text 0..1 MS
* qualification[training].code.text ^short = "受訓課程名稱"
* qualification[training].period 0..1 MS
* qualification[training].period.start 0..1 MS
* qualification[training].period.start ^short = "受訓起始日期"
* qualification[training].period.end 0..1 MS
* qualification[training].period.end ^short = "受訓結束日期"
* qualification[training].issuer 0..1 MS
* qualification[training].issuer.display ^short = "開課單位"
* qualification[training].extension contains TWSSPractitionerTrainingHours named trainingHours 0..1 MS
* qualification[training].extension[trainingHours] ^short = "受訓課程時數"
* qualification[training] ^short = "服務人受訓課程；課程類型使用 code.coding，名稱使用 code.text，時數使用 trainingHours extension。"
* qualification.identifier MS
* qualification.code MS
* qualification.period MS
* qualification.issuer only Reference(OrganizationTWSSBase)
* qualification.issuer MS
* qualification ^short = "人員資格、證照、教育或受訓紀錄。"
