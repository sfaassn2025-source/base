Instance: family-assessment-response-min
InstanceOf: AssessmentQuestionnaireResponseTWSSBase
Usage: #example
Title: "家庭評估問卷回應範例"
* questionnaire = "https://sfaa.gov.tw/base/Questionnaire/family-assessment"
* status = #completed
* subject = Reference(pat-min)
* basedOn = Reference(case-report-min)
* encounter = Reference(assessment-service-min)
* authored = "2026-08-20T09:00:00+08:00"
* author = Reference(prac-min)
* item[0].linkId = "2"
* item[0].item[0].linkId = "2.1"
* item[0].item[0].answer[0].valueInteger = 3
* item[0].item[1].linkId = "2.2"
* item[0].item[1].answer[0].valueInteger = 4

Instance: related-person-risk-response-min
InstanceOf: AssessmentQuestionnaireResponseTWSSBase
Usage: #example
Title: "關係人風險評估問卷回應範例"
* questionnaire = "https://sfaa.gov.tw/base/Questionnaire/related-person-risk-assessment"
* status = #completed
* subject = Reference(pat-min)
* basedOn = Reference(case-report-min)
* encounter = Reference(assessment-service-min)
* authored = "2026-08-20T09:10:00+08:00"
* author = Reference(prac-min)
* item[0].linkId = "3"
* item[0].item[0].linkId = "3.1"
* item[0].item[0].answer[0].valueReference = Reference(related-min)
* item[0].item[1].linkId = "3.2"
* item[0].item[1].answer[0].valueCoding = TWSSRelationCriminalRecord#0 "無相關紀錄"
* item[0].item[2].linkId = "3.3"
* item[0].item[2].item[0].linkId = "3.3.1"
* item[0].item[2].item[0].answer[0].valueCoding = TWSSRelationSubstanceUse#1 "否"
* item[0].item[2].item[1].linkId = "3.3.2"
* item[0].item[2].item[1].answer[0].valueCoding = TWSSRelationSubstanceUse#1 "否"
* item[0].item[2].item[2].linkId = "3.3.3"
* item[0].item[2].item[2].answer[0].valueCoding = TWSSRelationSubstanceUse#1 "否"

Instance: crisis-event-location-response-min
InstanceOf: AssessmentQuestionnaireResponseTWSSBase
Usage: #example
Title: "危機事件事發地點問卷回應範例"
* questionnaire = "https://sfaa.gov.tw/base/Questionnaire/crisis-event-location"
* status = #completed
* subject = Reference(pat-min)
* basedOn = Reference(case-report-min)
* encounter = Reference(assessment-service-min)
* authored = "2026-08-20T09:20:00+08:00"
* author = Reference(prac-min)
* item[0].linkId = "4"
* item[0].answer[0].valueString = "案家住處"

Instance: household-disability-count-response-min
InstanceOf: AssessmentQuestionnaireResponseTWSSBase
Usage: #example
Title: "家庭身障者人數問卷回應範例"
* questionnaire = "https://sfaa.gov.tw/base/Questionnaire/household-disability-count"
* status = #completed
* subject = Reference(pat-min)
* basedOn = Reference(case-report-min)
* encounter = Reference(assessment-service-min)
* authored = "2026-08-20T09:30:00+08:00"
* author = Reference(prac-min)
* item[0].linkId = "5"
* item[0].answer[0].valueInteger = 1

Instance: health-disease-status-response-min
InstanceOf: AssessmentQuestionnaireResponseTWSSBase
Usage: #example
Title: "健康與疾病狀況問卷回應範例"
* questionnaire = "https://sfaa.gov.tw/base/Questionnaire/health-disease-status"
* status = #completed
* subject = Reference(pat-min)
* basedOn = Reference(case-report-min)
* encounter = Reference(assessment-service-min)
* authored = "2026-08-20T09:40:00+08:00"
* author = Reference(prac-min)
* item[0].linkId = "6.1"
* item[0].answer[0].valueBoolean = true
* item[1].linkId = "6.2"
* item[1].answer[0].valueString = "慢性腎臟病"
* item[2].linkId = "6.3"
* item[2].answer[0].valueCoding = TWSSHealthStatusLevel#2 "尚可（體弱）"
* item[3].linkId = "6.4"
* item[3].answer[0].valueCoding = TWSSHealthStatusOption#3 "特殊或重大疾病"
* item[4].linkId = "6.5"
* item[4].answer[0].valueCoding = TWSSDiseaseType#3 "腦血管疾病"
* item[5].linkId = "6.7"
* item[5].answer[0].valueString = "依醫囑規律服藥"

