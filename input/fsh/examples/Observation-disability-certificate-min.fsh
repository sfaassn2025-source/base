Instance: disability-certificate-status-min
InstanceOf: DisabilityCertificateObservationTWSSBase
Usage: #example
Title: "身心障礙證明狀態範例"
Description: "符合身心障礙證明狀態 Observation TWSS Base Profile 的最小範例。"
* status = #final
* code = TWSSObservationType#disability-certificate-status "身心障礙證明狀態"
* subject = Reference(pat-min)
* effectiveDateTime = "2026-08-08"
* text.status = #generated
* text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  <h3><b>身心障礙證明狀態</b></h3>
  <p><b>個案</b>：<a href="Patient-pat-min.html">Patient/pat-min</a> "王小明"</p>
  <p><b>觀察項目</b>：身心障礙證明狀態 <span style="background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki">（<a href="CodeSystem-twss-observation-type.html">TWSS 評估觀察類型</a>#disability-certificate-status）</span></p>
  <p><b>觀察日期</b>：2026-08-08</p>
</div>
"""
