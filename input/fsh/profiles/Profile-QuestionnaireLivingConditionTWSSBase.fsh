Profile: QuestionnaireLivingConditionTWSSBase
Parent: QuestionnaireTWSSBase
Id: Questionnaire-living-condition-twss-base
Title: "居住狀況評估 Questionnaire TWSS Base"
Description: "定義居住狀況評估表單的題目結構。"
* ^version = "0.0.1"

* item ^slicing.discriminator.type = #value
* item ^slicing.discriminator.path = "linkId"
* item ^slicing.rules = #closed
* item contains livingCondition 1..1 MS
* item[livingCondition].linkId = "1"
* item[livingCondition].type = #group

* item[livingCondition].item ^slicing.discriminator.type = #value
* item[livingCondition].item ^slicing.discriminator.path = "linkId"
* item[livingCondition].item ^slicing.rules = #closed
* item[livingCondition].item contains
    livingType 1..1 MS and
    housingType 1..1 MS and
    livingEnvironment 1..1 MS and
    hasPrivateBedroom 1..1 MS and
    currentLivingStatus 1..1 MS and
    livingStatus 1..1 MS

* item[livingCondition].item[livingType].linkId = "1.1"
* item[livingCondition].item[livingType].type = #choice
* item[livingCondition].item[livingType].answerValueSet = "https://sfaa.gov.tw/base/ValueSet/twss-living-type-vs"
* item[livingCondition].item[housingType].linkId = "1.2"
* item[livingCondition].item[housingType].type = #choice
* item[livingCondition].item[housingType].answerValueSet = "https://sfaa.gov.tw/base/ValueSet/twss-housing-type-vs"
* item[livingCondition].item[livingEnvironment].linkId = "1.3"
* item[livingCondition].item[livingEnvironment].type = #choice
* item[livingCondition].item[livingEnvironment].answerValueSet = "https://sfaa.gov.tw/base/ValueSet/twss-living-environment-vs"
* item[livingCondition].item[hasPrivateBedroom].linkId = "1.4"
* item[livingCondition].item[hasPrivateBedroom].type = #choice
* item[livingCondition].item[hasPrivateBedroom].answerValueSet = "https://sfaa.gov.tw/base/ValueSet/twss-private-bedroom-vs"
* item[livingCondition].item[currentLivingStatus].linkId = "1.5"
* item[livingCondition].item[currentLivingStatus].type = #choice
* item[livingCondition].item[currentLivingStatus].answerValueSet = "https://sfaa.gov.tw/base/ValueSet/twss-current-living-status-vs"
* item[livingCondition].item[livingStatus].linkId = "1.6"
* item[livingCondition].item[livingStatus].type = #choice
* item[livingCondition].item[livingStatus].answerValueSet = "https://sfaa.gov.tw/base/ValueSet/twss-cohabitation-status-vs"
