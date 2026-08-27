Instance: org-childcare
InstanceOf: OrganizationTWSSBase
Title: "托育機構範例"
Description: "符合 Organization TWSS Base Profile 的托育機構情境範例。"
Usage: #example

* identifier[organizationCode].value = "C5678"
* identifier[organizationCode].system = "https://example.org/identifier/organization-code"
* type[0].coding[0] = TWSSOrganizationType#C "托嬰中心"
* type[0].text = "托嬰中心"
* name = "安心托嬰中心"
* telecom[0].system = #phone
* telecom[0].value = "02-25556666"
* address[0].text = "11558臺北市南港區新光里忠孝東路六段488號"
* address[0].city = "南港區"
* address[0].district = "臺北市"
* address[0].line[0] = "忠孝東路"
* address[0].extension[village].valueString = "新光里"
* address[0].extension[section].valueString = "六段"
* address[0].extension[number].valueString = "488號"
* address[0].postalCode = "11558"
* contact[0].name.text = "張主任"
* contact[0].telecom[0].system = #phone
* contact[0].telecom[0].value = "02-25556667"
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
  <h3><b>托育機構資料</b></h3>
  <blockquote>
    <p><b>機構代碼</b>：C5678</p>
  </blockquote>
  <p><b>機構名稱</b>：安心托嬰中心</p>
  <p><b>機構類型</b>：托嬰中心 <span style="background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki">（ <a href="CodeSystem-twss-organization-type.html">機構類型</a>#C）</span></p>
  <p><b>聯絡方式</b>：Phone <span style="background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki">（ <a href="https://hl7.org/fhir/R4/valueset-contact-point-system.html">ContactPointSystem</a>#phone）</span><br/><b>聯絡電話</b>：02-25556666</p>
  <p><b>聯絡地址</b>：11558臺北市南港區新光里忠孝東路六段488號</p>
  <p><b>聯絡人</b>：張主任<br/><b>聯絡人電話</b>：02-25556667</p>
</div>
"""
