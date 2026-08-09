Instance: coverage-min
InstanceOf: CoverageTWSSBase
Title: "補助資格範例"
Description: "符合 Coverage TWSS Base Profile 的最小補助資格範例。"
Usage: #example

* status = #active
* type.coding[0].system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
* type.coding[0].code = #SOCIAL
* type.coding[0].display = "social service program"
* type.coding[1].system = "https://sfaa.gov.tw/base/CodeSystem/twss-welfare-type"
* type.coding[1].code = #B
* type.coding[1].display = "中低收入戶"
* type.text = "中低收入戶"
* beneficiary = Reference(pat-min)
* payor[0] = Reference(org-min)
* period.start = "2026-01-01"
* period.end = "2026-12-31"
* extension[aidYear].valueString = "2026"
* costToBeneficiary[0].type.text = "核定補助金額"
* costToBeneficiary[0].valueMoney.value = 1000
* costToBeneficiary[0].valueMoney.currency = #TWD
* text.status = #generated
* text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  <h3><b>補助資格資料</b></h3>
  <p><b>補助資格狀態</b>：Active</p>
  <p><b>補助類型</b>：social service program <span style="background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki">（ <a href="http://terminology.hl7.org/CodeSystem/v3-ActCode">ActCode</a>#SOCIAL）</span></p>
  <p><b>福利身分別</b>：中低收入戶 <span style="background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki">（ <a href="CodeSystem-twss-welfare-type.html">TWSS 福利身分別</a>#B）</span></p>
  <p><b>受補助人</b>： <a href="Patient-pat-min.html">Patient/pat-min</a> "王小明"</p>
  <p><b>給付單位</b>： <a href="Organization-org-min.html">Organization/org-min</a> "社家署示範機構"</p>
  <p><b>補助期間</b>：2026-01-01至2026-12-31</p>
  <p><b>補助年度[extension: <a href="StructureDefinition-twss-coverage-aid-year.html">twss-coverage-aid-year</a>]</b>：2026</p>
  <p><b>補助金額</b>：1000 TWD</p>
</div>
"""