Instance: disability-status-response-min
InstanceOf: AssessmentQuestionnaireResponseTWSSBase
Usage: #example
Title: "身心障礙狀況問卷回應範例"
* questionnaire = "https://sfaa.gov.tw/base/Questionnaire/disability-status"
* status = #completed
* subject = Reference(pat-min)
* basedOn = Reference(case-report-min)
* encounter = Reference(assessment-service-min)
* authored = "2026-08-20T09:50:00+08:00"
* author = Reference(prac-min)
* item[0].linkId = "7.1"
* item[0].item[0].linkId = "7.1.1"
* item[0].item[0].answer[0].valueCoding = TWSSDisabilityCause#3 "意外"
* item[0].item[1].linkId = "7.1.2"
* item[0].item[1].answer[0].valueCoding = TWSSPhysicalDisabilityType#A "上肢"
* item[0].item[2].linkId = "7.1.3"
* item[0].item[2].item[0].linkId = "7.1.3.1"
* item[0].item[2].item[0].answer[0].valueCoding = TWSSDisabilityTypeNewCategory#7 "第七類：神經、肌肉、骨骼之移動相關構造及其功能"
* item[0].item[2].item[1].linkId = "7.1.3.2"
* item[0].item[2].item[1].answer[0].valueCoding = TWSSNewDisabilityCategory#4 "肢體障礙"
* item[0].item[3].linkId = "7.1.6"
* item[0].item[3].answer[0].valueCoding = TWSSDisabilitySeverityLevel#2 "中度"
* item[0].item[4].linkId = "7.1.7"
* item[0].item[4].answer[0].valueDate = "2020-05-01"
* item[1].linkId = "7.2"
* item[1].item[0].linkId = "7.2.1"
* item[1].item[0].answer[0].valueBoolean = true
* item[1].item[1].linkId = "7.2.3"
* item[1].item[1].answer[0].valueBoolean = true
* item[1].item[2].linkId = "7.2.4"
* item[1].item[2].answer[0].valueDate = "2025-06-01"
* item[1].item[3].linkId = "7.2.5"
* item[1].item[3].answer[0].valueString = "重新鑑定結果不符資格"

Instance: assistive-device-status-response-min
InstanceOf: AssessmentQuestionnaireResponseTWSSBase
Usage: #example
Title: "輔具使用狀況問卷回應範例"
* questionnaire = "https://sfaa.gov.tw/base/Questionnaire/assistive-device-status"
* status = #completed
* subject = Reference(pat-min)
* basedOn = Reference(case-report-min)
* encounter = Reference(assessment-service-min)
* authored = "2026-08-20T10:00:00+08:00"
* author = Reference(prac-min)
* item[0].linkId = "8"
* item[0].item[0].linkId = "8.1"
* item[0].item[0].answer[0].valueString = "手動輪椅"
* item[0].item[1].linkId = "8.2"
* item[0].item[1].answer[0].valueBoolean = true

Instance: welfare-economic-status-response-min
InstanceOf: AssessmentQuestionnaireResponseTWSSBase
Usage: #example
Title: "福利與經濟現況問卷回應範例"
* questionnaire = "https://sfaa.gov.tw/base/Questionnaire/welfare-economic-status"
* status = #completed
* subject = Reference(pat-min)
* basedOn = Reference(case-report-min)
* encounter = Reference(assessment-service-min)
* authored = "2026-08-20T10:10:00+08:00"
* author = Reference(prac-min)
* item[0].linkId = "10.1"
* item[0].item[0].linkId = "10.1.1"
* item[0].item[0].answer[0].valueCoding = TWSSReceivedSubsidyType#15 "身心障礙者生活補助"
* item[0].item[1].linkId = "10.1.2"
* item[0].item[1].answer[0].valueDecimal = 8722
* item[1].linkId = "10.2"
* item[1].answer[0].valueCoding = TWSSInsuranceStatus#6 "全民健康保險"
* item[2].linkId = "10.3"
* item[2].answer[0].valueCoding = TWSSWelfareType#1 "低收入戶"
* item[3].linkId = "10.4"
* item[3].answer[0].valueDecimal = 12000

Instance: visit-record-response-min
InstanceOf: AssessmentQuestionnaireResponseTWSSBase
Usage: #example
Title: "訪視紀錄問卷回應範例"
* questionnaire = "https://sfaa.gov.tw/base/Questionnaire/visit-record"
* status = #completed
* subject = Reference(pat-min)
* basedOn = Reference(case-report-min)
* encounter = Reference(assessment-service-min)
* authored = "2026-08-20T10:20:00+08:00"
* author = Reference(prac-min)
* item[0].linkId = "11.1"
* item[0].answer[0].valueCoding = TWSSVisitTarget#0 "案主本人"
* item[1].linkId = "11.2"
* item[1].answer[0].valueCoding = TWSSVisitServiceMethod#B "面訪家庭"
* item[2].linkId = "11.3"
* item[2].answer[0].valueDateTime = "2026-08-20T09:00:00+08:00"
* item[3].linkId = "11.4"
* item[3].answer[0].valueDateTime = "2026-08-20T10:00:00+08:00"
* item[4].linkId = "11.5"
* item[4].answer[0].valueString = "完成個案與家庭訪視，確認居住及支持需求。"
