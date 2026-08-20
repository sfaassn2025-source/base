Profile:        OrganizationTWSSBase
Parent:         TWCoreOrganization
Id:             Organization-twss-base
Title:          "機構資料-Organization TWSS Base"
Description:    "機構資料-Organization TWSS Base Profile 表達社家署業務中的機構或組織單位資料。"
* ^version = "0.0.1"

* identifier MS
* identifier.use MS
* identifier.type MS
* identifier.system MS
* identifier.value MS
* identifier ^short = "機構統一編號、機構代碼或來源系統內部機構識別碼。"
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier contains organizationCode 1..1 MS and licenseNumber 0..1 MS
* identifier[organizationCode].system 1..1 MS
* identifier[organizationCode].system = "https://sfaa.gov.tw/base/identifier/organization-code"
* identifier[organizationCode].value 1..1 MS
* identifier[organizationCode] ^short = "機構代碼。"
* identifier[licenseNumber].system 1..1 MS
* identifier[licenseNumber].system = "https://sfaa.gov.tw/base/identifier/organization-license-number"
* identifier[licenseNumber].value 1..1 MS
* identifier[licenseNumber] ^short = "機構許可證字號。"

* extension contains
    TWSSOrganizationEstablishmentTypeExtension named establishmentType 0..1 MS and
    TWSSOrganizationRegistrationDateExtension named registrationDate 0..1 MS and
    TWSSOrganizationCompetentAuthority named competentAuthority 0..1 MS and
    TWSSOrganizationCapacity named capacity 0..* MS and
    TWSSOrganizationUsableArea named usableArea 0..* MS and
    TWSSOrganizationStatutoryStaffing named statutoryStaffing 0..1 MS
* extension[establishmentType] ^short = "機構設立別。"
* extension[registrationDate] ^short = "機構立案日期。"
* extension[competentAuthority] ^short = "機構主管機關。"
* extension[capacity] ^short = "機構收容量能。"
* extension[usableArea] ^short = "機構可使用面積。"
* extension[statutoryStaffing] ^short = "法定設置標準人數。"

* active MS

* type 0..1 MS
* type from TWSSOrganizationTypeVS (extensible)
* type ^short = "機構類別；服務、安置或收托流程中的處所類型應由對應流程資料表達。"

* name MS
* name 1..1
* name ^short = "機構名稱。"

* alias MS

* telecom MS
* telecom.system MS
* telecom.value MS
* telecom.use MS
* telecom ^short = "機構電話、傳真、電子郵件或其他聯絡方式。"

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
* address ^short = "機構地址。"

* partOf only Reference(OrganizationTWSSBase)
* partOf MS
* partOf ^short = "上層機構或主管組織。"

* contact MS
* contact.purpose MS
* contact.name MS
* contact.telecom MS
* contact.address MS
* contact.address only AddressTWSSBase
* contact ^short = "機構聯絡窗口或負責人摘要資料；若需獨立表示人員角色，建議使用 PractitionerRoleTWSSBase。"
