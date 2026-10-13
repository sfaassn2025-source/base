Instance: cms-level-min
InstanceOf: CMSLevelObservationTWSSBase
Title: "CMS等級範例"
Description: "接收長照個管 CMS 評估結果的範例。"
Usage: #example

* status = #final
* code = http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-assessment-component#cms-level "CMS 等級"
* subject = Reference(pat-min)
* encounter = Reference(assessment-service-min)
* valueCodeableConcept = http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-cmslevel#3 "3"
* text.status = #generated
* text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  <h3><b>CMS等級資料</b></h3>
  <p><b>個案</b>：<a href="Patient-pat-min.html">Patient/pat-min</a> "王小明"</p>
  <p><b>評估接觸</b>：<a href="Encounter-assessment-service-min.html">Encounter/assessment-service-min</a></p>
  <p><b>CMS等級</b>：第三級</p>
</div>
"""
