Instance: org-min
InstanceOf: OrganizationTWSSBase
Title: "機構資料範例"
Description: "符合 Organization TWSS Base Profile 的最小機構資料範例。"
Usage: #example

* identifier[organizationCode].value = "A1233"
* identifier[licenseNumber].value = "衛授家字第1130012345號"
* type[0].coding[0] = TWSSOrganizationType#13 "通報中心"
* type[0].text = "通報中心"
* extension[establishmentType].valueCodeableConcept = TWSSOrganizationEstablishmentType#21 "公立"
* extension[registrationDate].valueDate = "2019-06-01"
* extension[competentAuthority].valueReference = Reference(org-min)
* extension[capacity][0].extension[type].valueCode = #admission-capacity
* extension[capacity][0].extension[value].valueInteger = 60
* extension[usableArea][0].extension[type].valueCode = #total-area
* extension[usableArea][0].extension[value].valueQuantity.value = 250
* extension[usableArea][0].extension[value].valueQuantity.unit = "平方公尺"
* extension[statutoryStaffing][0].extension[role].valueCodeableConcept.text = "社會工作人員"
* extension[statutoryStaffing][0].extension[requiredCount].valueInteger = 3
* name = "社家署示範機構"
* telecom[0].system = #phone
* telecom[0].value = "02-12345678"
* address[0].text = "11558臺北市南港區新光里忠孝東路六段488號"
* address[0].city = "南港區"
* address[0].district = "臺北市"
* address[0].line[0] = "忠孝東路"
* address[0].extension[village].valueString = "新光里"
* address[0].extension[section].valueString = "六段"
* address[0].extension[number].valueString = "488號"
* address[0].postalCode = "11558"
* contact[0].name.text = "林主任"
* contact[0].telecom[0].system = #phone
* contact[0].telecom[0].value = "02-12345679"
* contact[0].address.text = "11558臺北市南港區新光里忠孝東路六段488號"
* contact[0].address.city = "南港區"
* contact[0].address.district = "臺北市"
* contact[0].address.line[0] = "忠孝東路"
* contact[0].address.extension[village].valueString = "新光里"
* contact[0].address.extension[section].valueString = "六段"
* contact[0].address.extension[number].valueString = "488號"
* contact[0].address.postalCode = "11558"
* text.status = #generated
* text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  <h3><b>機構基本資料</b></h3>
  <blockquote>
    <p><b>機構代碼</b>：A1233</p>
  </blockquote>
  <p><b>機構名稱</b>：社家署示範機構</p>
  <p><b>機構許可證字號</b>：衛授家字第1130012345號</p>
  <p><b>機構類別</b>：通報中心 <span style="background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki">（ <a href="CodeSystem-twss-organization-type.html">機構類型</a>#13）</span></p>
  <p><b>機構設立別</b>：公立 <span style="background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki">（ <a href="CodeSystem-twss-organization-establishment-type.html">機構設立別</a>#21）</span></p>
  <p><b>機構立案日期[extension: <a href="StructureDefinition-twss-organization-registration-date.html">twss-organization-registration-date</a>]</b>：2019-06-01</p>
  <p><b>聯絡方式</b>：Phone <span style="background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki">（ <a href="https://hl7.org/fhir/R4/valueset-contact-point-system.html">ContactPointSystem</a>#phone）</span><br/><b>聯絡電話</b>：02-12345678</p>
  <p><b>聯絡地址</b>：11558臺北市南港區新光里忠孝東路六段488號</p>
  <p><b>聯絡人</b>：林主任<br/><b>聯絡人電話</b>：02-12345679</p>
</div>
"""
