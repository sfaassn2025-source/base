CodeSystem: TWSSProvidedFinancialSubsidy
Id: twss-provided-financial-subsidy
Title: "TWSS-提供經濟補助"
Description: "個案服務計畫中預計提供的經濟補助項目。"
* ^version = "0.0.1"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete
* #0 "低收入戶家庭生活補助"
* #1 "低收入戶身心障礙者生活補助"
* #2 "低收入戶兒童生活補助"
* #3 "低收入戶高中職生活補助"
* #4 "中低收入戶身心障礙者生活補助"
* #5 "身心障礙者生活補助"
* #6 "身心障礙者日間照顧及住宿式照顧費用補助"
* #7 "特殊境遇家庭緊急生活扶助"
* #8 "特殊境遇家庭子女生活津貼"
* #9 "特殊境遇家庭兒童子女教育補助"
* #10 "特殊境遇家庭托育津貼"
* #11 "特殊境遇家庭法律訴訟補助"
* #12 "兒童少年生活扶助"
* #13 "弱勢家庭兒童及少年緊急生活扶助"
* #14 "未滿2歲兒童育兒津貼"
* #15 "5歲至入國民小學前幼兒就學補助"
* #16 "2歲以上未滿5歲幼兒育兒津貼"
* #17 "國保遺屬年金"
* #18 "托育補助"
* #19 "低收入戶資格"
* #20 "中低收入戶資格"
* #21 "老人生活(特別照顧)津貼"
* #22 "特殊境遇家庭傷病醫療補助"
* #23 "特殊境遇家庭創業貸款補助"
* #24 "身心障礙者醫療費用補助"
* #25 "身心障礙者居家照顧費用補助"
* #26 "身心障礙者輔具費用補助"
* #27 "身心障礙者房屋租金及購屋貸款利息補貼"
* #28 "身心障礙者購買停車位貸款利息補貼或承租停車位補助"
* #29 "身心障礙者日間照顧照顧費用補助"
* #30 "身心障礙者住宿式照顧費用補助"
* #31 "身心障礙者房屋租金補貼"
* #32 "身心障礙者購屋貸款利息補貼"
* #33 "身心障礙者購買停車位貸款利息補貼"
* #34 "身心障礙者承租停車位補貼"
* #35 "身心障礙者生活補助費"
* #36 "身心障礙者交通費補助"
* #99 "其他"

ValueSet: TWSSProvidedFinancialSubsidyVS
Id: twss-provided-financial-subsidy-vs
Title: "TWSS-提供經濟補助值集"
Description: "個案服務計畫中預計提供的經濟補助項目。"
* ^version = "0.0.1"
* ^status = #active
* ^experimental = false
* include codes from system TWSSProvidedFinancialSubsidy

CodeSystem: TWSSProvidedWelfareService
Id: twss-provided-welfare-service
Title: "TWSS-提供福利服務"
Description: "個案服務計畫中預計提供的福利服務項目。"
* ^version = "0.0.1"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete
* #1 "居家護理"
* #2 "居家復健"
* #3 "身體照顧及家務服務"
* #4 "送餐服務"
* #5 "輔具服務"
* #6 "生活重建"
* #7 "心理重建"
* #8 "社區居住"
* #9 "婚姻及生育輔導"
* #10 "日間照顧服務"
* #11 "全日型住宿式照顧"
* #12 "課後照顧"
* #13 "自立生活支持服務"
* #14 "行為輔導"
* #15 "臨時及短期照顧"
* #16 "照顧者支持"
* #17 "家庭托顧"
* #18 "照顧者訓練及研習"
* #29 "友善服務"
* #30 "社區日間作業設施服務"
* #31 "夜間住宿式照顧"
* #32 "情緒支持"
* #33 "復康巴士"
* #34 "家庭關懷訪視及服務"
* #35 "婚姻輔導"
* #36 "生育輔導"
* #37 "住宿式照顧服務(全日型、夜間)"

ValueSet: TWSSProvidedWelfareServiceVS
Id: twss-provided-welfare-service-vs
Title: "TWSS-提供福利服務值集"
Description: "個案服務計畫中預計提供的福利服務項目。"
* ^version = "0.0.1"
* ^status = #active
* ^experimental = false
* include codes from system TWSSProvidedWelfareService

CodeSystem: TWSSProvidedEmploymentService
Id: twss-provided-employment-service
Title: "TWSS-提供就業服務"
Description: "個案服務計畫中預計提供的就業服務項目。"
* ^version = "0.0.1"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete
* #0 "轉介教育部青年發展署之青少年生涯探索號計畫"
* #1 "轉介公立職業訓練中心"
* #2 "轉介就服中心"
* #3 "發展職涯規劃(含自我認識/就業興趣/未來規劃等)"
* #4 "陪同工作面試/應徵"
* #5 "就業媒合(含求才派報、廠商就業機開發)"
* #6 "職場關懷"
* #7 "職場體驗"
* #8 "職場人身安全計畫"
* #9 "情緒支持與輔導"
* #10 "已由就服中心/站/台協助"
* #15 "已由職業重建窗口協助"
* #11 "職業輔導評量"
* #12 "職業訓練"
* #13 "就業服務"
* #14 "工讀"
* #99 "其他"

ValueSet: TWSSProvidedEmploymentServiceVS
Id: twss-provided-employment-service-vs
Title: "TWSS-提供就業服務值集"
Description: "個案服務計畫中預計提供的就業服務項目。"
* ^version = "0.0.1"
* ^status = #active
* ^experimental = false
* include codes from system TWSSProvidedEmploymentService

