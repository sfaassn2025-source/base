Instance: health-status-min
InstanceOf: ConditionTWSSBase
Title: "身心健康狀況範例"
Description: "符合 Condition TWSS Base Profile 的身心健康狀況範例。"
Usage: #example

* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed
* code.coding[health-status] = TWSSHealthStatus#C "發展遲緩"
* severity = TWSSHealthStatusLevel#2 "尚可（體弱）"
* subject = Reference(pat-min)
* recordedDate = "2026-08-05"
* text.status = #generated
* text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  <h3><b>身心健康狀況</b></h3>
  <p><b>身心健康狀況</b>：發展遲緩 <span style="background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki">（<a href="CodeSystem-twss-health-status.html">身心健康狀況</a>#C）</span></p>
  <p><b>健康狀況分級</b>：尚可（體弱） <span style="background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki">（<a href="CodeSystem-twss-health-status-level.html">健康狀況分級</a>#2）</span></p>
  <p><b>個案</b>：<a href="Patient-pat-min.html">Patient/pat-min</a></p>
  <p><b>鑑定日期</b>：2026-08-05</p>
</div>
"""
