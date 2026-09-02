Profile: QuestionnaireWelfareEconomicStatusTWSSBase
Parent: QuestionnaireTWSSBase
Id: Questionnaire-welfare-economic-status-twss-base
Title: "福利與經濟現況-Questionnaire TWSS Base"
Description: "定義既有補助、保險與福利身分評估表單的題目結構。"
* ^version = "0.0.1"
* item ^slicing.discriminator.type = #value
* item ^slicing.discriminator.path = "linkId"
* item ^slicing.rules = #closed
* item contains subsidyPayment 0..* MS and insuranceStatus 0..1 MS and welfareIdentityType 0..1 MS and monthlyRent 0..1 MS
* item[subsidyPayment].linkId = "10.1"
* item[subsidyPayment].text = "補助款項"
* item[subsidyPayment].type = #group
* item[subsidyPayment].repeats = true
* item[subsidyPayment].item ^slicing.discriminator.type = #value
* item[subsidyPayment].item ^slicing.discriminator.path = "linkId"
* item[subsidyPayment].item ^slicing.rules = #closed
* item[subsidyPayment].item contains receivedSubsidyType 0..1 MS and receivedSubsidyAmount 0..1 MS
* item[subsidyPayment].item[receivedSubsidyType].linkId = "10.1.1"
* item[subsidyPayment].item[receivedSubsidyType].text = "已取得補助類型"
* item[subsidyPayment].item[receivedSubsidyType].type = #choice
* item[subsidyPayment].item[receivedSubsidyType].answerValueSet = Canonical(twss-received-subsidy-type-vs)
* item[subsidyPayment].item[receivedSubsidyAmount].linkId = "10.1.2"
* item[subsidyPayment].item[receivedSubsidyAmount].text = "已取得補助金額"
* item[subsidyPayment].item[receivedSubsidyAmount].type = #decimal
* item[insuranceStatus].linkId = "10.2"
* item[insuranceStatus].text = "保險狀況"
* item[insuranceStatus].type = #choice
* item[insuranceStatus].repeats = true
* item[insuranceStatus].answerValueSet = Canonical(twss-insurance-status-vs)
* item[welfareIdentityType].linkId = "10.3"
* item[welfareIdentityType].text = "福利身分別"
* item[welfareIdentityType].type = #choice
* item[welfareIdentityType].repeats = true
* item[welfareIdentityType].answerValueSet = Canonical(twss-welfare-identity-type-vs)
* item[monthlyRent].linkId = "10.4"
* item[monthlyRent].text = "每月租金"
* item[monthlyRent].type = #decimal

Profile: QuestionnaireVisitRecordTWSSBase
Parent: QuestionnaireTWSSBase
Id: Questionnaire-visit-record-twss-base
Title: "訪視紀錄-Questionnaire TWSS Base"
Description: "定義訪視紀錄表單的題目結構。"
* ^version = "0.0.1"
* item ^slicing.discriminator.type = #value
* item ^slicing.discriminator.path = "linkId"
* item ^slicing.rules = #closed
* item contains visitTarget 1..1 MS and visitServiceMethod 1..1 MS and visitStartTime 1..1 MS and visitEndTime 0..1 MS and visitSummary 0..1 MS
* item[visitTarget].linkId = "11.1"
* item[visitTarget].text = "訪視對象"
* item[visitTarget].type = #choice
* item[visitTarget].answerValueSet = Canonical(twss-visit-target-vs)
* item[visitServiceMethod].linkId = "11.2"
* item[visitServiceMethod].text = "訪視服務方式"
* item[visitServiceMethod].type = #choice
* item[visitServiceMethod].answerValueSet = Canonical(twss-visit-service-method-vs)
* item[visitStartTime].linkId = "11.3"
* item[visitStartTime].text = "訪視開始時間"
* item[visitStartTime].type = #dateTime
* item[visitEndTime].linkId = "11.4"
* item[visitEndTime].text = "訪視結束時間"
* item[visitEndTime].type = #dateTime
* item[visitSummary].linkId = "11.5"
* item[visitSummary].text = "訪視摘要"
* item[visitSummary].type = #text
