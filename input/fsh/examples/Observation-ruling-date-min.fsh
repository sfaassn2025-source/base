Instance: ruling-date-min
InstanceOf: RulingDateObservationTWSSBase
Title: "裁定日期範例"
Description: "符合裁定日期 Observation TWSS Base Profile 的範例。"
Usage: #example

* status = #final
* code.text = "安置裁定日期"
* subject = Reference(pat-min)
* valueDateTime = "2026-07-29T00:00:00+08:00"
* text.status = #generated
* text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  <h3><b>安置裁定日期</b></h3>
  <p><b>個案</b>：<a href="Patient-pat-min.html">Patient/pat-min</a> "王小明"</p>
  <p><b>裁定日期</b>：2026-07-29T00:00:00+08:00</p>
</div>
"""
