Instance: penalty-legal-basis-min
InstanceOf: PenaltyLegalBasisObservationTWSSBase
Title: "裁罰法規依據範例"
Description: "符合裁罰法規依據 Observation TWSS Base Profile 的範例。"
Usage: #example

* status = #final
* code.text = "裁罰法規依據"
* focus = Reference(org-min)
* effectiveDateTime = "2026-07-29T10:00:00+08:00"
* performer[0] = Reference(org-min)
* valueString = "兒少法第21條"
* text.status = #generated
* text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  <h3><b>裁罰法規依據</b></h3>
  <p><b>受裁罰機構</b>：<a href="Organization-org-min.html">Organization/org-min</a></p>
  <p><b>法規依據</b>：兒少法第21條</p>
  <p><b>記錄日期</b>：2026-07-29T10:00:00+08:00</p>
</div>
"""
