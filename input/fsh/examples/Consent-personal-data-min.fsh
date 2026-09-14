Instance: personal-data-consent-patient-min
InstanceOf: PersonalDataConsentTWSSBase
Title: "個案個資同意範例"
Description: "呈現個案本人表示個人資料同意，並以 DocumentReference 參照同意書文件的範例。"
Usage: #example

* status = #active
* scope = TWSSConsentScopeCS#personal-data-privacy "個人資料隱私"
* category = http://terminology.hl7.org/CodeSystem/v3-ActCode#ICOL
* extension[consentSubject].valueReference = Reference(pat-min)
* patient = Reference(pat-min)
* performer[0] = Reference(pat-min)
* organization[0] = Reference(org-min)
* sourceReference = Reference(official-document-min)
* policy[0].uri = "https://law.moj.gov.tw/LawClass/LawAll.aspx?pcode=I0050021"
