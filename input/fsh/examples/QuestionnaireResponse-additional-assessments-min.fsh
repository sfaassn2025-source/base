Instance: case-basic-family-response-min
InstanceOf: QuestionnaireResponseTWSSBase
Usage: #example
Description: "個案基本家庭資料評估回應範例。"
Title: "個案基本與家庭資訊回覆範例"
* questionnaire = "https://sfaa.gov.tw/base/Questionnaire/case-basic-family-information"
* status = #completed
* subject = Reference(pat-min)
* basedOn = Reference(case-report-min)
* encounter = Reference(assessment-service-min)
* authored = "2026-08-18T09:00:00+08:00"
* author = Reference(prac-min)
* item[0].linkId = "12"
* item[0].item[0].linkId = "12.1"
* item[0].item[0].answer[0].valueCoding = TWSSFamilyStructure#A "雙親家庭"
* item[0].item[1].linkId = "12.2"
* item[0].item[1].answer[0].valueCoding = TWSSChildrenStatus#1 "有子女"
* item[0].item[2].linkId = "12.3"
* item[0].item[2].answer[0].valueDecimal = 2
* item[0].item[3].linkId = "12.4"
* item[0].item[3].answer[0].valueDecimal = 65000
* item[0].item[4].linkId = "12.5"
* item[0].item[4].answer[0].valueCoding = TWSSSpecialEducationType#0 "無"

Instance: practitioner-employment-response-min
InstanceOf: QuestionnaireResponseTWSSBase
Usage: #example
Description: "服務人就業資訊評估回應範例。"
Title: "服務人基本與任職資訊回覆範例"
* questionnaire = "https://sfaa.gov.tw/base/Questionnaire/practitioner-employment-information"
* status = #completed
* subject = Reference(pat-min)
* basedOn = Reference(case-report-min)
* encounter = Reference(assessment-service-min)
* authored = "2026-08-18T09:00:00+08:00"
* author = Reference(prac-min)
* item[0].linkId = "13"
* item[0].item[0].linkId = "13.1"
* item[0].item[0].answer[0].valueBoolean = false
* item[0].item[1].linkId = "13.2"
* item[0].item[1].answer[0].valueDecimal = 38000
* item[0].item[2].linkId = "healthCheckDate"
* item[0].item[2].answer[0].valueDate = "2026-08-01"

Instance: related-person-basic-response-min
InstanceOf: QuestionnaireResponseTWSSBase
Usage: #example
Description: "關係人基本資訊評估回應範例。"
Title: "關係人基本資訊回覆範例"
* questionnaire = "https://sfaa.gov.tw/base/Questionnaire/related-person-basic-information"
* status = #completed
* subject = Reference(pat-min)
* basedOn = Reference(case-report-min)
* encounter = Reference(assessment-service-min)
* authored = "2026-08-18T09:00:00+08:00"
* author = Reference(prac-min)
* item[0].linkId = "14"
* item[0].item[0].linkId = "14.1"
* item[0].item[0].answer[0].valueBoolean = true
* item[0].item[1].linkId = "14.2"
* item[0].item[1].answer[0].valueBoolean = false

Instance: vocational-training-response-min
InstanceOf: QuestionnaireResponseTWSSBase
Usage: #example
Description: "職業訓練狀況評估回應範例。"
Title: "職業訓練狀況回覆範例"
* questionnaire = "https://sfaa.gov.tw/base/Questionnaire/vocational-training-status"
* status = #completed
* subject = Reference(pat-min)
* basedOn = Reference(case-report-min)
* encounter = Reference(assessment-service-min)
* authored = "2026-08-18T09:00:00+08:00"
* author = Reference(prac-min)
* item[0].linkId = "15"
* item[0].item[0].linkId = "15.1"
* item[0].item[0].answer[0].valueBoolean = true
* item[0].item[1].linkId = "15.2"
* item[0].item[1].answer[0].valueString = "職能培訓"

Instance: school-adaptation-response-min
InstanceOf: QuestionnaireResponseTWSSBase
Usage: #example
Description: "學校適應狀況評估回應範例。"
Title: "學校適應狀況回覆範例"
* questionnaire = "https://sfaa.gov.tw/base/Questionnaire/school-adaptation-status"
* status = #completed
* subject = Reference(pat-min)
* basedOn = Reference(case-report-min)
* encounter = Reference(assessment-service-min)
* authored = "2026-08-18T09:00:00+08:00"
* author = Reference(prac-min)
* item[0].linkId = "16"
* item[0].answer[0].valueString = "適應良好"

Instance: emotional-behavior-response-min
InstanceOf: QuestionnaireResponseTWSSBase
Usage: #example
Description: "情緒與行為狀況評估回應範例。"
Title: "情緒與行為狀況回覆範例"
* questionnaire = "https://sfaa.gov.tw/base/Questionnaire/emotional-behavior-status"
* status = #completed
* subject = Reference(pat-min)
* basedOn = Reference(case-report-min)
* encounter = Reference(assessment-service-min)
* authored = "2026-08-18T09:00:00+08:00"
* author = Reference(prac-min)
* item[0].linkId = "17"
* item[0].answer[0].valueCoding = TWSSEmotionalControlAbility#2 "偶有困難"

