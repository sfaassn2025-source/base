Instance: case-intake-assessment-min
InstanceOf: CaseIntakeAssessmentTaskTWSSBase
Title: "個案受理與評估範例"
Description: "符合個案受理與評估 Task TWSS Base Profile 的範例。"
Usage: #example

* status = #in-progress
* intent = #order
* businessStatus = TWSSServiceCaseStatus#6 "評估中個案"
* for = Reference(pat-min)
* focus = Reference(case-report-min)
* input[caseType].type.coding.system = "https://sfaa.gov.tw/base/CodeSystem/twss-task-input-type"
* input[caseType].type.coding.code = #case-type
* input[caseType].type.coding.display = "評估案件類型"
* input[caseType].valueCodeableConcept = TWSSEpisodeOfCareType#child-placement "兒少安置及教養服務"
* text.status = #generated
* text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  <h3><b>個案受理與評估</b></h3>
  <p><b>案件狀態</b>：評估中個案 <span style="background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki">（<a href="CodeSystem-twss-service-case-status.html">TWSS 個案服務案件狀態</a>#6）</span></p>
  <p><b>評估案件類型</b>：兒少安置及教養服務 <span style="background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki">（<a href="CodeSystem-twss-episode-of-care-type.html">TWSS 個案服務或補助案件類型</a>#child-placement）</span></p>
  <p><b>個案</b>：<a href="Patient-pat-min.html">Patient/pat-min</a> "王小明"</p>
  <p><b>通報</b>：<a href="ServiceRequest-case-report-min.html">ServiceRequest/case-report-min</a></p>
</div>
"""
