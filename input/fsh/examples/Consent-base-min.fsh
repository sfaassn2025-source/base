Instance: consent-base-min
InstanceOf: ConsentTWSSBase
Title: "同意範例"
Description: "呈現共用 Consent Profile 最低必要欄位的範例。"
Usage: #example

* status = #active
* scope = TWSSConsentScopeCS#personal-data-privacy "個人資料隱私"
* category = http://terminology.hl7.org/CodeSystem/v3-ActCode#ICOL "information collection"
* policy[0].uri = "https://law.moj.gov.tw/LawClass/LawAll.aspx?pcode=I0050021"
