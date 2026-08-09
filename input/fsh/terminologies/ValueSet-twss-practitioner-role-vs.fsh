ValueSet: TWSSPractitionerRoleVS
Id: twss-practitioner-role-vs
Title: "SNOMED CT + 臺灣醫事司醫事人員類別 + TWSS 人員角色 ValueSet"
Description: "TWSS Base IG 人員職務或角色值集。優先採用 TW Core 0.3.2 的 SNOMED CT + 臺灣醫事司醫事人員類別值集；該值集無法表達社家署社福業務角色時，優先使用 SNOMED CT 既有標準碼。"
* ^version = "0.0.1"
* ^experimental = false
* include codes from valueset https://twcore.mohw.gov.tw/ig/twcore/ValueSet/health-professional-sct-tw
* http://snomed.info/sct#106328005 "Social worker"
* http://snomed.info/sct#106333009 "Manager"
* http://snomed.info/sct#158939004 "Child care officer"
