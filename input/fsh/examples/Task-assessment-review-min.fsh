Instance: assessment-review-min
InstanceOf: AssessmentReviewTaskTWSSBase
Title: "個案服務評估審核範例"
Description: "符合個案服務評估審核 Task TWSS Base Profile 的最小範例。"
Usage: #example

* identifier[0].system = "https://example.org/twss/assessment-review"
* identifier[0].value = "ASSESSMENT-REVIEW-001"
* status = #completed
* intent = #order
* businessStatus = TWSSReviewResult#Y "通過"
* description = "個案服務評估審核"
* for = Reference(Patient/pat-min)
* focus = Reference(ServiceRequest/case-report-min)
* input[assessmentResponse].type.coding.system = "https://sfaa.gov.tw/base/CodeSystem/twss-task-input-type"
* input[assessmentResponse].type.coding.code = #assessment-response
* input[assessmentResponse].type.coding.display = "評估回覆"
* input[assessmentResponse].valueReference = Reference(QuestionnaireResponse/adl-questionnaire-response-min)
* note[0].text = "審核意見：資料符合核定條件。"
* output[caseDisposition].type.coding.system = "https://sfaa.gov.tw/base/CodeSystem/twss-task-output-type"
* output[caseDisposition].type.coding.code = #open-case-decision
* output[caseDisposition].type.coding.display = "是否開案"
* output[caseDisposition].valueCodeableConcept = TWSSOpenCaseStatus#Y "開案"
* output[openedEpisodeOfCare].type.coding.system = "https://sfaa.gov.tw/base/CodeSystem/twss-task-output-type"
* output[openedEpisodeOfCare].type.coding.code = #opened-episode-of-care
* output[openedEpisodeOfCare].type.coding.display = "開案案件"
* output[openedEpisodeOfCare].valueReference = Reference(EpisodeOfCare/episode-base)
* text.status = #generated
* text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  <h3><b>個案服務評估審核</b></h3>
  <p><b>個案</b>：<a href="Patient-pat-min.html">Patient/pat-min</a></p>
  <p><b>任務狀態</b>：completed</p>
  <p><b>業務審核結果</b>：核定</p>
  <p><b>是否開案</b>：<span style="background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki"><a href="CodeSystem-twss-open-case-status.html">TWSS 是否開案代碼系統</a>#Y</span> 開案</p>
  <p><b>建立案件</b>：<a href="EpisodeOfCare-episode-base.html">EpisodeOfCare/episode-base</a></p>
  <p><b>審核意見</b>：資料符合核定條件。</p>
  <p><b>評估結果</b>：<a href="QuestionnaireResponse-adl-questionnaire-response-min.html">ADL 日常生活功能評估</a></p>
</div>
"""
