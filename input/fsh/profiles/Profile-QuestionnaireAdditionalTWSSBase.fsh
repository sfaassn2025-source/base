Profile: QuestionnaireCaseBasicFamilyTWSSBase
Parent: QuestionnaireTWSSBase
Id: Questionnaire-case-basic-family-twss-base
Title: "個案基本與家庭資訊-Questionnaire TWSS Base"
Description: "定義個案基本、家庭與特殊教育資訊表單的題目結構。"
* ^version = "0.0.1"
* item ^slicing.discriminator.type = #value
* item ^slicing.discriminator.path = "linkId"
* item ^slicing.rules = #closed
* item contains caseBasicFamily 1..1 MS
* item[caseBasicFamily].linkId = "12"
* item[caseBasicFamily].type = #group
* item[caseBasicFamily].item ^slicing.discriminator.type = #value
* item[caseBasicFamily].item ^slicing.discriminator.path = "linkId"
* item[caseBasicFamily].item ^slicing.rules = #closed
* item[caseBasicFamily].item contains familyStructure 0..1 MS and childrenStatus 0..1 MS and childrenCount 0..1 MS and familyMonthlyIncome 0..1 MS and specialEducationType 0..1 MS
* item[caseBasicFamily].item[familyStructure].linkId = "12.1"
* item[caseBasicFamily].item[familyStructure].type = #choice
* item[caseBasicFamily].item[familyStructure].answerValueSet = Canonical(twss-family-structure-vs)
* item[caseBasicFamily].item[childrenStatus].linkId = "12.2"
* item[caseBasicFamily].item[childrenStatus].type = #choice
* item[caseBasicFamily].item[childrenStatus].answerValueSet = Canonical(twss-children-status-vs)
* item[caseBasicFamily].item[childrenCount].linkId = "12.3"
* item[caseBasicFamily].item[childrenCount].type = #decimal
* item[caseBasicFamily].item[familyMonthlyIncome].linkId = "12.4"
* item[caseBasicFamily].item[familyMonthlyIncome].type = #decimal
* item[caseBasicFamily].item[specialEducationType].linkId = "12.5"
* item[caseBasicFamily].item[specialEducationType].type = #choice
* item[caseBasicFamily].item[specialEducationType].answerValueSet = Canonical(twss-special-education-type-vs)

Profile: QuestionnairePractitionerEmploymentTWSSBase
Parent: QuestionnaireTWSSBase
Id: Questionnaire-practitioner-employment-twss-base
Title: "服務人基本與任職資訊-Questionnaire TWSS Base"
Description: "定義服務人基本與任職資訊表單的題目結構。"
* ^version = "0.0.1"
* item ^slicing.discriminator.type = #value
* item ^slicing.discriminator.path = "linkId"
* item ^slicing.rules = #closed
* item contains practitionerEmployment 1..1 MS
* item[practitionerEmployment].linkId = "13"
* item[practitionerEmployment].type = #group
* item[practitionerEmployment].item ^slicing.discriminator.type = #value
* item[practitionerEmployment].item ^slicing.discriminator.path = "linkId"
* item[practitionerEmployment].item ^slicing.rules = #closed
* item[practitionerEmployment].item contains isRelativeNanny 0..1 MS and practitionSalary 0..1 MS and healthCheckDate 0..1 MS
* item[practitionerEmployment].item[isRelativeNanny].linkId = "13.1"
* item[practitionerEmployment].item[isRelativeNanny].type = #boolean
* item[practitionerEmployment].item[practitionSalary].linkId = "13.2"
* item[practitionerEmployment].item[practitionSalary].type = #decimal
* item[practitionerEmployment].item[healthCheckDate].linkId = "healthCheckDate"
* item[practitionerEmployment].item[healthCheckDate].type = #date

