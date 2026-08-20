Instance: assessment-result-min
InstanceOf: AssessmentResultObservationTWSSBase
Title: "評估結果範例"
Description: "完成個案服務評估後，由專業人員記錄最終評估摘要的範例。"
Usage: #example

* status = #final
* code = TWSSObservationType#assessment-result "評估結果"
* subject = Reference(pat-min)
* encounter = Reference(assessment-service-min)
* performer[0] = Reference(prac-min)
* effectiveDateTime = "2026-08-19T10:30:00+08:00"
* valueString = "確認個案家庭支持功能不足，建議提供相關協助。"
* text.status = #generated
* text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  <h3><b>評估結果資料</b></h3>
  <p><b>個案</b>：<a href="Patient-pat-min.html">Patient/pat-min</a> "王小明"</p>
  <p><b>評估接觸</b>：<a href="Encounter-assessment-service-min.html">Encounter/assessment-service-min</a></p>
  <p><b>評估人員</b>：<a href="Practitioner-prac-min.html">Practitioner/prac-min</a> "王社工"</p>
  <p><b>評估結果</b>：確認個案家庭支持功能不足，建議提供相關協助。</p>
</div>
"""
