Profile: QuestionnaireEducationInformationTWSSBase
Parent: QuestionnaireTWSSBase
Id: Questionnaire-education-information-twss-base
Title: "教育資訊-Questionnaire TWSS Base"
Description: "定義個案、關係人及服務人共用的教育資訊表單。"
* ^version = "0.0.1"
* item ^slicing.discriminator.type = #value
* item ^slicing.discriminator.path = "linkId"
* item ^slicing.rules = #closed
* item contains educationInformation 1..1 MS
* item[educationInformation].linkId = "21"
* item[educationInformation].text = "教育資訊"
* item[educationInformation].type = #group
* item[educationInformation].item ^slicing.discriminator.type = #value
* item[educationInformation].item ^slicing.discriminator.path = "linkId"
* item[educationInformation].item ^slicing.rules = #closed
* item[educationInformation].item contains schoolingStatus 0..* MS and enrollmentYear 0..1 MS and schoolName 0..* MS and gradeLevel 0..1 MS and major 0..1 MS and graduated 0..1 MS and graduationYear 0..1 MS and educationLevel 0..1 MS and relatedMajorGraduate 0..1 MS and socialWelfareRelatedEducation 0..1 MS
* item[educationInformation].item[schoolingStatus].linkId = "21.1"
* item[educationInformation].item[schoolingStatus].text = "就學現況"
* item[educationInformation].item[schoolingStatus].type = #choice
* item[educationInformation].item[schoolingStatus].repeats = true
* item[educationInformation].item[schoolingStatus].answerValueSet = Canonical(twss-schooling-status-vs)
* item[educationInformation].item[enrollmentYear].linkId = "21.2"
* item[educationInformation].item[enrollmentYear].text = "服務人入學年度"
* item[educationInformation].item[enrollmentYear].type = #integer
* item[educationInformation].item[schoolName].linkId = "21.3"
* item[educationInformation].item[schoolName].text = "就讀學校名稱"
* item[educationInformation].item[schoolName].type = #string
* item[educationInformation].item[schoolName].repeats = true
* item[educationInformation].item[gradeLevel].linkId = "21.4"
* item[educationInformation].item[gradeLevel].text = "年級別"
* item[educationInformation].item[gradeLevel].type = #string
* item[educationInformation].item[major].linkId = "21.5"
* item[educationInformation].item[major].text = "就讀或畢業科系"
* item[educationInformation].item[major].type = #string
* item[educationInformation].item[graduated].linkId = "21.6"
* item[educationInformation].item[graduated].text = "是否畢業"
* item[educationInformation].item[graduated].type = #boolean
* item[educationInformation].item[graduationYear].linkId = "21.7"
* item[educationInformation].item[graduationYear].text = "服務人畢業年度"
* item[educationInformation].item[graduationYear].type = #integer
* item[educationInformation].item[educationLevel].linkId = "21.8"
* item[educationInformation].item[educationLevel].text = "教育程度"
* item[educationInformation].item[educationLevel].type = #choice
* item[educationInformation].item[educationLevel].answerValueSet = Canonical(twss-education-level-vs)
* item[educationInformation].item[relatedMajorGraduate].linkId = "21.9"
* item[educationInformation].item[relatedMajorGraduate].text = "是否為相關科系畢業"
* item[educationInformation].item[relatedMajorGraduate].type = #boolean
* item[educationInformation].item[socialWelfareRelatedEducation].linkId = "21.10"
* item[educationInformation].item[socialWelfareRelatedEducation].text = "是否為社福相關學歷"
* item[educationInformation].item[socialWelfareRelatedEducation].type = #boolean

Profile: QuestionnaireMedicalSupportTWSSBase
Parent: QuestionnaireTWSSBase
Id: Questionnaire-medical-support-twss-base
Title: "醫療服務現況-Questionnaire TWSS Base"
Description: "定義個案服務評估中的醫療復健服務及醫療協助表單。"
* ^version = "0.0.1"
* item ^slicing.discriminator.type = #value
* item ^slicing.discriminator.path = "linkId"
* item ^slicing.rules = #closed
* item contains medicalSupport 1..1 MS
* item[medicalSupport].linkId = "22"
* item[medicalSupport].text = "醫療服務現況"
* item[medicalSupport].type = #group
* item[medicalSupport].item ^slicing.discriminator.type = #value
* item[medicalSupport].item ^slicing.discriminator.path = "linkId"
* item[medicalSupport].item ^slicing.rules = #closed
* item[medicalSupport].item contains medicalRehabilitationService 0..* MS and medicalAssistance 0..* MS
* item[medicalSupport].item[medicalRehabilitationService].linkId = "22.1"
* item[medicalSupport].item[medicalRehabilitationService].text = "醫療復健服務"
* item[medicalSupport].item[medicalRehabilitationService].type = #choice
* item[medicalSupport].item[medicalRehabilitationService].repeats = true
* item[medicalSupport].item[medicalRehabilitationService].answerValueSet = Canonical(twss-medical-rehabilitation-service-vs)
* item[medicalSupport].item[medicalAssistance].linkId = "22.2"
* item[medicalSupport].item[medicalAssistance].text = "醫療協助"
* item[medicalSupport].item[medicalAssistance].type = #choice
* item[medicalSupport].item[medicalAssistance].repeats = true
* item[medicalSupport].item[medicalAssistance].answerValueSet = Canonical(twss-medical-assistance-vs)