Profile: QuestionnaireRelatedPersonBasicTWSSBase
Parent: QuestionnaireTWSSBase
Id: Questionnaire-related-person-basic-twss-base
Title: "關係人基本資訊-Questionnaire TWSS Base"
Description: "定義關係人基本資訊表單的題目結構。"
* ^version = "0.0.1"
* item ^slicing.discriminator.type = #value
* item ^slicing.discriminator.path = "linkId"
* item ^slicing.rules = #closed
* item contains relatedPersonBasic 1..1 MS
* item[relatedPersonBasic].linkId = "14"
* item[relatedPersonBasic].type = #group
* item[relatedPersonBasic].item ^slicing.discriminator.type = #value
* item[relatedPersonBasic].item ^slicing.discriminator.path = "linkId"
* item[relatedPersonBasic].item ^slicing.rules = #closed
* item[relatedPersonBasic].item contains isCohabiting 0..1 MS and isForeignSpouse 0..1 MS
* item[relatedPersonBasic].item[isCohabiting].linkId = "14.1"
* item[relatedPersonBasic].item[isCohabiting].type = #boolean
* item[relatedPersonBasic].item[isForeignSpouse].linkId = "14.2"
* item[relatedPersonBasic].item[isForeignSpouse].type = #boolean

Profile: QuestionnaireVocationalTrainingTWSSBase
Parent: QuestionnaireTWSSBase
Id: Questionnaire-vocational-training-twss-base
Title: "職業訓練狀況-Questionnaire TWSS Base"
Description: "定義個案職業訓練狀況表單的題目結構。"
* ^version = "0.0.1"
* item ^slicing.discriminator.type = #value
* item ^slicing.discriminator.path = "linkId"
* item ^slicing.rules = #closed
* item contains vocationalTraining 1..1 MS
* item[vocationalTraining].linkId = "15"
* item[vocationalTraining].type = #group
* item[vocationalTraining].item ^slicing.discriminator.type = #value
* item[vocationalTraining].item ^slicing.discriminator.path = "linkId"
* item[vocationalTraining].item ^slicing.rules = #closed
* item[vocationalTraining].item contains hasAttendedVocationalTraining 0..1 MS and vocationalTrainingType 0..* MS
* item[vocationalTraining].item[hasAttendedVocationalTraining].linkId = "15.1"
* item[vocationalTraining].item[hasAttendedVocationalTraining].type = #boolean
* item[vocationalTraining].item[vocationalTrainingType].linkId = "15.2"
* item[vocationalTraining].item[vocationalTrainingType].type = #string
* item[vocationalTraining].item[vocationalTrainingType].repeats = true

Profile: QuestionnaireSchoolAdaptationTWSSBase
Parent: QuestionnaireTWSSBase
Id: Questionnaire-school-adaptation-twss-base
Title: "學校適應狀況-Questionnaire TWSS Base"
Description: "定義學校適應狀況表單的題目結構。"
* ^version = "0.0.1"
* item ^slicing.discriminator.type = #value
* item ^slicing.discriminator.path = "linkId"
* item ^slicing.rules = #closed
* item contains schoolAdaptationStatus 1..1 MS
* item[schoolAdaptationStatus].linkId = "16"
* item[schoolAdaptationStatus].type = #string

Profile: QuestionnaireEmotionalBehaviorTWSSBase
Parent: QuestionnaireTWSSBase
Id: Questionnaire-emotional-behavior-twss-base
Title: "情緒與行為狀況-Questionnaire TWSS Base"
Description: "定義情緒控制能力評估表單的題目結構。"
* ^version = "0.0.1"
* item ^slicing.discriminator.type = #value
* item ^slicing.discriminator.path = "linkId"
* item ^slicing.rules = #closed
* item contains emotionalControlAbility 1..1 MS
* item[emotionalControlAbility].linkId = "17"
* item[emotionalControlAbility].type = #choice
* item[emotionalControlAbility].answerValueSet = Canonical(twss-emotional-control-ability-vs)

