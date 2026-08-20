CodeSystem: TWSSPlacementEnded
Id: twss-placement-ended
Title: "TWSS-是否結束安置代碼系統"
Description: "TWSS 是否結束安置代碼。"
* ^version = "0.0.1"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete
* #Y "是"
* #N "否"
* #X "變更安置處所"
* #Z "不詳"

ValueSet: TWSSPlacementEndedVS
Id: twss-placement-ended-vs
Title: "TWSS-是否結束安置值集"
Description: "TWSS 是否結束安置值集。"
* ^version = "0.0.1"
* ^status = #active
* ^experimental = false
* include codes from system TWSSPlacementEnded

CodeSystem: TWSSPlacementNoFollowUpReason
Id: twss-placement-no-follow-up-reason
Title: "TWSS-安置未轉後追原因代碼系統"
Description: "TWSS 安置未轉後追原因代碼。"
* ^version = "0.0.1"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete
* #0 "出養個案"
* #1 "安置期間死亡"
* #2 "結束安置後移居國外"
* #3 "安置期間進入司法系統服刑或接受感化教育"
* #99 "其他"

ValueSet: TWSSPlacementNoFollowUpReasonVS
Id: twss-placement-no-follow-up-reason-vs
Title: "TWSS-安置未轉後追原因值集"
Description: "TWSS 安置未轉後追原因值集。"
* ^version = "0.0.1"
* ^status = #active
* ^experimental = false
* include codes from system TWSSPlacementNoFollowUpReason
