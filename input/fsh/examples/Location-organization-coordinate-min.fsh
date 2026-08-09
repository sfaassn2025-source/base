Instance: organization-coordinate-min
InstanceOf: LocationTWSSBase
Title: "機構地址經緯度範例"
Description: "符合 Location TWSS Base Profile 的機構地址與座標範例。"
Usage: #example

* status = #active
* name = "社家署示範機構所在地"
* managingOrganization = Reference(org-min)
* position.longitude = 121.5956
* position.latitude = 25.0503
* address.text = "11558臺北市南港區新光里忠孝東路六段488號"
* address.city = "南港區"
* address.district = "臺北市"
* address.line[0] = "忠孝東路"
* address.extension[village].valueString = "新光里"
* address.extension[section].valueString = "六段"
* address.extension[number].valueString = "488號"
* address.postalCode = "11558"
* text.status = #generated
* text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  <h3><b>機構地址經緯度</b></h3>
  <p><b>所屬機構</b>：<a href="Organization-org-min.html">Organization/org-min</a> "社家署示範機構"</p>
  <p><b>機構地址</b>：11558臺北市南港區新光里忠孝東路六段488號</p>
  <p><b>經度（longitude）</b>：121.5956<br/><b>緯度（latitude）</b>：25.0503</p>
</div>
"""
