Instance: pracrole-adoption-manager
InstanceOf: PractitionerRoleTWSSBase
Title: "收出養機構負責人角色範例"
Description: "符合 PractitionerRole TWSS Base Profile 的收出養機構負責人角色情境範例。"
Usage: #example

* practitioner = Reference(prac-adoption-manager)
* organization = Reference(org-adoption)
* code[0].coding[0] = http://snomed.info/sct#106333009 "Manager"
* code[0].text = "負責人"
* period.start = "2026-01-15"
* period.end = "2026-12-31"
* telecom[0].system = #phone
* telecom[0].value = "0912333444"
* text.status = #generated
* text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  <h3><b>收出養機構負責人角色資料</b></h3>
  <p><b>人員</b>： <a href="Practitioner-prac-adoption-manager.html">Practitioner/prac-adoption-manager</a> "李負責"</p>
  <p><b>服務機構</b>： <a href="Organization-org-adoption.html">Organization/org-adoption</a> "希望收出養服務中心"</p>
  <p><b>角色</b>：負責人 <span style="background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki">（ <a href="http://snomed.info/sct">SNOMED CT</a>#106333009）</span></p>
  <p><b>任職期間</b>：2026-01-15至2026-12-31</p>
  <p><b>聯絡方式</b>：Phone <span style="background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki">（ <a href="https://hl7.org/fhir/R4/valueset-contact-point-system.html">ContactPointSystem</a>#phone）</span><br/><b>聯絡電話</b>：0912333444</p>
</div>
"""