Profile: QuestionnaireInterpersonalInteractionTWSSBase
Parent: QuestionnaireTWSSBase
Id: Questionnaire-interpersonal-interaction-twss-base
Title: "人際互動狀況-Questionnaire TWSS Base"
Description: "定義人際與社會適應評估表單的題目結構。"
* ^version = "0.0.1"
* item ^slicing.discriminator.type = #value
* item ^slicing.discriminator.path = "linkId"
* item ^slicing.rules = #closed
* item contains interpersonalAssessment 1..1 MS
* item[interpersonalAssessment].linkId = "18"
* item[interpersonalAssessment].type = #group
* item[interpersonalAssessment].item ^slicing.discriminator.type = #value
* item[interpersonalAssessment].item ^slicing.discriminator.path = "linkId"
* item[interpersonalAssessment].item ^slicing.rules = #closed
* item[interpersonalAssessment].item contains interpersonalSocialAdaptationAssessment 0..1 MS and interpersonalInteraction 0..1 MS and communicationAndLanguageExpressionAbility 0..1 MS and familyRelationship 0..1 MS and schoolLifeAdaptation 0..1 MS
* item[interpersonalAssessment].item[interpersonalSocialAdaptationAssessment].linkId = "18.1"
* item[interpersonalAssessment].item[interpersonalSocialAdaptationAssessment].type = #choice
* item[interpersonalAssessment].item[interpersonalSocialAdaptationAssessment].answerValueSet = Canonical(twss-interaction-assessment-vs)
* item[interpersonalAssessment].item[interpersonalInteraction].linkId = "18.2"
* item[interpersonalAssessment].item[interpersonalInteraction].type = #choice
* item[interpersonalAssessment].item[interpersonalInteraction].answerValueSet = Canonical(twss-interaction-assessment-vs)
* item[interpersonalAssessment].item[communicationAndLanguageExpressionAbility].linkId = "18.3"
* item[interpersonalAssessment].item[communicationAndLanguageExpressionAbility].type = #choice
* item[interpersonalAssessment].item[communicationAndLanguageExpressionAbility].answerValueSet = Canonical(twss-interaction-assessment-vs)
* item[interpersonalAssessment].item[familyRelationship].linkId = "18.4"
* item[interpersonalAssessment].item[familyRelationship].type = #choice
* item[interpersonalAssessment].item[familyRelationship].answerValueSet = Canonical(twss-interaction-assessment-vs)
* item[interpersonalAssessment].item[schoolLifeAdaptation].linkId = "18.5"
* item[interpersonalAssessment].item[schoolLifeAdaptation].type = #choice
* item[interpersonalAssessment].item[schoolLifeAdaptation].answerValueSet = Canonical(twss-interaction-assessment-vs)

Profile: QuestionnaireDevelopmentalDelayTWSSBase
Parent: QuestionnaireTWSSBase
Id: Questionnaire-developmental-delay-twss-base
Title: "發展遲緩類別-Questionnaire TWSS Base"
Description: "定義發展遲緩類別評估表單的題目結構。"
* ^version = "0.0.1"
* item ^slicing.discriminator.type = #value
* item ^slicing.discriminator.path = "linkId"
* item ^slicing.rules = #closed
* item contains developmentalDelay 1..1 MS
* item[developmentalDelay].linkId = "19"
* item[developmentalDelay].type = #group
* item[developmentalDelay].item ^slicing.discriminator.type = #value
* item[developmentalDelay].item ^slicing.discriminator.path = "linkId"
* item[developmentalDelay].item ^slicing.rules = #closed
* item[developmentalDelay].item contains languageCommunicationAbility 0..1 MS and cognitiveAbility 0..1 MS and socialEmotionalDevelopment 0..1 MS and selfCare 0..1 MS and grossMotor 0..1 MS and fineMotor 0..1 MS
* item[developmentalDelay].item[languageCommunicationAbility].linkId = "19.1"
* item[developmentalDelay].item[languageCommunicationAbility].type = #choice
* item[developmentalDelay].item[languageCommunicationAbility].answerValueSet = Canonical(twss-developmental-delay-category-vs)
* item[developmentalDelay].item[cognitiveAbility].linkId = "19.2"
* item[developmentalDelay].item[cognitiveAbility].type = #choice
* item[developmentalDelay].item[cognitiveAbility].answerValueSet = Canonical(twss-developmental-delay-category-vs)
* item[developmentalDelay].item[socialEmotionalDevelopment].linkId = "19.3"
* item[developmentalDelay].item[socialEmotionalDevelopment].type = #choice
* item[developmentalDelay].item[socialEmotionalDevelopment].answerValueSet = Canonical(twss-developmental-delay-category-vs)
* item[developmentalDelay].item[selfCare].linkId = "19.4"
* item[developmentalDelay].item[selfCare].type = #choice
* item[developmentalDelay].item[selfCare].answerValueSet = Canonical(twss-developmental-delay-category-vs)
* item[developmentalDelay].item[grossMotor].linkId = "19.5"
* item[developmentalDelay].item[grossMotor].type = #choice
* item[developmentalDelay].item[grossMotor].answerValueSet = Canonical(twss-developmental-delay-category-vs)
* item[developmentalDelay].item[fineMotor].linkId = "19.6"
* item[developmentalDelay].item[fineMotor].type = #choice
* item[developmentalDelay].item[fineMotor].answerValueSet = Canonical(twss-developmental-delay-category-vs)

