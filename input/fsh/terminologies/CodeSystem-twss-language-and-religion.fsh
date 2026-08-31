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

ValueSet: TWSSAborigineLanguageVS
Id: twss-aborigine-language-vs
Title: "TWSS-原住民語言值集"
Description: "TWSS 個案可使用的原住民語言；採用 ISO 639-3 對應之 BCP 47 語言標籤。"
* ^version = "0.0.1"
* ^status = #active
* ^experimental = false
* urn:ietf:bcp:47#ami "Amis"
* urn:ietf:bcp:47#tay "Atayal"
* urn:ietf:bcp:47#pwn "Paiwan"
* urn:ietf:bcp:47#bnn "Bunun"
* urn:ietf:bcp:47#pyu "Puyuma"
* urn:ietf:bcp:47#dru "Rukai"
* urn:ietf:bcp:47#tsu "Tsou"
* urn:ietf:bcp:47#xsy "Saisiyat"
* urn:ietf:bcp:47#tao "Yami"
* urn:ietf:bcp:47#ssf "Thao"
* urn:ietf:bcp:47#ckv "Kavalan"
* urn:ietf:bcp:47#trv "Taroko"
* urn:ietf:bcp:47#szy "Sakizaya"
* urn:ietf:bcp:47#sxr "Saaroa"
* urn:ietf:bcp:47#xnb "Kanakanabu"
* ^compose.include[0].concept[0].designation[0].language = #zh-tw
* ^compose.include[0].concept[0].designation[0].value = "阿美語"
* ^compose.include[0].concept[1].designation[0].language = #zh-tw
* ^compose.include[0].concept[1].designation[0].value = "泰雅語"
* ^compose.include[0].concept[2].designation[0].language = #zh-tw
* ^compose.include[0].concept[2].designation[0].value = "排灣語"
* ^compose.include[0].concept[3].designation[0].language = #zh-tw
* ^compose.include[0].concept[3].designation[0].value = "布農語"
* ^compose.include[0].concept[4].designation[0].language = #zh-tw
* ^compose.include[0].concept[4].designation[0].value = "卑南語"
* ^compose.include[0].concept[5].designation[0].language = #zh-tw
* ^compose.include[0].concept[5].designation[0].value = "魯凱語"
* ^compose.include[0].concept[6].designation[0].language = #zh-tw
* ^compose.include[0].concept[6].designation[0].value = "鄒語"
* ^compose.include[0].concept[7].designation[0].language = #zh-tw
* ^compose.include[0].concept[7].designation[0].value = "賽夏語"
* ^compose.include[0].concept[8].designation[0].language = #zh-tw
* ^compose.include[0].concept[8].designation[0].value = "雅美語／達悟語"
* ^compose.include[0].concept[9].designation[0].language = #zh-tw
* ^compose.include[0].concept[9].designation[0].value = "邵語"
* ^compose.include[0].concept[10].designation[0].language = #zh-tw
* ^compose.include[0].concept[10].designation[0].value = "噶瑪蘭語"
* ^compose.include[0].concept[11].designation[0].language = #zh-tw
* ^compose.include[0].concept[11].designation[0].value = "太魯閣語／賽德克語"
* ^compose.include[0].concept[12].designation[0].language = #zh-tw
* ^compose.include[0].concept[12].designation[0].value = "撒奇萊雅語"
* ^compose.include[0].concept[13].designation[0].language = #zh-tw
* ^compose.include[0].concept[13].designation[0].value = "拉阿魯哇語"
* ^compose.include[0].concept[14].designation[0].language = #zh-tw
* ^compose.include[0].concept[14].designation[0].value = "卡那卡那富語"

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
