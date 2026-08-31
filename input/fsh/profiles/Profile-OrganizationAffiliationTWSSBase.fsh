Profile: OrganizationAffiliationTWSSBase
Parent: OrganizationAffiliation
Id: OrganizationAffiliation-twss-base
Title: "機構關係-OrganizationAffiliation TWSS Base"
Description: "表達彼此獨立機構間的會員、加盟或合作關係；同一法人內的上下屬關係應使用 Organization.partOf。因 TW Core IG 0.3.2 尚無 OrganizationAffiliation Profile，故繼承原生 OrganizationAffiliation，並補回適用的 TW Core IG 0.3.2 共通交換規則。"
* ^version = "0.0.1"

* active MS
* active ^short = "機構關係是否有效"
* period MS
* period ^short = "機構關係的有效期間"
* organization only Reference(OrganizationTWSSBase)
* organization 1..1 MS
* organization ^short = "主要機構、總會或聯盟"
* participatingOrganization only Reference(OrganizationTWSSBase)
* participatingOrganization 1..1 MS
* participatingOrganization ^short = "參與關係的獨立機構"
* code 1..* MS
* code ^short = "機構關係角色，例如會員、加盟或合作"
* network ^short = "服務網絡；僅於確有獨立網絡概念時填寫"
