Instance: organization-audit-result-min
InstanceOf: OrganizationAuditObservationTWSSBase
Title: "機構查核結果範例"
Description: "符合機構查核結果 Observation TWSS Base Profile 的範例。"
Usage: #example

* status = #final
* code.text = "查核結果"
* focus = Reference(org-min)
* effectiveDateTime = "2026-07-29T10:00:00+08:00"
* performer[0] = Reference(org-min)
* valueBoolean = true
* text.status = #generated
* text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  <h3><b>機構查核結果</b></h3>
  <p><b>受查核機構</b>：<a href="Organization-org-min.html">Organization/org-min</a></p>
  <p><b>查核結果</b>：符合</p>
  <p><b>查核日期</b>：2026-07-29T10:00:00+08:00</p>
  <p><b>執行機構</b>：<a href="Organization-org-min.html">Organization/org-min</a></p>
</div>
"""
