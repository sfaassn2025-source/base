CodeSystem: TWSSFamilyStructure
Id: twss-family-structure
Title: "TWSS-家庭結構代碼系統"
Description: "個案家庭結構代碼。家庭結構依家庭成員組成及共同居住關係判定；獨居表示實際單獨居住，單人家庭表示戶籍或家戶統計上僅有一人，兩者不視為相同概念。"
* ^version = "0.0.1"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete
* #A "獨居" "一個人單獨居住，沒有與家人或其他人同住。"
* #B "單親家庭" "由一位父親或母親與其子女同住。"
* #C "擴展家庭" "也稱大家庭或聯合家庭。包括兩個或兩個以上核心家庭，但不是由於夫婦關係的伸張，即除夫婦子女以外，尚可包括已婚的子女、祖父母或其他親屬。"
* #D "折衷/主幹家庭" "父母與一個已婚子女及其配偶、孫子女同住，通常為三代同堂，每一代只有一對夫妻。"
* #E "核心家庭" "由一對夫妻或伴侶與其未婚子女組成，也包含沒有子女的夫妻。"
* #F "繼親家庭" "也稱重組家庭。夫妻至少一方帶著前段婚姻或關係的子女，與新伴侶共同組成的家庭。"
* #G "隔代家庭" "祖父母或外祖父母與孫子女同住，中間的父母輩沒有同住。"
* #H "手足家庭" "兄弟姊妹同住，沒有父母或其他長輩同住。"
* #I "同性伴侶家庭" "由同性伴侶組成的家庭，不論是否已登記結婚，可能包含其子女。"
* #J "同居家庭" "未登記結婚的伴侶共同生活，可能包含子女。"
* #K "單人家庭" "戶籍或家戶統計上只有一人的家戶。"
* #Z "其他家庭" "以上類型都不符合的居住或家庭型態，例如與朋友同住、寄養家庭、機構安置等。"

CodeSystem: TWSSChildrenStatus
Id: twss-children-status
Title: "TWSS-子女狀態代碼系統"
Description: "個案子女狀態代碼。"
* ^version = "0.0.1"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete
* #0 "無"
* #1 "有"

CodeSystem: TWSSSpecialEducationType
Id: twss-special-education-type
Title: "TWSS-特殊教育學生類型代碼系統"
Description: "特殊教育學生類型代碼。"
* ^version = "0.0.1"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete
* #0 "疑似生"
* #1 "確認生"
* #2 "一般生"

CodeSystem: TWSSEmotionalControlAbility
Id: twss-emotional-control-ability
Title: "TWSS-情緒控制能力代碼系統"
Description: "情緒控制能力評估代碼。"
* ^version = "0.0.1"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete
* #1 "良好"
* #2 "尚可"
* #3 "待加強"
* #0 "本項不適用"

CodeSystem: TWSSInteractionAssessment
Id: twss-interaction-assessment
Title: "TWSS-人際互動狀況分級代碼系統"
Description: "人際互動狀況分級代碼。"
* ^version = "0.0.1"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete
* #1 "良好"
* #2 "尚可"
* #3 "不佳"

CodeSystem: TWSSDevelopmentalDelayCategory
Id: twss-developmental-delay-category
Title: "TWSS-發展遲緩類別代碼系統"
Description: "發展遲緩類別評估代碼。"
* ^version = "0.0.1"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete
* #1 "無異常"
* #2 "臨界/疑似發展遲緩"
* #3 "發展遲緩"

CodeSystem: TWSSEmploymentStatus
Id: twss-employment-status
Title: "TWSS-就業現況代碼系統"
Description: "個案就業現況代碼。"
* ^version = "0.0.1"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete
* #A "就學中"
* #B "就業"
* #C "待業"
* #D "升學加就業"
* #E "未升學未就業"
* #F "待役中"
* #G "服役中"
* #H "學齡前"
* #I "補習中(未有就學、就業狀況)"
* #J "失聯"
* #K "待(生)產/育兒"
* #L "社政安置"
* #M "感化教育"
* #N "因病治療/休養"
* #Z "其他"

CodeSystem: TWSSUnemploymentReason
Id: twss-unemployment-reason
Title: "TWSS-未就業原因代碼系統"
Description: "未就業原因代碼。"
* ^version = "0.0.1"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete
* #A "年齡限制"
* #B "學歷限制"
* #C "無工作意願"
* #D "工作技能不足"
* #E "缺乏工作機會"
* #F "交通/行動困難"
* #G "體能狀況無法勝任"
* #H "薪資不滿意"
* #I "工作內容不適合"
* #J "在學或準備升學"
* #K "家庭因素無法外出工作"
* #L "家庭經濟許可，不必工作"
* #M "工作場所欠缺無障礙措施"
* #Z "其他"
