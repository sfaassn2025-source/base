Instance: disease-type-min
InstanceOf: ConditionTWSSBase
Title: "疾病類型範例"
Description: "符合 Condition TWSS Base Profile 的疾病類型範例。"
Usage: #example

* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed
* code.coding[disease-type] = TWSSDiseaseType#B "氣喘"
* subject = Reference(pat-min)
* recordedDate = "2026-08-05"
* text.status = #generated
* text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  <h3><b>疾病類型</b></h3>
  <p><b>疾病類型</b>：氣喘 <span style="background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki">（<a href="CodeSystem-twss-disease-type.html">疾病類型</a>#B）</span></p>
  <p><b>個案</b>：<a href="Patient-pat-min.html">Patient/pat-min</a></p>
  <p><b>鑑定日期</b>：2026-08-05</p>
</div>
"""
