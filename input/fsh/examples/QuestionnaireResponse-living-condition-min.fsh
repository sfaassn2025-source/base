Instance: living-condition-questionnaire-response-min
InstanceOf: AssessmentQuestionnaireResponseTWSSBase
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
* text.status = #generated
* text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  <h3><b>居住狀況評估回覆</b></h3>
  <p><b>個案</b>：<a href="Patient-pat-min.html">Patient/pat-min</a> "王小明"</p>
  <p><b>依據通報</b>：<a href="ServiceRequest-case-report-min.html">ServiceRequest/case-report-min</a></p>
  <p><b>評估接觸</b>：<a href="Encounter-assessment-service-min.html">Encounter/assessment-service-min</a></p>
  <p><b>住所類型</b>：自宅 <span style="background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki">（<a href="ValueSet-twss-living-type-vs.html">住所類型值集</a>#A）</span></p>
</div>
"""
