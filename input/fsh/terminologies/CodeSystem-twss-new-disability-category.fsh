CodeSystem: TWSSNewDisabilityCategory
Id: twss-new-disability-category
Title: "TWSS-新制障礙類別細項"
Description: "身心障礙新制障礙類別細項代碼。"
* ^version = "0.0.1"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete
* #1 "視覺障礙"
* #2 "聽覺機能障礙"
* #3 "聲音或語言機能障礙"
* #4 "肢體障礙"
* #5 "智能障礙"
* #6 "心臟"
* #7 "肝臟"
* #8 "呼吸器官"
* #9 "腎臟"
* #10 "吞嚥機能"
* #11 "胃"
* #12 "腸道"
* #13 "膀胱"
* #14 "造血機能"
* #15 "顏面損傷"
* #16 "植物人"
* #17 "失智症"
* #18 "自閉症"
* #19 "染色體異常"
* #20 "先天代謝異常"
* #21 "其他先天缺陷"
* #22 "慢性精神病"
* #23 "平衡機能障礙"
* #24 "頑性（難治型）癲癇症"
* #25 "罕見疾病"

ValueSet: TWSSNewDisabilityCategoryVS
Id: twss-new-disability-category-vs
Title: "TWSS-新制障礙類別細項值集"
Description: "身心障礙新制障礙類別細項代碼。"
* ^version = "0.0.1"
* ^status = #active
* ^experimental = false
* include codes from system TWSSNewDisabilityCategory
