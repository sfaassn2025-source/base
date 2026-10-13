CodeSystem: TWSSPlacementLocationType
Id: twss-placement-location-type
Title: "TWSS-安置處所類型"
Description: "個案安置 Encounter 使用的安置處所類型代碼。"
* ^version = "0.0.1"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete
* #A "兒少安置及教養機構"
* #B "寄養家庭"
* #C "親屬安置"
* #D "團體家庭"
* #E "居家托育人員"
* #F "身心障礙福利機構"
* #G "護理之家"
* #H "長期照顧服務機構"
* #I "精神復健機構（康復之家）"
* #J "醫院"
* #K "中途學校"
* #L "感化教育處所"
* #M "緊急短期中心"
* #Z "其他"

ValueSet: TWSSPlacementLocationTypeVS
Id: twss-placement-location-type-vs
Title: "TWSS-安置處所類型值集"
Description: "個案安置 Encounter 使用的安置處所類型代碼。"
* ^version = "0.0.1"
* ^status = #active
* ^experimental = false
* include codes from system TWSSPlacementLocationType
