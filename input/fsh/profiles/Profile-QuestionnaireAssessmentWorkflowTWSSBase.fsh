Profile: QuestionnaireWelfareEconomicStatusTWSSBase
Parent: QuestionnaireTWSSBase
Id: Questionnaire-welfare-economic-status-twss-base
Title: "福利與經濟現況 Questionnaire TWSS Base"
Description: "定義既有補助、保險與福利身分評估表單的題目結構。"
* ^version = "0.0.1"
* item ^slicing.discriminator.type = #value
* item ^slicing.discriminator.path = "linkId"
* item ^slicing.rules = #closed
* item contains existingSubsidy 0..* MS and insuranceStatus 0..1 MS and welfareIdentityType 0..1 MS
* item[existingSubsidy].linkId = "10.1"
* item[existingSubsidy].type = #group
* item[existingSubsidy].repeats = true
* item[existingSubsidy].item ^slicing.discriminator.type = #value
* item[existingSubsidy].item ^slicing.discriminator.path = "linkId"
* item[existingSubsidy].item ^slicing.rules = #closed
* item[existingSubsidy].item contains receivedSubsidyType 1..1 MS and receivedSubsidyAmount 0..1 MS
* item[existingSubsidy].item[receivedSubsidyType].linkId = "10.1.1"
* item[existingSubsidy].item[receivedSubsidyType].type = #choice
* item[existingSubsidy].item[receivedSubsidyType].answerValueSet = Canonical(twss-received-subsidy-type-vs)
* item[existingSubsidy].item[receivedSubsidyAmount].linkId = "10.1.2"
* item[existingSubsidy].item[receivedSubsidyAmount].type = #decimal
* item[insuranceStatus].linkId = "10.2"
* item[insuranceStatus].type = #choice
* item[insuranceStatus].repeats = true
* item[welfareIdentityType].linkId = "10.3"
* item[welfareIdentityType].type = #choice
* item[welfareIdentityType].repeats = true
* item[welfareIdentityType].answerValueSet = Canonical(twss-welfare-type-vs)

Profile: QuestionnaireVisitRecordTWSSBase
Parent: QuestionnaireTWSSBase
Id: Questionnaire-visit-record-twss-base
Title: "訪視紀錄 Questionnaire TWSS Base"
Description: "定義訪視紀錄表單的題目結構。"
* ^version = "0.0.1"
* item ^slicing.discriminator.type = #value
* item ^slicing.discriminator.path = "linkId"
* item ^slicing.rules = #closed
* item contains visitTarget 1..1 MS and visitServiceMethod 1..1 MS and visitStartTime 1..1 MS and visitEndTime 0..1 MS and visitSummary 0..1 MS
* item[visitTarget].linkId = "11.1"
* item[visitTarget].type = #choice
* item[visitServiceMethod].linkId = "11.2"
* item[visitServiceMethod].type = #choice
* item[visitServiceMethod].answerValueSet = Canonical(twss-visit-service-method-vs)
* item[visitStartTime].linkId = "11.3"
* item[visitStartTime].type = #dateTime
* item[visitEndTime].linkId = "11.4"
* item[visitEndTime].type = #dateTime
* item[visitSummary].linkId = "11.5"
* item[visitSummary].type = #text
