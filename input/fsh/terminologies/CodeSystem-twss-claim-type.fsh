CodeSystem: TWSSClaimType
Id: twss-claim-type
Title: "TWSS-補助申請類型"
Description: "衛生福利部社會及家庭署業務使用的補助申請上位類型代碼。具體補助項目應使用 Claim.item.productOrService 表達。"
* ^version = "0.0.1"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete
* #social-welfare-subsidy "社會福利補助申請"

ValueSet: TWSSClaimTypeVS
Id: twss-claim-type-vs
Title: "TWSS-補助申請類型值集"
Description: "FHIR 原生 Claim 類型代碼，及衛生福利部社會及家庭署補助申請使用的社福上位類型代碼。"
* ^version = "0.0.1"
* ^status = #active
* ^experimental = false
* include codes from system http://terminology.hl7.org/CodeSystem/claim-type
* include codes from system TWSSClaimType
