Profile:        PractitionerRoleTWSSBase
Parent:         TWCorePractitionerRole
Id:             PractitionerRole-twss-base
Title:          "人員角色-PractitionerRole TWSS Base"
Description:    "人員角色-PractitionerRole TWSS Base Profile 表達社家署業務中的人員角色資料。"
* ^version = "0.0.1"

* identifier MS
* identifier.use MS
* identifier.type MS
* identifier.system MS
* identifier.value MS
* identifier ^short = "人員角色識別碼，例如任職紀錄編號、派案人員編號或來源系統角色識別碼。"

* active MS

* period MS
* period.start MS
* period.end MS
* period ^short = "人員到職日、離職日、派任起訖日或角色有效期間。"
* period.start ^short = "服務人到職日期。"
* period.end ^short = "服務人離職日期。"

* practitioner only Reference(PractitionerTWSSBase)
* practitioner MS
* practitioner ^short = "擔任此角色的人員。"

* organization only Reference(OrganizationTWSSBase)
* organization MS
* organization ^short = "人員任職、派任或服務所屬機構。"

* code MS
* code from TWSSPractitionerRoleVS (extensible)
* code ^short = "職稱、角色或職務類型。"
* code ^binding.description = "優先使用 TW Core 0.3.2 的 SNOMED CT + 臺灣醫事司醫事人員類別值集；若無法表達社家署社福業務角色，優先使用 SNOMED CT 既有標準碼。"

* specialty MS
* specialty ^short = "專長、服務類別或業務領域。"

* location only Reference(LocationTWSSBase)
* location MS
* location ^short = "人員提供服務的地點；托育人員可 reference 托育地址。"
* healthcareService MS

* telecom MS
* telecom.system MS
* telecom.value MS
* telecom.use MS
* telecom ^short = "此角色使用的聯絡方式，例如辦公電話或職務聯絡信箱。"

* availableTime MS
* notAvailable MS
* availabilityExceptions MS
