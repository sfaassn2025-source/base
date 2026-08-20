ValueSet: TWSSOrganizationTypeVS
Id: twss-organization-type-vs
Title: "TWSS-機構類型值集"
Description: "社家署業務中 Organization Resource 可使用之機構類別代碼集合；優先使用 FHIR Organization type 原值集，無法精確表達時可使用 TWSS 機構類別代碼。服務、安置或收托流程中的處所類型不納入本值集。"
* ^version = "0.0.1"
* ^experimental = false
* include codes from valueset http://hl7.org/fhir/ValueSet/organization-type
* include codes from system TWSSOrganizationType
