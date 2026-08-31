Instance: patient-education-information-response-min
InstanceOf: AssessmentQuestionnaireResponseTWSSBase
Usage: #example
Title: "個案教育資訊回覆範例"
* questionnaire = "https://sfaa.gov.tw/base/Questionnaire/education-information"
* status = #completed
* subject = Reference(pat-min)
* basedOn = Reference(case-report-min)
* encounter = Reference(assessment-service-min)
* authored = "2026-08-25T09:00:00+08:00"
* author = Reference(prac-min)
* item[0].linkId = "21"
* item[0].item[0].linkId = "21.1"
* item[0].item[0].answer[0].valueCoding = TWSSSchoolingStatus#2 "就學中"
* item[0].item[1].linkId = "21.3"
* item[0].item[1].answer[0].valueString = "南港國中"
* item[0].item[2].linkId = "21.4"
* item[0].item[2].answer[0].valueString = "二年級"
* item[0].item[3].linkId = "21.6"
* item[0].item[3].answer[0].valueBoolean = false
* item[0].item[4].linkId = "21.8"
* item[0].item[4].answer[0].valueCoding = TWSSEducationLevel#3 "國中"

Instance: related-person-education-information-response-min
InstanceOf: QuestionnaireResponseTWSSBase
Usage: #example
Title: "關係人教育資訊回覆範例"
* questionnaire = "https://sfaa.gov.tw/base/Questionnaire/education-information"
* status = #completed
* subject = Reference(related-min)
* authored = "2026-08-25T09:10:00+08:00"
* author = Reference(prac-min)
* item[0].linkId = "21"
* item[0].item[0].linkId = "21.8"
* item[0].item[0].answer[0].valueCoding = TWSSEducationLevel#4 "高中職"

Instance: practitioner-education-information-response-min
InstanceOf: QuestionnaireResponseTWSSBase
Usage: #example
Title: "服務人教育資訊回覆範例"
* questionnaire = "https://sfaa.gov.tw/base/Questionnaire/education-information"
* status = #completed
* subject = Reference(prac-min)
* authored = "2026-08-25T09:20:00+08:00"
* author = Reference(prac-min)
* item[0].linkId = "21"
* item[0].item[0].linkId = "21.2"
* item[0].item[0].answer[0].valueInteger = 2014
* item[0].item[1].linkId = "21.3"
* item[0].item[1].answer[0].valueString = "臺北市立大學"
* item[0].item[2].linkId = "21.5"
* item[0].item[2].answer[0].valueString = "社會工作學系"
* item[0].item[3].linkId = "21.6"
* item[0].item[3].answer[0].valueBoolean = true
* item[0].item[4].linkId = "21.7"
* item[0].item[4].answer[0].valueDecimal = 2018
* item[0].item[5].linkId = "21.8"
* item[0].item[5].answer[0].valueCoding = TWSSEducationLevel#6 "大學"
* item[0].item[6].linkId = "21.9"
* item[0].item[6].answer[0].valueBoolean = true
* item[0].item[7].linkId = "21.10"
* item[0].item[7].answer[0].valueBoolean = true

Instance: medical-support-assessment-response-min
InstanceOf: AssessmentQuestionnaireResponseTWSSBase
Usage: #example
Title: "醫療服務現況回覆範例"
* questionnaire = "https://sfaa.gov.tw/base/Questionnaire/medical-support-assessment"
* status = #completed
* subject = Reference(pat-min)
* basedOn = Reference(case-report-min)
* encounter = Reference(assessment-service-min)
* authored = "2026-08-25T09:30:00+08:00"
* author = Reference(prac-min)
* item[0].linkId = "22"
* item[0].item[0].linkId = "22.1"
* item[0].item[0].answer[0].valueCoding = TWSSMedicalRehabilitationService#A "語言治療"
* item[0].item[1].linkId = "22.2"
* item[0].item[1].answer[0].valueCoding = TWSSMedicalAssistance#A "鼻胃管"

Instance: organization-administrative-information-response-min
InstanceOf: QuestionnaireResponseTWSSBase
Usage: #example
Title: "機構行政與營運資訊回覆範例"
* questionnaire = "https://sfaa.gov.tw/base/Questionnaire/organization-administrative-information"
* status = #completed
* subject = Reference(org-min)
* authored = "2026-08-25T09:40:00+08:00"
* author = Reference(prac-min)
* item[0].linkId = "24"
* item[0].item[0].linkId = "24.1"
* item[0].item[0].answer[0].valueBoolean = true
* item[0].item[1].linkId = "24.2"
* item[0].item[1].answer[0].valueCoding = TWSSOrganizationAccreditationLevel#A "優等"
* item[0].item[2].linkId = "24.3"
* item[0].item[2].answer[0].valueString = "兒童及少年福利與權益保障法第 97 條"
* item[1].linkId = "28"
* item[1].item[0].linkId = "28.1"
* item[1].item[0].item[0].linkId = "28.1.1"
* item[1].item[0].item[0].answer[0].valueInteger = 60
* item[1].item[0].item[1].linkId = "28.1.2"
* item[1].item[0].item[1].answer[0].valueInteger = 40
* item[1].item[0].item[2].linkId = "28.1.3"
* item[1].item[0].item[2].answer[0].valueInteger = 2
* item[1].item[1].linkId = "28.2"
* item[1].item[1].item[0].linkId = "28.2.1"
* item[1].item[1].item[0].answer[0].valueQuantity.value = 250
* item[1].item[1].item[0].answer[0].valueQuantity.unit = "平方公尺"
* item[1].item[1].item[1].linkId = "28.2.2"
* item[1].item[1].item[1].answer[0].valueQuantity.value = 180
* item[1].item[1].item[1].answer[0].valueQuantity.unit = "平方公尺"
* item[1].item[1].item[2].linkId = "28.2.3"
* item[1].item[1].item[2].answer[0].valueQuantity.value = 70
* item[1].item[1].item[2].answer[0].valueQuantity.unit = "平方公尺"
* item[1].item[2].linkId = "28.3"
* item[1].item[2].item[0].linkId = "28.3.1"
* item[1].item[2].item[0].answer[0].valueString = "社工"
* item[1].item[2].item[1].linkId = "28.3.2"
* item[1].item[2].item[1].answer[0].valueInteger = 3
* item[1].item[3].linkId = "28.3"
* item[1].item[3].item[0].linkId = "28.3.1"
* item[1].item[3].item[0].answer[0].valueString = "生活照顧員"
* item[1].item[3].item[1].linkId = "28.3.2"
* item[1].item[3].item[1].answer[0].valueInteger = 6

Instance: case-service-administrative-information-response-min
InstanceOf: QuestionnaireResponseTWSSBase
Usage: #example
Title: "個案服務行政資訊回覆範例"
* questionnaire = "https://sfaa.gov.tw/base/Questionnaire/case-service-administrative-information"
* status = #completed
* subject = Reference(pat-min)
* authored = "2026-08-25T09:50:00+08:00"
* author = Reference(prac-min)
* item[0].linkId = "25"
* item[0].item[0].linkId = "25.1"
* item[0].item[0].answer[0].valueDate = "2026-08-20"
