CodeSystem: TWSSVisitTarget
Id: twss-visit-target
Title: "TWSS-訪視對象"
Description: "個案服務評估使用的訪視對象代碼。"
* ^version = "0.0.1"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete
* #0 "案主本人"
* #1 "案主的朋友"
* #2 "案主的父母親"
* #3 "寄養家庭"
* #4 "原生家庭"
* #5 "親屬家庭"
* #99 "其他"

ValueSet: TWSSVisitTargetVS
Id: twss-visit-target-vs
Title: "TWSS-訪視對象值集"
Description: "個案服務評估使用的訪視對象代碼。"
* ^version = "0.0.1"
* ^status = #active
* ^experimental = false
* include codes from system TWSSVisitTarget
