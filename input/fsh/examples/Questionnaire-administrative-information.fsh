Instance: education-information
InstanceOf: QuestionnaireEducationInformationTWSSBase
Usage: #definition
Title: "教育資訊 Questionnaire"
Description: "記錄個案、關係人或服務人教育資訊的共用表單。"
* url = "https://sfaa.gov.tw/base/Questionnaire/education-information"
* status = #active
* subjectType[0] = #Patient
* subjectType[+] = #RelatedPerson
* subjectType[+] = #Practitioner
* item[educationInformation].text = "教育資訊"
* item[educationInformation].item[schoolingStatus].text = "就學現況"
* item[educationInformation].item[enrollmentYear].text = "服務人入學年度"
* item[educationInformation].item[schoolName].text = "就讀學校名稱"
* item[educationInformation].item[gradeLevel].text = "年級別"
* item[educationInformation].item[major].text = "就讀或畢業科系"
* item[educationInformation].item[graduated].text = "是否畢業"
* item[educationInformation].item[graduationYear].text = "服務人畢業年度"
* item[educationInformation].item[educationLevel].text = "教育程度"
* item[educationInformation].item[relatedMajorGraduate].text = "是否為相關科系畢業"
* item[educationInformation].item[socialWelfareRelatedEducation].text = "是否為社福相關學歷"

Instance: medical-support-assessment
InstanceOf: QuestionnaireMedicalSupportTWSSBase
Usage: #definition
Title: "醫療服務現況 Questionnaire"
Description: "記錄個案服務評估中的醫療復健服務及醫療協助。"
* url = "https://sfaa.gov.tw/base/Questionnaire/medical-support-assessment"
* status = #active
* subjectType[0] = #Patient
* item[medicalSupport].text = "醫療服務現況"
* item[medicalSupport].item[medicalRehabilitationService].text = "醫療復健服務"
* item[medicalSupport].item[medicalAssistance].text = "醫療協助"

Instance: organization-administrative-information
InstanceOf: QuestionnaireOrganizationAdministrativeTWSSBase
Usage: #definition
Title: "機構行政與營運資訊 Questionnaire"
Description: "記錄機構查核、評鑑、裁罰與營運填報資訊的表單。"
* url = "https://sfaa.gov.tw/base/Questionnaire/organization-administrative-information"
* status = #active
* subjectType[organization] = #Organization
* item[organizationAdministrativeInformation].text = "機構行政資訊"
* item[organizationAdministrativeInformation].item[organizationAuditResult].text = "查核結果"
* item[organizationAdministrativeInformation].item[accreditationLevel].text = "評鑑等級"
* item[organizationAdministrativeInformation].item[penaltyLegalBasis].text = "裁罰法規依據"
* item[organizationAdministrativeInformation].item[penaltyLegalBasis].repeats = true
* item[organizationOperationsInformation].text = "機構行政與營運資訊"
* item[organizationOperationsInformation].item[organizationCapacity].text = "機構收容量能"
* item[organizationOperationsInformation].item[organizationCapacity].item[admissionCapacity].text = "可收容人數"
* item[organizationOperationsInformation].item[organizationCapacity].item[serviceableBeds].text = "可服務床位"
* item[organizationOperationsInformation].item[organizationCapacity].item[isolationBeds].text = "隔離專用床位"
* item[organizationOperationsInformation].item[organizationUsableArea].text = "機構可使用面積"
* item[organizationOperationsInformation].item[organizationUsableArea].item[totalArea].text = "總面積"
* item[organizationOperationsInformation].item[organizationUsableArea].item[indoorArea].text = "室內面積"
* item[organizationOperationsInformation].item[organizationUsableArea].item[outdoorArea].text = "室外面積"
* item[organizationOperationsInformation].item[statutoryStaffing].text = "法定工作人員配置"
* item[organizationOperationsInformation].item[statutoryStaffing].repeats = true
* item[organizationOperationsInformation].item[statutoryStaffing].item[staffCategory].text = "人員類別"
* item[organizationOperationsInformation].item[statutoryStaffing].item[statutoryStaffingCount].text = "法定工作人員配置數"

Instance: case-service-administrative-information
InstanceOf: QuestionnaireCaseServiceAdministrativeTWSSBase
Usage: #definition
Title: "個案服務行政資訊 Questionnaire"
Description: "記錄個案服務裁定日期的表單。"
* url = "https://sfaa.gov.tw/base/Questionnaire/case-service-administrative-information"
* status = #active
* subjectType[0] = #Patient
* item[caseServiceAdministrativeInformation].text = "個案服務行政資訊"
* item[caseServiceAdministrativeInformation].item[rulingDate].text = "裁定日期"
