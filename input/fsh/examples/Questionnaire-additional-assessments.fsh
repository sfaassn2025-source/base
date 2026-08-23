Instance: case-basic-family-information
InstanceOf: QuestionnaireCaseBasicFamilyTWSSBase
Usage: #definition
Description: "個案基本家庭資料評估表。"
Title: "個案基本與家庭資訊 Questionnaire"
* url = "https://sfaa.gov.tw/base/Questionnaire/case-basic-family-information"
* status = #active
* subjectType[0] = #Patient
* item[caseBasicFamily].text = "個案基本與家庭資訊"
* item[caseBasicFamily].item[familyStructure].text = "家庭結構"
* item[caseBasicFamily].item[childrenStatus].text = "子女狀態"
* item[caseBasicFamily].item[childrenCount].text = "子女數量"
* item[caseBasicFamily].item[familyMonthlyIncome].text = "家庭月收入"
* item[caseBasicFamily].item[specialEducationType].text = "特殊教育類型"

Instance: practitioner-employment-information
InstanceOf: QuestionnairePractitionerEmploymentTWSSBase
Usage: #definition
Description: "服務人健康檢查日期表。"
Title: "服務人健康檢查資訊 Questionnaire"
* url = "https://sfaa.gov.tw/base/Questionnaire/practitioner-employment-information"
* status = #active
* subjectType[0] = #Practitioner
* item[practitionerEmployment].text = "服務人健康檢查資訊"
* item[practitionerEmployment].item[healthCheckDate].text = "健康檢查日期"

Instance: related-person-basic-information
InstanceOf: QuestionnaireRelatedPersonBasicTWSSBase
Usage: #definition
Description: "關係人基本資訊評估表。"
Title: "關係人基本資訊 Questionnaire"
* url = "https://sfaa.gov.tw/base/Questionnaire/related-person-basic-information"
* status = #active
* subjectType[0] = #Patient
* item[relatedPersonBasic].text = "關係人基本資訊"
* item[relatedPersonBasic].item[isCohabiting].text = "是否同住"
* item[relatedPersonBasic].item[isForeignSpouse].text = "是否為外籍配偶"

Instance: vocational-training-status
InstanceOf: QuestionnaireVocationalTrainingTWSSBase
Usage: #definition
Description: "職業訓練狀況評估表。"
Title: "職業訓練狀況 Questionnaire"
* url = "https://sfaa.gov.tw/base/Questionnaire/vocational-training-status"
* status = #active
* subjectType[0] = #Patient
* item[vocationalTraining].text = "職業訓練狀況"
* item[vocationalTraining].item[hasAttendedVocationalTraining].text = "曾參加職業訓練"
* item[vocationalTraining].item[vocationalTrainingType].text = "職訓別"

Instance: school-adaptation-status
InstanceOf: QuestionnaireSchoolAdaptationTWSSBase
Usage: #definition
Description: "學校適應狀況評估表。"
Title: "學校適應狀況 Questionnaire"
* url = "https://sfaa.gov.tw/base/Questionnaire/school-adaptation-status"
* status = #active
* subjectType[0] = #Patient
* item[schoolAdaptationStatus].text = "學校適應狀況"

Instance: emotional-behavior-status
InstanceOf: QuestionnaireEmotionalBehaviorTWSSBase
Usage: #definition
Description: "情緒與行為狀況評估表。"
Title: "情緒與行為狀況 Questionnaire"
* url = "https://sfaa.gov.tw/base/Questionnaire/emotional-behavior-status"
* status = #active
* subjectType[0] = #Patient
* item[emotionalControlAbility].text = "情緒控制能力"

Instance: interpersonal-interaction-status
InstanceOf: QuestionnaireInterpersonalInteractionTWSSBase
Usage: #definition
Description: "人際互動狀況評估表。"
Title: "人際互動狀況 Questionnaire"
* url = "https://sfaa.gov.tw/base/Questionnaire/interpersonal-interaction-status"
* status = #active
* subjectType[0] = #Patient
* item[interpersonalAssessment].text = "人際互動狀況"
* item[interpersonalAssessment].item[interpersonalSocialAdaptationAssessment].text = "人際社會適應評估"
* item[interpersonalAssessment].item[interpersonalInteraction].text = "人際互動"
* item[interpersonalAssessment].item[communicationAndLanguageExpressionAbility].text = "溝通及語言表達能力"
* item[interpersonalAssessment].item[familyRelationship].text = "家庭關係"
* item[interpersonalAssessment].item[schoolLifeAdaptation].text = "學校生活適應"

Instance: developmental-delay-status
InstanceOf: QuestionnaireDevelopmentalDelayTWSSBase
Usage: #definition
Description: "兒童發展遲緩評估表。"
Title: "發展遲緩類別 Questionnaire"
* url = "https://sfaa.gov.tw/base/Questionnaire/developmental-delay-status"
* status = #active
* subjectType[0] = #Patient
* item[developmentalDelay].text = "發展遲緩類別"
* item[developmentalDelay].item[languageCommunicationAbility].text = "語言溝通能力"
* item[developmentalDelay].item[cognitiveAbility].text = "認知能力"
* item[developmentalDelay].item[socialEmotionalDevelopment].text = "社會情緒發展"
* item[developmentalDelay].item[selfCare].text = "生活自理"
* item[developmentalDelay].item[grossMotor].text = "粗動作"
* item[developmentalDelay].item[fineMotor].text = "精細動作"

Instance: employment-information
InstanceOf: QuestionnaireEmploymentTWSSBase
Usage: #definition
Description: "就業資訊評估表。"
Title: "就業資訊 Questionnaire"
* url = "https://sfaa.gov.tw/base/Questionnaire/employment-information"
* status = #active
* subjectType[0] = #Patient
* item[employmentInformation].text = "就業資訊"
* item[employmentInformation].item[employmentStatus].text = "就業現況"
* item[employmentInformation].item[unemploymentReason].text = "未就業原因"
* item[employmentInformation].item[previousJob].text = "曾任職"
* item[employmentInformation].item[currentJob].text = "現職"

Instance: placement-information
InstanceOf: QuestionnairePlacementInformationTWSSBase
Usage: #definition
Description: "安置服務資訊評估表。"
Title: "安置資訊 Questionnaire"
* url = "https://sfaa.gov.tw/base/Questionnaire/placement-information"
* status = #active
* subjectType[0] = #Patient
* item[placementInformation].text = "安置資訊"
* item[placementInformation].item[isPlaced].text = "是否安置"
* item[placementInformation].item[placementStatus].text = "安置狀況"
* item[placementInformation].item[isPlacementEnded].text = "是否結束安置"

Instance: closure-placement-information
InstanceOf: QuestionnaireClosurePlacementTWSSBase
Usage: #definition
Description: "結案後安置資訊評估表。"
Title: "結案與安置資訊 Questionnaire"
* url = "https://sfaa.gov.tw/base/Questionnaire/closure-placement-information"
* status = #active
* subjectType[0] = #Patient
* item[placementNoFollowUpReason].text = "安置未轉後追原因"