Instance: interpersonal-interaction-response-min
InstanceOf: QuestionnaireResponseTWSSBase
Usage: #example
Description: "人際互動狀況評估回應範例。"
Title: "人際互動狀況回覆範例"
* questionnaire = "https://sfaa.gov.tw/base/Questionnaire/interpersonal-interaction-status"
* status = #completed
* subject = Reference(pat-min)
* basedOn = Reference(case-report-min)
* encounter = Reference(assessment-service-min)
* authored = "2026-08-18T09:00:00+08:00"
* author = Reference(prac-min)
* item[0].linkId = "18"
* item[0].item[0].linkId = "18.1"
* item[0].item[0].answer[0].valueCoding = TWSSInteractionAssessment#2 "尚可"
* item[0].item[1].linkId = "18.2"
* item[0].item[1].answer[0].valueCoding = TWSSInteractionAssessment#2 "尚可"
* item[0].item[2].linkId = "18.3"
* item[0].item[2].answer[0].valueCoding = TWSSInteractionAssessment#2 "尚可"
* item[0].item[3].linkId = "18.4"
* item[0].item[3].answer[0].valueCoding = TWSSInteractionAssessment#2 "尚可"
* item[0].item[4].linkId = "18.5"
* item[0].item[4].answer[0].valueCoding = TWSSInteractionAssessment#2 "尚可"

Instance: developmental-delay-response-min
InstanceOf: QuestionnaireResponseTWSSBase
Usage: #example
Description: "兒童發展遲緩評估回應範例。"
Title: "發展遲緩類別回覆範例"
* questionnaire = "https://sfaa.gov.tw/base/Questionnaire/developmental-delay-status"
* status = #completed
* subject = Reference(pat-min)
* basedOn = Reference(case-report-min)
* encounter = Reference(assessment-service-min)
* authored = "2026-08-18T09:00:00+08:00"
* author = Reference(prac-min)
* item[0].linkId = "19"
* item[0].item[0].linkId = "19.1"
* item[0].item[0].answer[0].valueCoding = TWSSDevelopmentalDelayCategory#1 "無遲緩"
* item[0].item[1].linkId = "19.2"
* item[0].item[1].answer[0].valueCoding = TWSSDevelopmentalDelayCategory#1 "無遲緩"
* item[0].item[2].linkId = "19.3"
* item[0].item[2].answer[0].valueCoding = TWSSDevelopmentalDelayCategory#1 "無遲緩"
* item[0].item[3].linkId = "19.4"
* item[0].item[3].answer[0].valueCoding = TWSSDevelopmentalDelayCategory#1 "無遲緩"
* item[0].item[4].linkId = "19.5"
* item[0].item[4].answer[0].valueCoding = TWSSDevelopmentalDelayCategory#1 "無遲緩"
* item[0].item[5].linkId = "19.6"
* item[0].item[5].answer[0].valueCoding = TWSSDevelopmentalDelayCategory#1 "無遲緩"

Instance: employment-information-response-min
InstanceOf: QuestionnaireResponseTWSSBase
Usage: #example
Description: "就業資訊評估回應範例。"
Title: "就業資訊回覆範例"
* questionnaire = "https://sfaa.gov.tw/base/Questionnaire/employment-information"
* status = #completed
* subject = Reference(pat-min)
* basedOn = Reference(case-report-min)
* encounter = Reference(assessment-service-min)
* authored = "2026-08-18T09:00:00+08:00"
* author = Reference(prac-min)
* item[0].linkId = "20"
* item[0].item[0].linkId = "20.1"
* item[0].item[0].answer[0].valueCoding = TWSSEmploymentStatus#A "全職工作"
* item[0].item[1].linkId = "20.3"
* item[0].item[1].answer[0].valueString = "行政助理"
* item[0].item[2].linkId = "20.4"
* item[0].item[2].answer[0].valueString = "行政助理"

Instance: placement-information-response-min
InstanceOf: QuestionnaireResponseTWSSBase
Usage: #example
Description: "安置服務資訊評估回應範例。"
Title: "安置資訊回覆範例"
* questionnaire = "https://sfaa.gov.tw/base/Questionnaire/placement-information"
* status = #completed
* subject = Reference(pat-min)
* basedOn = Reference(case-report-min)
* encounter = Reference(assessment-service-min)
* authored = "2026-08-18T09:00:00+08:00"
* author = Reference(prac-min)
* item[0].linkId = "23"
* item[0].item[0].linkId = "23.1"
* item[0].item[0].answer[0].valueBoolean = true
* item[0].item[1].linkId = "23.3"
* item[0].item[1].answer[0].valueString = "安置中"
* item[0].item[2].linkId = "23.4"
* item[0].item[2].answer[0].valueCoding = TWSSPlacementEnded#N "否"

Instance: closure-placement-response-min
InstanceOf: QuestionnaireResponseTWSSBase
Usage: #example
Description: "結案後安置資訊評估回應範例。"
Title: "結案與安置資訊回覆範例"
* questionnaire = "https://sfaa.gov.tw/base/Questionnaire/closure-placement-information"
* status = #completed
* subject = Reference(pat-min)
* basedOn = Reference(case-report-min)
* encounter = Reference(assessment-service-min)
* authored = "2026-08-18T09:00:00+08:00"
* author = Reference(prac-min)
* item[0].linkId = "26"
* item[0].answer[0].valueCoding = TWSSPlacementNoFollowUpReason#0 "出養個案"
