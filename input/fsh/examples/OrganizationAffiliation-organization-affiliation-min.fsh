Instance: organization-affiliation-min
InstanceOf: OrganizationAffiliationTWSSBase
Title: "機構關係範例"
Description: "符合 OrganizationAffiliation TWSS Base Profile 的機構關係範例。"
Usage: #example

* active = true
* organization = Reference(org-min)
* participatingOrganization = Reference(org-childcare)
* code[0].text = "會員機構"
* period.start = "2025-01-01"
* text.status = #generated
* text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  <h3><b>機構關係</b></h3>
  <p><b>主要機構</b>：社家署示範機構</p>
  <p><b>參與機構</b>：安心托嬰中心</p>
  <p><b>關係角色</b>：會員機構</p>
  <p><b>有效期間起日</b>：2025-01-01</p>
</div>
"""
