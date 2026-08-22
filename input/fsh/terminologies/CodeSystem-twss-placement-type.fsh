CodeSystem: TWSSPlacementType
Id: twss-placement-type
Title: "TWSS-安置類型"
Description: "個案安置 Encounter 使用的安置類型代碼。"
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
* #N "與兒童及少年有長期正向穩定依附關係之第三人"
* #X "後續追蹤案件"
* #Z "其他"

ValueSet: TWSSPlacementTypeVS
Id: twss-placement-type-vs
Title: "TWSS-安置類型值集"
Description: "個案安置 Encounter 使用的安置類型代碼。"
* ^version = "0.0.1"
* ^status = #active
* ^experimental = false
* include codes from system TWSSPlacementType
