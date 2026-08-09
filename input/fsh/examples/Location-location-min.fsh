Instance: location-min
InstanceOf: LocationTWSSBase
Title: "托育地址範例"
Description: "符合 Location TWSS Base Profile 的托育人員服務地點範例。"
Usage: #example

* status = #active
* name = "安心托嬰中心托育地址"
* managingOrganization = Reference(org-childcare)
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
  <h3><b>托育地址</b></h3>
  <p><b>所屬機構</b>：<a href="Organization-org-childcare.html">Organization/org-childcare</a> "安心托嬰中心"</p>
  <p><b>托育地址</b>：11558臺北市南港區新光里忠孝東路六段488號</p>
  <p><b>鄉/鎮/市/區（city）</b>：南港區<br/><b>縣/市（district）</b>：臺北市<br/><b>路/街（line）</b>：忠孝東路<br/><b>村/里（extension[village]）</b>：新光里<br/><b>段（extension[section]）</b>：六段<br/><b>號（extension[number]）</b>：488號<br/><b>郵遞區號（postalCode）</b>：11558</p>
</div>
"""
