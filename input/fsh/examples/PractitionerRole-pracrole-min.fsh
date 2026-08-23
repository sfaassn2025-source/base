Instance: pracrole-min
InstanceOf: PractitionerRoleTWSSBase
Title: "人員角色範例"
Description: "符合 PractitionerRole TWSS Base Profile 的最小人員角色範例。"
Usage: #example

* identifier[0].system = "https://example.org/twss/practitioner-role-id"
* identifier[0].value = "ROLE-001"
* active = true
* practitioner = Reference(prac-min)
* organization = Reference(org-min)
* extension[isRelativeNanny].valueBoolean = false
* extension[practitionSalary].valueDecimal = 38000
* code[0].coding[0] = http://snomed.info/sct#106328005 "Social worker"
* code[0].text = "社工"
* period.start = "2026-01-01"
* period.end = "2026-12-31"
* telecom[0].system = #phone
* telecom[0].value = "02-22334455"
* telecom[0].use = #work
* text.status = #generated
* text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  <h3><b>人員角色資料</b></h3>
  <blockquote>
    <p><b>角色識別碼</b>：ROLE-001 （https://example.org/twss/practitioner-role-id）</p>
  </blockquote>
  <p><b>角色狀態</b>：Active</p>
  <p><b>人員</b>： <a href="Practitioner-prac-min.html">Practitioner/prac-min</a> "陳社工"</p>
  <p><b>服務機構</b>： <a href="Organization-org-min.html">Organization/org-min</a> "社家署示範機構"</p>
  <p><b>角色</b>：社工 <span style="background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki">（ <a href="http://snomed.info/sct">SNOMED CT</a>#106328005）</span></p>
  <p><b>任職期間</b>：2026-01-01至2026-12-31</p>
  <p><b>角色聯絡方式</b>：Phone <span style="background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki">（ <a href="https://hl7.org/fhir/R4/valueset-contact-point-system.html">ContactPointSystem</a>#phone）</span><br/><b>角色聯絡電話</b>：（Work）02-22334455</p>
</div>
"""
