Instance: condition-min
InstanceOf: ConditionTWSSBase
Title: "健康與障礙狀況範例"
Description: "符合 Condition TWSS Base Profile 的最小健康與障礙狀況範例。"
Usage: #example

* code.coding[icd10-cm-2023].system = "https://twcore.mohw.gov.tw/ig/twcore/CodeSystem/icd-10-cm-2023-tw"
* code.coding[icd10-cm-2023].code = #F84.0
* code.coding[icd10-cm-2023].display = "Autistic disorder"
* code.coding[health-and-disease-status].system = "https://sfaa.gov.tw/base/CodeSystem/twss-health-status-option"
* code.coding[health-and-disease-status].code = #5
* code.coding[health-and-disease-status].display = "發展遲緩"
* severity.coding[0].system = "https://sfaa.gov.tw/base/CodeSystem/twss-health-status-level"
* severity.coding[0].code = #2
* severity.coding[0].display = "尚可（體弱）"
* subject = Reference(pat-min)
* recordedDate = "2026-06-30"
* text.status = #generated
* text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  <h3><b>健康與障礙狀況資料</b></h3>
  <p><b>ICD 診斷</b>：Autistic disorder <span style="background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki">（ <a href="https://twcore.mohw.gov.tw/ig/twcore/0.3.2/CodeSystem-icd-10-cm-2023-tw.html">ICD-10-CM 2023 臺灣版</a>#F84.0）</span></p>
  <p><b>狀況文字</b>：自閉症</p>
  <p><b>健康與疾病狀況</b>：發展遲緩 <span style="background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki">（ <a href="CodeSystem-twss-health-status-option.html">健康與疾病狀況</a>#5）</span></p>
  <p><b>健康狀況分級</b>：尚可（體弱） <span style="background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki">（ <a href="CodeSystem-twss-health-status-level.html">健康狀況分級</a>#2）</span></p>
  <p><b>個案</b>： <a href="Patient-pat-min.html">Patient/pat-min</a> "王小明"</p>
  <p><b>鑑定日期</b>：2026-06-30</p>
</div>
"""
