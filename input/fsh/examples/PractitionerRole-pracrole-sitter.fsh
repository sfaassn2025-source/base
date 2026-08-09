Instance: pracrole-sitter
InstanceOf: PractitionerRoleTWSSBase
Title: "托育人員角色範例"
Description: "符合 PractitionerRole TWSS Base Profile 的托育人員角色情境範例。"
Usage: #example

* practitioner = Reference(prac-sitter)
* organization = Reference(org-childcare)
* location[0] = Reference(location-min)
* code[0].coding[0] = http://snomed.info/sct#158939004 "Child care officer"
* code[0].text = "托育人員"
* period.start = "2026-02-01"
* period.end = "2026-12-31"
* telecom[0].system = #phone
* telecom[0].value = "0912000111"
* text.status = #generated
* text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  <h3><b>托育人員角色資料</b></h3>
  <p><b>人員</b>： <a href="Practitioner-prac-sitter.html">Practitioner/prac-sitter</a> "林托育"</p>
  <p><b>服務機構</b>： <a href="Organization-org-childcare.html">Organization/org-childcare</a> "安心托嬰中心"</p>
  <p><b>托育地址</b>： <a href="Location-location-min.html">Location/location-min</a> "安心托嬰中心托育地址"</p>
  <p><b>角色</b>：托育人員 <span style="background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki">（ <a href="http://snomed.info/sct">SNOMED CT</a>#158939004）</span></p>
  <p><b>任職期間</b>：2026-02-01至2026-12-31</p>
  <p><b>聯絡方式</b>：Phone <span style="background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki">（ <a href="https://hl7.org/fhir/R4/valueset-contact-point-system.html">ContactPointSystem</a>#phone）</span><br/><b>聯絡電話</b>：0912000111</p>
</div>
"""
