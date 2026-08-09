Instance: living-condition-questionnaire-response-min
InstanceOf: QuestionnaireResponseTWSSBase
Usage: #example
Title: "居住狀況評估回覆範例"
Description: "符合社福評估 QuestionnaireResponse TWSS Base Profile 的居住狀況評估回覆範例。"
* questionnaire = "https://sfaa.gov.tw/base/Questionnaire/living-condition-assessment"
* status = #completed
* subject = Reference(pat-min)
* basedOn[0] = Reference(case-report-min)
* encounter = Reference(assessment-service-min)
* authored = "2026-08-08T09:00:00+08:00"
* author = Reference(prac-min)
* item[0].linkId = "1"
* item[0].text = "居住狀況"
* item[0].item[0].linkId = "1.1"
* item[0].item[0].text = "住所類型"
* item[0].item[0].answer[0].valueCoding = TWSSLivingType#A "自宅"
