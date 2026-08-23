{% include quickstart-note.md %}

#### 服務人健康檢查資訊-Questionnaire TWSS Base

本 Profile 用於定義服務人健康檢查日期表單。表單的 `subjectType` 為 Practitioner，回覆資料應使用「服務人健康檢查回覆-QuestionnaireResponse TWSS Base」。

服務人是否為親屬保母及服務人薪資屬於任職角色資料，應填寫於 PractitionerRole 的對應 Extension。

實作者可能可以（MAY）支援 FHIR R4 Questionnaire 所定義之查詢參數；更多內容請參考 [FHIR R4 Questionnaire 查詢參數](https://hl7.org/fhir/R4/questionnaire.html#search)。
