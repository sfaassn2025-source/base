Profile: QuestionnaireFamilyAssessmentTWSSBase
Parent: QuestionnaireTWSSBase
Id: Questionnaire-family-assessment-twss-base
Title: "家庭評估-Questionnaire TWSS Base"
Description: "定義家庭評估表單的題目結構。"
* ^version = "0.0.1"
* item ^slicing.discriminator.type = #value
* item ^slicing.discriminator.path = "linkId"
* item ^slicing.rules = #closed
* item contains familyAssessment 1..1 MS
* item[familyAssessment].linkId = "2"
* item[familyAssessment].type = #group
* item[familyAssessment].item ^slicing.discriminator.type = #value
* item[familyAssessment].item ^slicing.discriminator.path = "linkId"
* item[familyAssessment].item ^slicing.rules = #closed
* item[familyAssessment].item contains familyEnvironment 1..1 MS and externalSupport 1..1 MS
* item[familyAssessment].item[familyEnvironment].linkId = "2.1"
* item[familyAssessment].item[familyEnvironment].type = #integer
* item[familyAssessment].item[externalSupport].linkId = "2.2"
* item[familyAssessment].item[externalSupport].type = #integer

Profile: QuestionnaireRelatedPersonRiskTWSSBase
Parent: QuestionnaireTWSSBase
Id: Questionnaire-related-person-risk-twss-base
Title: "關係人風險狀況-Questionnaire TWSS Base"
Description: "定義關係人犯罪紀錄與物質濫用風險評估表單的題目結構。"
* ^version = "0.0.1"
* item ^slicing.discriminator.type = #value
* item ^slicing.discriminator.path = "linkId"
* item ^slicing.rules = #closed
* item contains relatedPersonRisk 1..* MS
* item[relatedPersonRisk].linkId = "3"
* item[relatedPersonRisk].type = #group
* item[relatedPersonRisk].repeats = true
* item[relatedPersonRisk].item ^slicing.discriminator.type = #value
* item[relatedPersonRisk].item ^slicing.discriminator.path = "linkId"
* item[relatedPersonRisk].item ^slicing.rules = #closed
* item[relatedPersonRisk].item contains relatedPerson 1..1 MS and relationCriminalRecord 0..1 MS and substanceUse 0..1 MS
* item[relatedPersonRisk].item[relatedPerson].linkId = "3.1"
* item[relatedPersonRisk].item[relatedPerson].type = #reference
* item[relatedPersonRisk].item[relatedPerson].required = true
* item[relatedPersonRisk].item[relationCriminalRecord].linkId = "3.2"
* item[relatedPersonRisk].item[relationCriminalRecord].type = #choice
* item[relatedPersonRisk].item[relationCriminalRecord].repeats = true
* item[relatedPersonRisk].item[relationCriminalRecord].answerValueSet = Canonical(twss-relation-criminal-record-vs)
* item[relatedPersonRisk].item[substanceUse].linkId = "3.3"
* item[relatedPersonRisk].item[substanceUse].type = #group
* item[relatedPersonRisk].item[substanceUse].item ^slicing.discriminator.type = #value
* item[relatedPersonRisk].item[substanceUse].item ^slicing.discriminator.path = "linkId"
* item[relatedPersonRisk].item[substanceUse].item ^slicing.rules = #closed
* item[relatedPersonRisk].item[substanceUse].item contains usesDrugs 0..1 MS and hasAlcoholAddiction 0..1 MS and smokes 0..1 MS
* item[relatedPersonRisk].item[substanceUse].item[usesDrugs].linkId = "3.3.1"
* item[relatedPersonRisk].item[substanceUse].item[usesDrugs].type = #choice
* item[relatedPersonRisk].item[substanceUse].item[usesDrugs].answerValueSet = Canonical(twss-relation-substance-use-vs)
* item[relatedPersonRisk].item[substanceUse].item[hasAlcoholAddiction].linkId = "3.3.2"
* item[relatedPersonRisk].item[substanceUse].item[hasAlcoholAddiction].type = #choice
* item[relatedPersonRisk].item[substanceUse].item[hasAlcoholAddiction].answerValueSet = Canonical(twss-relation-substance-use-vs)
* item[relatedPersonRisk].item[substanceUse].item[smokes].linkId = "3.3.3"
* item[relatedPersonRisk].item[substanceUse].item[smokes].type = #choice
* item[relatedPersonRisk].item[substanceUse].item[smokes].answerValueSet = Canonical(twss-relation-substance-use-vs)

