Instance: medical-institution-min
InstanceOf: MedicalInstitutionOrganizationTWSSBase
Title: "醫療院所範例"
Description: "符合醫療院所 Organization TWSS Base Profile 的範例。"
Usage: #example

* identifier[organizationCode].value = "HOSP-001"
* active = true
* name = "長庚醫院"
* telecom[0].system = #phone
* telecom[0].value = "02-27135211"
* address[0].text = "11558臺北市南港區新光里忠孝東路六段488號"
* address[0].city = "南港區"
* address[0].district = "6300000000"
* text.status = #generated
* text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  <h3><b>醫療院所</b></h3>
  <p><b>機構代碼</b>：HOSP-001</p>
  <p><b>機構名稱</b>：長庚醫院</p>
  <p><b>聯絡電話</b>：02-27135211</p>
  <p><b>地址</b>：11558臺北市南港區新光里忠孝東路六段488號</p>
</div>
"""
