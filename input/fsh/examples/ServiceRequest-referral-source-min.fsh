Instance: referral-from-report-min
InstanceOf: ServiceRequestReferralTWSSBase
Title: "通報衍生個案轉介範例"
Description: "個案通報後直接提出轉介請求的範例。"
Usage: #example

* identifier.system = "https://example.org/twss/referral"
* identifier.value = "REFERRAL-2026-REPORT-0001"
* status = #active
* intent = #order
* category = http://snomed.info/sct#306206005 "Referral to service"
* code = http://snomed.info/sct#3457005 "Patient referral"
* subject = Reference(pat-min)
* basedOn = Reference(case-report-min)
* authoredOn = "2026-07-30T09:00:00+08:00"
* requester = Reference(org-min)
* performer = Reference(org-childcare)
* reasonCode.text = "通報後需由受轉介單位提供後續服務。"

Instance: referral-from-assessment-min
InstanceOf: ServiceRequestReferralTWSSBase
Title: "評估衍生個案轉介範例"
Description: "完成服務評估後，依評估資料提出轉介請求的範例。"
Usage: #example

* identifier.system = "https://example.org/twss/referral"
* identifier.value = "REFERRAL-2026-ASSESSMENT-0001"
* status = #active
* intent = #order
* category = http://snomed.info/sct#306206005 "Referral to service"
* code = http://snomed.info/sct#3457005 "Patient referral"
* subject = Reference(pat-min)
* authoredOn = "2026-08-01T10:00:00+08:00"
* requester = Reference(org-min)
* performer = Reference(org-childcare)
* supportingInfo[0] = Reference(assessment-service-min)
* supportingInfo[1] = Reference(living-condition-questionnaire-response-min)
* reasonCode.text = "評估後建議轉介至適合的服務單位。"

Instance: referral-from-follow-up-min
InstanceOf: ServiceRequestReferralTWSSBase
Title: "追蹤服務衍生個案轉介範例"
Description: "服務或追蹤期間依實際服務紀錄提出轉介請求的範例。"
Usage: #example

* identifier.system = "https://example.org/twss/referral"
* identifier.value = "REFERRAL-2026-FOLLOWUP-0001"
* status = #active
* intent = #order
* category = http://snomed.info/sct#306206005 "Referral to service"
* code = http://snomed.info/sct#3457005 "Patient referral"
* subject = Reference(pat-min)
* authoredOn = "2026-08-13T09:00:00+08:00"
* requester = Reference(org-min)
* performer = Reference(org-childcare)
* supportingInfo[0] = Reference(follow-up-event-min)
* reasonCode.text = "追蹤服務後需轉介至其他專業服務單位。"