Profile: QuestionnaireCrisisEventLocationTWSSBase
Parent: QuestionnaireTWSSBase
Id: Questionnaire-crisis-event-location-twss-base
Title: "危機事件地點-Questionnaire TWSS Base"
Description: "定義危機事件事發地點評估表單的題目結構。"
* ^version = "0.0.1"
* item ^slicing.discriminator.type = #value
* item ^slicing.discriminator.path = "linkId"
* item ^slicing.rules = #closed
* item contains crisisEventLocation 1..1 MS
* item[crisisEventLocation].linkId = "4"
* item[crisisEventLocation].type = #string

Profile: QuestionnaireHouseholdDisabilityCountTWSSBase
Parent: QuestionnaireTWSSBase
Id: Questionnaire-household-disability-count-twss-base
Title: "家庭身障人口狀況-Questionnaire TWSS Base"
Description: "定義家庭身心障礙者人數評估表單的題目結構。"
* ^version = "0.0.1"
* item ^slicing.discriminator.type = #value
* item ^slicing.discriminator.path = "linkId"
* item ^slicing.rules = #closed
* item contains disabledPersonCount 1..1 MS
* item[disabledPersonCount].linkId = "5"
* item[disabledPersonCount].type = #integer

Profile: QuestionnaireHealthDiseaseStatusTWSSBase
Parent: QuestionnaireTWSSBase
Id: Questionnaire-health-disease-status-twss-base
Title: "健康與疾病狀況-Questionnaire TWSS Base"
Description: "定義健康與疾病狀況評估表單的題目結構。"
* ^version = "0.0.1"
* item ^slicing.discriminator.type = #value
* item ^slicing.discriminator.path = "linkId"
* item ^slicing.rules = #closed
* item contains
    hasCatastrophicIllnessCard 1..1 MS and
    catastrophicIllnessName 0..1 MS and
    healthStatusLevel 0..1 MS and
    healthStatusOption 0..1 MS and
    diseaseType 0..1 MS and
    icd 0..1 MS and
    medicationStatus 0..1 MS
* item[hasCatastrophicIllnessCard].linkId = "6.1"
* item[hasCatastrophicIllnessCard].type = #boolean
* item[catastrophicIllnessName].linkId = "6.2"
* item[catastrophicIllnessName].type = #string
* item[catastrophicIllnessName].enableWhen.question = "6.1"
* item[catastrophicIllnessName].enableWhen.operator = #=
* item[catastrophicIllnessName].enableWhen.answerBoolean = true
* item[healthStatusLevel].linkId = "6.3"
* item[healthStatusLevel].type = #choice
* item[healthStatusLevel].answerValueSet = Canonical(twss-health-status-level-vs)
* item[healthStatusOption].linkId = "6.4"
* item[healthStatusOption].type = #choice
* item[healthStatusOption].repeats = true
* item[healthStatusOption].answerValueSet = Canonical(twss-health-status-option-vs)
* item[diseaseType].linkId = "6.5"
* item[diseaseType].type = #choice
* item[diseaseType].repeats = true
* item[diseaseType].answerValueSet = Canonical(twss-disease-type-vs)
* item[icd].linkId = "6.6"
* item[icd].type = #choice
* item[icd].repeats = true
* item[medicationStatus].linkId = "6.7"
* item[medicationStatus].type = #text
