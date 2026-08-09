Instance: adl-questionnaire-response-min
InstanceOf: QuestionnaireResponseTWSSBase
Usage: #example
Title: "日常生活功能 ADL 評估回覆範例"
Description: "依日常生活功能 ADL 評估 Questionnaire 填寫的 QuestionnaireResponse 範例。"
* questionnaire = "https://sfaa.gov.tw/base/Questionnaire/twss-adl-assessment"
* status = #completed
* subject = Reference(pat-min)
* basedOn[0] = Reference(case-report-min)
* encounter = Reference(assessment-service-min)
* authored = "2026-08-08T09:00:00+08:00"
* author = Reference(prac-min)
* item[0].linkId = "9"
* item[0].text = "日常生活功能（ADL）"
* item[0].item[0].linkId = "9.1"
* item[0].item[0].text = "生活自理"
* item[0].item[0].answer[0].valueCoding = TWSSADLLevel#C "2級（中度問題）"
* item[0].item[1].linkId = "9.2"
* item[0].item[1].text = "肢體行動"
* item[0].item[1].answer[0].valueCoding = TWSSADLLevel#B "1級（輕度問題）"
* item[0].item[2].linkId = "9.3"
* item[0].item[2].text = "四處走動"
* item[0].item[2].answer[0].valueCoding = TWSSADLLevel#C "2級（中度問題）"
* item[0].item[3].linkId = "9.4"
* item[0].item[3].text = "居家活動"
* item[0].item[3].answer[0].valueCoding = TWSSADLLevel#D "3級（重度問題）"