Profile: QuestionnaireOrganizationAdministrativeTWSSBase
Parent: QuestionnaireTWSSBase
Id: Questionnaire-organization-administrative-twss-base
Title: "機構行政與營運資訊-Questionnaire TWSS Base"
Description: "定義機構查核、評鑑、裁罰與營運填報資訊表單。"
* ^version = "0.0.1"
* subjectType ^slicing.discriminator.type = #value
* subjectType ^slicing.discriminator.path = "$this"
* subjectType ^slicing.rules = #closed
* subjectType contains organization 1..1 MS
* subjectType[organization] = #Organization
* item ^slicing.discriminator.type = #value
* item ^slicing.discriminator.path = "linkId"
* item ^slicing.rules = #closed
* item contains organizationAdministrativeInformation 1..1 MS and organizationOperationsInformation 1..1 MS
* item[organizationAdministrativeInformation].linkId = "24"
* item[organizationAdministrativeInformation].text = "機構行政資訊"
* item[organizationAdministrativeInformation].type = #group
* item[organizationAdministrativeInformation].item ^slicing.discriminator.type = #value
* item[organizationAdministrativeInformation].item ^slicing.discriminator.path = "linkId"
* item[organizationAdministrativeInformation].item ^slicing.rules = #closed
* item[organizationAdministrativeInformation].item contains organizationAuditResult 0..1 MS and accreditationLevel 0..1 MS and penaltyLegalBasis 0..1 MS
* item[organizationAdministrativeInformation].item[organizationAuditResult].linkId = "24.1"
* item[organizationAdministrativeInformation].item[organizationAuditResult].text = "查核結果"
* item[organizationAdministrativeInformation].item[organizationAuditResult].type = #boolean
* item[organizationAdministrativeInformation].item[accreditationLevel].linkId = "24.2"
* item[organizationAdministrativeInformation].item[accreditationLevel].text = "評鑑等級"
* item[organizationAdministrativeInformation].item[accreditationLevel].type = #choice
* item[organizationAdministrativeInformation].item[accreditationLevel].answerValueSet = Canonical(twss-organization-accreditation-level-vs)
* item[organizationAdministrativeInformation].item[penaltyLegalBasis].linkId = "24.3"
* item[organizationAdministrativeInformation].item[penaltyLegalBasis].text = "裁罰法規依據"
* item[organizationAdministrativeInformation].item[penaltyLegalBasis].type = #string
* item[organizationAdministrativeInformation].item[penaltyLegalBasis].repeats = true
* item[organizationOperationsInformation].linkId = "28"
* item[organizationOperationsInformation].text = "機構行政與營運資訊"
* item[organizationOperationsInformation].type = #group
* item[organizationOperationsInformation].item ^slicing.discriminator.type = #value
* item[organizationOperationsInformation].item ^slicing.discriminator.path = "linkId"
* item[organizationOperationsInformation].item ^slicing.rules = #closed
* item[organizationOperationsInformation].item contains organizationCapacity 1..1 MS and organizationUsableArea 1..1 MS and statutoryStaffing 0..1 MS
* item[organizationOperationsInformation].item[organizationCapacity].linkId = "28.1"
* item[organizationOperationsInformation].item[organizationCapacity].text = "機構收容量能"
* item[organizationOperationsInformation].item[organizationCapacity].type = #group
* item[organizationOperationsInformation].item[organizationCapacity].item ^slicing.discriminator.type = #value
* item[organizationOperationsInformation].item[organizationCapacity].item ^slicing.discriminator.path = "linkId"
* item[organizationOperationsInformation].item[organizationCapacity].item ^slicing.rules = #closed
* item[organizationOperationsInformation].item[organizationCapacity].item contains admissionCapacity 0..1 MS and serviceableBeds 0..1 MS and isolationBeds 0..1 MS
* item[organizationOperationsInformation].item[organizationCapacity].item[admissionCapacity].linkId = "28.1.1"
* item[organizationOperationsInformation].item[organizationCapacity].item[admissionCapacity].text = "可收容人數"
* item[organizationOperationsInformation].item[organizationCapacity].item[admissionCapacity].type = #integer
* item[organizationOperationsInformation].item[organizationCapacity].item[serviceableBeds].linkId = "28.1.2"
* item[organizationOperationsInformation].item[organizationCapacity].item[serviceableBeds].text = "可服務床位"
* item[organizationOperationsInformation].item[organizationCapacity].item[serviceableBeds].type = #integer
* item[organizationOperationsInformation].item[organizationCapacity].item[isolationBeds].linkId = "28.1.3"
* item[organizationOperationsInformation].item[organizationCapacity].item[isolationBeds].text = "隔離專用床位"
* item[organizationOperationsInformation].item[organizationCapacity].item[isolationBeds].type = #integer
* item[organizationOperationsInformation].item[organizationUsableArea].linkId = "28.2"
* item[organizationOperationsInformation].item[organizationUsableArea].text = "機構可使用面積"
* item[organizationOperationsInformation].item[organizationUsableArea].type = #group
* item[organizationOperationsInformation].item[organizationUsableArea].item ^slicing.discriminator.type = #value
* item[organizationOperationsInformation].item[organizationUsableArea].item ^slicing.discriminator.path = "linkId"
* item[organizationOperationsInformation].item[organizationUsableArea].item ^slicing.rules = #closed
* item[organizationOperationsInformation].item[organizationUsableArea].item contains totalArea 0..1 MS and indoorArea 0..1 MS and outdoorArea 0..1 MS
* item[organizationOperationsInformation].item[organizationUsableArea].item[totalArea].linkId = "28.2.1"
* item[organizationOperationsInformation].item[organizationUsableArea].item[totalArea].text = "總面積"
* item[organizationOperationsInformation].item[organizationUsableArea].item[totalArea].type = #quantity
* item[organizationOperationsInformation].item[organizationUsableArea].item[indoorArea].linkId = "28.2.2"
* item[organizationOperationsInformation].item[organizationUsableArea].item[indoorArea].text = "室內面積"
* item[organizationOperationsInformation].item[organizationUsableArea].item[indoorArea].type = #quantity
* item[organizationOperationsInformation].item[organizationUsableArea].item[outdoorArea].linkId = "28.2.3"
* item[organizationOperationsInformation].item[organizationUsableArea].item[outdoorArea].text = "室外面積"
* item[organizationOperationsInformation].item[organizationUsableArea].item[outdoorArea].type = #quantity
* item[organizationOperationsInformation].item[statutoryStaffing].linkId = "28.3"
* item[organizationOperationsInformation].item[statutoryStaffing].text = "法定工作人員配置"
* item[organizationOperationsInformation].item[statutoryStaffing].type = #group
* item[organizationOperationsInformation].item[statutoryStaffing].repeats = true
* item[organizationOperationsInformation].item[statutoryStaffing].item ^slicing.discriminator.type = #value
* item[organizationOperationsInformation].item[statutoryStaffing].item ^slicing.discriminator.path = "linkId"
* item[organizationOperationsInformation].item[statutoryStaffing].item ^slicing.rules = #closed
* item[organizationOperationsInformation].item[statutoryStaffing].item contains staffCategory 1..1 MS and statutoryStaffingCount 1..1 MS
* item[organizationOperationsInformation].item[statutoryStaffing].item[staffCategory].linkId = "28.3.1"
* item[organizationOperationsInformation].item[statutoryStaffing].item[staffCategory].text = "人員類別"
* item[organizationOperationsInformation].item[statutoryStaffing].item[staffCategory].type = #string
* item[organizationOperationsInformation].item[statutoryStaffing].item[staffCategory].required = true
* item[organizationOperationsInformation].item[statutoryStaffing].item[statutoryStaffingCount].linkId = "28.3.2"
* item[organizationOperationsInformation].item[statutoryStaffing].item[statutoryStaffingCount].text = "法定工作人員配置數"
* item[organizationOperationsInformation].item[statutoryStaffing].item[statutoryStaffingCount].type = #integer
* item[organizationOperationsInformation].item[statutoryStaffing].item[statutoryStaffingCount].required = true

