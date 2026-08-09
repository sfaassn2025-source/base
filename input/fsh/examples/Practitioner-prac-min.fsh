Instance: prac-min
InstanceOf: PractitionerTWSSBase
Title: "人員資料範例"
Description: "符合 Practitioner TWSS Base Profile 的最小人員資料範例。"
Usage: #example

* identifier[idCardNumber].use = #official
* identifier[idCardNumber].type.coding[0].system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[idCardNumber].type.coding[0].code = #NNxxx
* identifier[idCardNumber].system = "http://www.moi.gov.tw"
* identifier[idCardNumber].value = "A123456789"
* name[0].text = "陳社工"
* extension[ethnicGroup].valueCodeableConcept.coding[0].system = "https://sfaa.gov.tw/base/CodeSystem/twss-ethnic-group"
* extension[ethnicGroup].valueCodeableConcept.coding[0].code = #B
* extension[ethnicGroup].valueCodeableConcept.coding[0].display = "原住民"
* extension[AborigineTribe].valueCodeableConcept.coding[0].system = "https://sfaa.gov.tw/base/CodeSystem/twss-aborigine-tribe"
* extension[AborigineTribe].valueCodeableConcept.coding[0].code = #1
* extension[AborigineTribe].valueCodeableConcept.coding[0].display = "阿美族"
* extension[nationality].valueCodeableConcept = urn:iso:std:iso:3166#TW
* telecom[0].system = #phone
* telecom[0].value = "02-22334455"
* address[0].text = "11558臺北市南港區新光里忠孝東路六段488號"
* address[0].city = "南港區"
* address[0].district = "臺北市"
* address[0].line[0] = "忠孝東路"
* address[0].extension[village].valueString = "新光里"
* address[0].extension[section].valueString = "六段"
* address[0].extension[number].valueString = "488號"
* address[0].postalCode = "11558"
* text.status = #generated
* text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  <h3><b>人員基本資料</b></h3>
  <blockquote>
    <p><b>識別碼型別</b>：National Person Identifier <span style="background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki">（ <a href="http://terminology.hl7.org/CodeSystem/v2-0203">Identifier Type Codes</a>#NNxxx）</span><br/><b>身分證字號（official）</b>：A123456789 （http://www.moi.gov.tw）</p>
  </blockquote>
  <p><b>姓名</b>：陳社工</p>
  <p><b>族群身分[extension: <a href="StructureDefinition-twss-ethnic-group.html">twss-ethnic-group</a>]</b>：原住民 <span style="background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki">（ <a href="CodeSystem-twss-ethnic-group.html">TWSS 族群身分代碼</a>#B）</span></p>
  <p><b>原住民族別[extension: <a href="StructureDefinition-twss-practitioner-aborigine-tribe.html">twss-practitioner-aborigine-tribe</a>]</b>：阿美族 <span style="background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki">（ <a href="CodeSystem-twss-aborigine-tribe.html">原住民族別</a>#1）</span></p>
  <p><b>聯絡方式</b>：Phone <span style="background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki">（ <a href="https://hl7.org/fhir/R4/valueset-contact-point-system.html">ContactPointSystem</a>#phone）</span><br/><b>聯絡電話</b>：02-22334455</p>
  <p><b>聯絡地址</b>：11558臺北市南港區新光里忠孝東路六段488號</p>
</div>
"""
