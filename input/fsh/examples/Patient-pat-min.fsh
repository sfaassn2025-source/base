Instance: pat-min
InstanceOf: PatientTWSSBase
Title: "個案資料範例"
Description: "符合 Patient TWSS Base Profile 的最小個案資料範例。"
Usage: #example

* identifier[idCardNumber].use = #official
* identifier[idCardNumber].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[idCardNumber].type.coding.code = #NNxxx
* identifier[idCardNumber].system = "http://www.moi.gov.tw"
* identifier[idCardNumber].value = "A123456789"
* identifier[clientSeq].use = #official
* identifier[clientSeq].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[clientSeq].type.coding.code = #PI
* identifier[clientSeq].type.coding.display = "Patient internal identifier"
* identifier[clientSeq].type.text = "服務對象編號"
* identifier[clientSeq].system = "https://example.org/twss/client-seq"
* identifier[clientSeq].value = "CLIENT-001"
* name[0].use = #usual
* name[0].text = "王小明"
* gender = #male
* birthDate = "2001-01-01"
* telecom[0].system = #phone
* telecom[0].value = "0912345678"
* telecom[0].use = #mobile
* address[0].use = #home
* address[0].type = #physical
* address[0].text = "11558臺北市南港區新光里忠孝東路六段488號"
* address[0].city = "南港區"
* address[0].district = "臺北市"
* address[0].line[0] = "忠孝東路"
* address[0].extension[village].valueString = "新光里"
* address[0].extension[section].valueString = "六段"
* address[0].extension[number].valueString = "488號"
* address[0].postalCode = "11558"
* address[0].country = "TW"
* extension[nationality].extension[code].valueCodeableConcept.coding[0].system = "urn:iso:std:iso:3166"
* extension[nationality].extension[code].valueCodeableConcept.coding[0].code = #TW
* extension[ethnicGroup].valueCodeableConcept.coding[0].system = "https://sfaa.gov.tw/base/CodeSystem/twss-ethnic-group"
* extension[ethnicGroup].valueCodeableConcept.coding[0].code = #B
* extension[ethnicGroup].valueCodeableConcept.coding[0].display = "原住民"
* extension[AborigineTribe].valueCodeableConcept.coding[0] = TWSSAborigineTribe#1 "阿美族"
* extension[religion].valueCodeableConcept = TWSSReligion#H "民間信仰"
* communication[primaryLanguage].language.coding[0].system = "urn:ietf:bcp:47"
* communication[primaryLanguage].language.coding[0].code = #zh-TW
* communication[primaryLanguage].preferred = true
* communication[aborigineLanguage].language.text = "阿美語"
* communication[aborigineLanguage].preferred = false
* contact[0].relationship[0].text = "母親"
* contact[0].name.text = "王媽媽"
* contact[0].telecom[0].system = #phone
* contact[0].telecom[0].value = "0922333444"
* contact[0].address.text = "11558臺北市南港區新光里忠孝東路六段488號"
* contact[0].address.city = "南港區"
* contact[0].address.district = "臺北市"
* contact[0].address.line[0] = "忠孝東路"
* contact[0].address.extension[village].valueString = "新光里"
* contact[0].address.extension[section].valueString = "六段"
* contact[0].address.extension[number].valueString = "488號"
* contact[0].address.postalCode = "11558"
* contact[0].gender = #female
* text.status = #generated
* text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  <h3><b>個案基本資料</b></h3>
  <blockquote>
    <p><b>識別碼型別</b>：National Person Identifier <span style="background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki">（ <a href="http://terminology.hl7.org/CodeSystem/v2-0203">Identifier Type Codes</a>#NNxxx）</span><br/><b>身分證字號（official）</b>：A123456789 （http://www.moi.gov.tw）</p>
  </blockquote>
  <blockquote>
    <p><b>識別碼型別</b>：Patient internal identifier <span style="background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki">（ <a href="http://terminology.hl7.org/CodeSystem/v2-0203">Identifier Type Codes</a>#PI）</span><br/><b>服務對象編號（official）</b>：CLIENT-001 （https://example.org/twss/client-seq）</p>
  </blockquote>
  <p><b>姓名（usual）</b>：王小明</p>
  <p><b>性別</b>：男性</p>
  <p><b>出生日期</b>：2001-01-01</p>
  <p><b>國籍[extension: <a href="http://hl7.org/fhir/StructureDefinition/patient-nationality">patient-nationality</a>]</b>：<span style="background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki"> （ <a href="https://terminology.hl7.org/CodeSystem-ISO3166Part1.html">ISO3166Part1</a>#TW）</span></p>
  <p><b>族群身分[extension: <a href="StructureDefinition-twss-ethnic-group.html">twss-ethnic-group</a>]</b>：原住民 <span style="background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki">（ <a href="CodeSystem-twss-ethnic-group.html">TWSS 族群身分代碼</a>#B）</span></p>
  <p><b>聯絡方式</b>：Phone <span style="background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki">（ <a href="https://hl7.org/fhir/R4/valueset-contact-point-system.html">ContactPointSystem</a>#phone）</span><br/><b>聯絡電話</b>：（Mobile）0912345678 <span style="background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki">（ <a href="https://hl7.org/fhir/R4/valueset-contact-point-use.html">ContactPointUse</a>#mobile）</span></p>
  <p><b>聯絡地址</b>：11558臺北市南港區新光里忠孝東路六段488號<br/><b>鄉/鎮/市/區（city）</b>：南港區<br/><b>縣/市（district）</b>：臺北市<br/><b>路/街（line）</b>：忠孝東路<br/><b>村/里（extension[village]）</b>：新光里<br/><b>段（extension[section]）</b>：六段<br/><b>號（extension[number]）</b>：488號<br/><b>郵遞區號（postalCode）</b>：11558<br/><b>國家（country）</b>：TW</p>
  <p><b>關係人姓名</b>：王媽媽<br/><b>關係人聯絡方式</b>：Phone <span style="background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki">（ <a href="https://hl7.org/fhir/R4/valueset-contact-point-system.html">ContactPointSystem</a>#phone）</span><br/><b>關係人聯絡電話</b>：0922333444<br/><b>關係人地址</b>：11558臺北市南港區新光里忠孝東路六段488號<br/><b>關係人性別</b>：女性</p>
</div>
"""
