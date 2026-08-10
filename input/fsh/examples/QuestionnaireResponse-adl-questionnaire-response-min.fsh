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
* text.status = #generated
* text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  <h3><b>日常生活功能（ADL）評估回覆</b></h3>
  <p><b>個案</b>：<a href="Patient-pat-min.html">Patient/pat-min</a> "王小明"</p>
  <p><b>依據通報</b>：<a href="ServiceRequest-case-report-min.html">ServiceRequest/case-report-min</a></p>
  <p><b>評估接觸</b>：<a href="Encounter-assessment-service-min.html">Encounter/assessment-service-min</a></p>
  <p><b>生活自理</b>：2級（中度問題）</p>
  <p><b>肢體行動</b>：1級（輕度問題）</p>
  <p><b>四處走動</b>：2級（中度問題）</p>
  <p><b>居家活動</b>：3級（重度問題）</p>
</div>
"""
