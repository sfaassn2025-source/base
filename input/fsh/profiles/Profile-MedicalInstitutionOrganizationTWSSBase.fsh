Profile: MedicalInstitutionOrganizationTWSSBase
Parent: OrganizationTWSSBase
Id: MedicalInstitutionOrganization-twss-base
Title: "醫療院所-Organization TWSS Base"
Description: "醫療院所資料使用獨立的 Organization 實體，以供相關服務 Encounter 參照。"
* ^version = "0.0.1"
* type 1..1 MS
* type.coding 1..1 MS
* type.coding.system = "http://terminology.hl7.org/CodeSystem/organization-type"
* type.coding.code = #prov
* type.coding.display = "Healthcare Provider"
* type ^short = "機構類別；固定為醫療院所（Healthcare Provider）。"
* name 1..1 MS
* name ^short = "醫療院所名稱"
