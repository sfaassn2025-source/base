{% include quickstart-note.md %}

#### 使用說明

本 Profile 用於記錄服務人的健康檢查日期。`subject` 應參照服務人 Practitioner；本資料不是個案服務評估結果，因此不填 `basedOn` 與 `encounter`。

服務人是否為親屬保母及服務人薪資應填寫於對應的 PractitionerRole Extension，不填寫於本 QuestionnaireResponse。
