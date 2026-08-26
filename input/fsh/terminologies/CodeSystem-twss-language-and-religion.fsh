CodeSystem: TWSSPrimaryLanguage
Id: twss-primary-language
Title: "TWSS-主要語言代碼系統"
Description: "TWSS 個案主要語言代碼。"
* ^version = "0.0.1"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete
* #1 "國語"
* #2 "閩南語"
* #3 "客家話"
* #4 "原住民語"
* #5 "其他"
* #6 "手語"
* #7 "英語"

ValueSet: TWSSPrimaryLanguageVS
Id: twss-primary-language-vs
Title: "TWSS-主要語言值集"
Description: "TWSS 個案主要語言值集，包含 FHIR 語言代碼與社政領域補充代碼。"
* ^version = "0.0.1"
* ^status = #active
* ^experimental = false
* urn:ietf:bcp:47#zh-TW
* urn:ietf:bcp:47#en
* TWSSPrimaryLanguage#2
* TWSSPrimaryLanguage#3
* TWSSPrimaryLanguage#4
* TWSSPrimaryLanguage#5
* TWSSPrimaryLanguage#6

CodeSystem: TWSSReligion
Id: twss-religion
Title: "TWSS-宗教信仰代碼系統"
Description: "TWSS 宗教信仰代碼。"
* ^version = "0.0.1"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete
* #A "佛教"
* #B "道教"
* #C "基督教"
* #D "天主教"
* #E "一貫道"
* #F "回教"
* #G "摩門教"
* #H "民間信仰"
* #I "無"
* #X "無法得知"
* #Z "其他"

ValueSet: TWSSReligionVS
Id: twss-religion-vs
Title: "TWSS-宗教信仰值集"
Description: "TWSS 宗教信仰值集。"
* ^version = "0.0.1"
* ^status = #active
* ^experimental = false
* include codes from system TWSSReligion
