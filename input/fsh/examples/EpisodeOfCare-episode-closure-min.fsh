Instance: episode-closure-min
InstanceOf: EpisodeOfCareTWSSBase
Title: "個案服務案件結案範例"
Description: "符合 EpisodeOfCare TWSS Base Profile 的結案範例。"
Usage: #example

* identifier[caseNumber].value = "EOC-CLOSE-001"
* status = #finished
* type[0].coding[0] = TWSSEpisodeOfCareType#early-intervention "兒童發展通報轉介及個案管理服務"
* patient = Reference(pat-min)
* managingOrganization = Reference(org-min)
* period.start = "2026-01-01"
* period.end = "2026-07-31"
* extension[caseCloseReason].valueCodeableConcept.text = "服務目標已達成"
* extension[serviceCaseStatus].valueCodeableConcept.coding = TWSSCaseStatus#C "已結案"
* extension[isReferredAtClosure].valueBoolean = false
* text.status = #generated
* text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  <h3><b>個案服務案件結案資料</b></h3>
  <p><b>案件編號</b>：EOC-CLOSE-001</p>
  <p><b>案件狀態</b>：finished</p>
  <p><b>個案</b>：<a href="Patient-pat-min.html">Patient/pat-min</a> "王小明"</p>
  <p><b>服務期間</b>：2026-01-01 至 2026-07-31</p>
  <p><b>結案原因[extension: <a href="StructureDefinition-twss-case-close-reason.html">twss-case-close-reason</a>]</b>：服務目標已達成</p>
  <p><b>案件狀態[extension: <a href="StructureDefinition-twss-case-status-extension.html">twss-case-status-extension</a>]</b>：已結案</p>
  <p><b>結案時是否轉介[extension: <a href="StructureDefinition-twss-is-referred-at-closure.html">twss-is-referred-at-closure</a>]</b>：否</p>
</div>
"""