Profile: QuestionnaireEmploymentTWSSBase
Parent: QuestionnaireTWSSBase
Id: Questionnaire-employment-twss-base
Title: "就業資訊-Questionnaire TWSS Base"
Description: "定義個案就業資訊表單的題目結構。"
* ^version = "0.0.1"
* item ^slicing.discriminator.type = #value
* item ^slicing.discriminator.path = "linkId"
* item ^slicing.rules = #closed
* item contains employmentInformation 1..1 MS
* item[employmentInformation].linkId = "20"
* item[employmentInformation].type = #group
* item[employmentInformation].item ^slicing.discriminator.type = #value
* item[employmentInformation].item ^slicing.discriminator.path = "linkId"
* item[employmentInformation].item ^slicing.rules = #closed
* item[employmentInformation].item contains employmentStatus 0..1 MS and unemploymentReason 0..* MS and previousJob 0..1 MS and currentJob 0..1 MS
* item[employmentInformation].item[employmentStatus].linkId = "20.1"
* item[employmentInformation].item[employmentStatus].type = #choice
* item[employmentInformation].item[employmentStatus].answerValueSet = Canonical(twss-employment-status-vs)
* item[employmentInformation].item[unemploymentReason].linkId = "20.2"
* item[employmentInformation].item[unemploymentReason].type = #choice
* item[employmentInformation].item[unemploymentReason].repeats = true
* item[employmentInformation].item[unemploymentReason].answerValueSet = Canonical(twss-unemployment-reason-vs)
* item[employmentInformation].item[previousJob].linkId = "20.3"
* item[employmentInformation].item[previousJob].type = #string
* item[employmentInformation].item[currentJob].linkId = "20.4"
* item[employmentInformation].item[currentJob].type = #string

Profile: QuestionnairePlacementInformationTWSSBase
Parent: QuestionnaireTWSSBase
Id: Questionnaire-placement-information-twss-base
Title: "安置資訊-Questionnaire TWSS Base"
Description: "定義安置評估、服務與結案共用表單的題目結構。"
* ^version = "0.0.1"
* item ^slicing.discriminator.type = #value
* item ^slicing.discriminator.path = "linkId"
* item ^slicing.rules = #closed
* item contains placementInformation 1..1 MS
* item[placementInformation].linkId = "23"
* item[placementInformation].type = #group
* item[placementInformation].item ^slicing.discriminator.type = #value
* item[placementInformation].item ^slicing.discriminator.path = "linkId"
* item[placementInformation].item ^slicing.rules = #closed
* item[placementInformation].item contains isPlaced 0..1 MS and placementStatus 0..1 MS and isPlacementEnded 0..1 MS
* item[placementInformation].item[isPlaced].linkId = "23.1"
* item[placementInformation].item[isPlaced].type = #boolean
* item[placementInformation].item[placementStatus].linkId = "23.3"
* item[placementInformation].item[placementStatus].type = #string
* item[placementInformation].item[isPlacementEnded].linkId = "23.4"
* item[placementInformation].item[isPlacementEnded].type = #choice
* item[placementInformation].item[isPlacementEnded].answerValueSet = Canonical(twss-placement-ended-vs)

Profile: QuestionnaireClosurePlacementTWSSBase
Parent: QuestionnaireTWSSBase
Id: Questionnaire-closure-placement-twss-base
Title: "結案與安置資訊-Questionnaire TWSS Base"
Description: "定義結案時安置未轉後追原因表單的題目結構。"
* ^version = "0.0.1"
* item ^slicing.discriminator.type = #value
* item ^slicing.discriminator.path = "linkId"
* item ^slicing.rules = #closed
* item contains placementNoFollowUpReason 0..1 MS
* item[placementNoFollowUpReason].linkId = "26"
* item[placementNoFollowUpReason].type = #choice
* item[placementNoFollowUpReason].answerValueSet = Canonical(twss-placement-no-follow-up-reason-vs)