Profile: QuestionnaireCaseServiceAdministrativeTWSSBase
Parent: QuestionnaireTWSSBase
Id: Questionnaire-case-service-administrative-twss-base
Title: "個案服務行政資訊-Questionnaire TWSS Base"
Description: "定義個案服務裁定日期表單。"
* ^version = "0.0.1"
* item ^slicing.discriminator.type = #value
* item ^slicing.discriminator.path = "linkId"
* item ^slicing.rules = #closed
* item contains caseServiceAdministrativeInformation 1..1 MS
* item[caseServiceAdministrativeInformation].linkId = "25"
* item[caseServiceAdministrativeInformation].text = "個案服務行政資訊"
* item[caseServiceAdministrativeInformation].type = #group
* item[caseServiceAdministrativeInformation].item ^slicing.discriminator.type = #value
* item[caseServiceAdministrativeInformation].item ^slicing.discriminator.path = "linkId"
* item[caseServiceAdministrativeInformation].item ^slicing.rules = #closed
* item[caseServiceAdministrativeInformation].item contains rulingDate 0..1 MS
* item[caseServiceAdministrativeInformation].item[rulingDate].linkId = "25.1"
* item[caseServiceAdministrativeInformation].item[rulingDate].text = "裁定日期"
* item[caseServiceAdministrativeInformation].item[rulingDate].type = #date
