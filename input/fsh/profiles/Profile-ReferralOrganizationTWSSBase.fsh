Profile: ReferralOrganizationTWSSBase
Parent: TWCoreOrganization
Id: ReferralOrganization-twss-base
Title: "轉介機構-Organization TWSS Base"
Description: "轉介或受轉介單位資料使用的 Organization Profile；適用於僅能交換單位名稱及所在地資訊，尚無可交換機構識別碼的情境。"
* ^version = "0.0.1"

* identifier 0..* MS
* identifier ^short = "轉介或受轉介單位的識別碼；有可交換識別碼時填寫。"
* name 1..1 MS
* name ^short = "轉介單位或受轉介單位名稱。"
* address MS
* address ^short = "轉介單位或受轉介單位地址。"
* address.district MS
* address.district ^short = "轉介單位或受轉介單位所在縣市。"
