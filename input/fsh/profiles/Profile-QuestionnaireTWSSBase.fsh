Profile: QuestionnaireTWSSBase
Parent: Questionnaire
Id: Questionnaire-twss-base
Title: "社福評估表單-Questionnaire TWSS Base"
Description: "因 TW Core IG 0.3.2 尚無 Questionnaire Profile，故繼承原生 Questionnaire，並於設定社福表單欄位後補回適用的 TW Core 0.3.2 共通交換規則。"
* ^version = "0.0.1"

* url 1..1 MS
* title 1..1 MS
* status 1..1 MS
* subjectType 1..1 MS
* subjectType = #Patient
* item.linkId 1..1 MS
