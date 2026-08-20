ValueSet: TWSSWelfareTypeVS
Id: twss-welfare-type-vs
Title: "TWSS-FHIR Coverage Type與福利身分別值集"
Description: "Coverage.type 可使用之保障或福利類型值集。優先採用 FHIR Coverage Type and Self-Pay Codes；FHIR 原生代碼無法精確表達社家署福利身分別時，可使用 TWSS 福利身分別代碼。"
* ^version = "0.0.1"
* ^experimental = false
* include codes from valueset http://hl7.org/fhir/ValueSet/coverage-type
* include codes from system TWSSWelfareType

ValueSet: TWSSWelfareIdentityTypeVS
Id: twss-welfare-identity-type-vs
Title: "TWSS-福利身分別值集"
Description: "個案服務評估使用的福利身分別代碼。"
* ^version = "0.0.1"
* ^experimental = false
* include codes from system TWSSWelfareType
