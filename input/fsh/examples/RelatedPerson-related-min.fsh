Instance: related-min
InstanceOf: RelatedPersonTWSSBase
Title: "關係人資料範例"
Description: "符合 RelatedPerson TWSS Base Profile 的最小關係人資料範例。"
Usage: #example

* identifier[idCardNumber].use = #official
* identifier[idCardNumber].type.coding[0].system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[idCardNumber].type.coding[0].code = #NNxxx
* identifier[idCardNumber].system = "http://www.moi.gov.tw"
* identifier[idCardNumber].value = "B223456789"
* identifier[relationNumber].use = #usual
* identifier[relationNumber].type.coding[0].system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[relationNumber].type.coding[0].code = #RI
* identifier[relationNumber].type.text = "關係人編號"
* identifier[relationNumber].system = "https://example.org/twss/related-person-number"
* identifier[relationNumber].value = "REL-001"
* extension[identifierUnknown].valueBoolean = false
* extension[isPrimaryCaregiver].valueBoolean = true
* extension[isGuardian].valueBoolean = false
* extension[isPrimaryContact].valueBoolean = true
* extension[isLegalRepresentative].valueBoolean = false
* patient = Reference(pat-min)
* name[0].text = "王媽媽"
* gender = #female
* birthDate = "1975-05-01"
* telecom[0].system = #phone
* telecom[0].value = "0912345678"
* address[0].text = "11558臺北市南港區新光里忠孝東路六段488號"
* address[0].city = "南港區"
* address[0].district = "臺北市"
* address[0].line[0] = "忠孝東路"
* address[0].extension[village].valueString = "新光里"
* address[0].extension[section].valueString = "六段"
* address[0].extension[number].valueString = "488號"
* address[0].postalCode = "11558"
* extension[nationality].valueCodeableConcept.coding[0].system = "urn:iso:std:iso:3166"
* extension[nationality].valueCodeableConcept.coding[0].code = #TW
* extension[ethnicGroup].valueCodeableConcept.coding[0].system = "https://sfaa.gov.tw/base/CodeSystem/twss-ethnic-group"
* extension[ethnicGroup].valueCodeableConcept.coding[0].code = #A
* extension[ethnicGroup].valueCodeableConcept.coding[0].display = "一般"
* extension[age].valueAge.value = 51
* extension[age].valueAge.unit = "歲"
* extension[age].valueAge.system = "http://unitsofmeasure.org"
* extension[age].valueAge.code = #a
* extension[maritalStatus].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/v3-MaritalStatus#M "Married"
* extension[religion].valueCodeableConcept = TWSSReligion#H "民間信仰"
* extension[isPrimaryCaregiver].valueBoolean = true
* text.status = #generated
* text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  <h3><b>關係人基本資料</b></h3>
  <blockquote>
    <p><b>識別碼型別</b>：National Person Identifier <span style="background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki">（ <a href="http://terminology.hl7.org/CodeSystem/v2-0203">Identifier Type Codes</a>#NNxxx）</span><br/><b>身分證字號（official）</b>：B223456789 （http://www.moi.gov.tw）</p>
  </blockquote>
  <blockquote>
    <p><b>關係人編號（usual）</b>：REL-001 （https://example.org/twss/related-person-number）</p>
  </blockquote>
  <p><b>對應個案</b>： <a href="Patient-pat-min.html">Patient/pat-min</a> "王小明"</p>
  <p><b>姓名</b>：王媽媽</p>
  <p><b>性別</b>：女性</p>
  <p><b>出生日期</b>：1975-05-01</p>
  <p><b>是否為主要照顧者[extension: <a href="StructureDefinition-twss-is-primary-caregiver.html">twss-is-primary-caregiver</a>]</b>：是</p>
  <p><b>身分識別碼不明註記[extension: <a href="StructureDefinition-twss-related-person-identifier-unknown.html">twss-related-person-identifier-unknown</a>]</b>：否</p>
  <p><b>國籍[extension: <a href="StructureDefinition-twss-related-person-nationality.html">twss-related-person-nationality</a>]</b>：<span style="background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki"> （ <a href="https://terminology.hl7.org/CodeSystem-ISO3166Part1.html">ISO3166Part1</a>#TW）</span></p>
  <p><b>宗教信仰[extension: <a href="StructureDefinition-twss-related-person-religion.html">twss-related-person-religion</a>]</b>：民間信仰 <span style="background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki">（<a href="CodeSystem-twss-religion.html">TWSS 宗教信仰</a>#H）</span></p>
  <p><b>聯絡方式</b>：Phone <span style="background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki">（ <a href="https://hl7.org/fhir/R4/valueset-contact-point-system.html">ContactPointSystem</a>#phone）</span><br/><b>聯絡電話</b>：0912345678</p>
  <p><b>聯絡地址</b>：11558臺北市南港區新光里忠孝東路六段488號</p>
</div>
"""
