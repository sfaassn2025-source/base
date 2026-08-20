Instance: transition-min
InstanceOf: ServiceRequestTransitionTWSSBase
Title: "個案轉銜範例"
Description: "原服務系統向轉銜系統提出個案轉銜需求的範例。"
Usage: #example

* status = #active
* intent = #order
* category.text = "個案轉銜"
* code = TWSSEpisodeOfCareType#disability-transition "身心障礙轉銜服務"
* subject = Reference(pat-min)
* requester = Reference(org-min)
* performer = Reference(org-min)
* authoredOn = "2026-08-19"
* text.status = #generated
* text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  <h3><b>個案轉銜資料</b></h3>
  <p><b>轉銜日期</b>：2026-08-19</p>
  <p><b>個案</b>：<a href="Patient-pat-min.html">Patient/pat-min</a> "王小明"</p>
  <p><b>發起轉銜單位</b>：<a href="Organization-org-min.html">Organization/org-min</a> "社家署示範機構"</p>
  <p><b>處理轉銜單位</b>：<a href="Organization-org-min.html">Organization/org-min</a> "社家署示範機構"</p>
</div>
"""
