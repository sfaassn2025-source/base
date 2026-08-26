{% include quickstart-note.md %}

#### 使用範圍

本 Profile 為社福 QuestionnaireResponse 的共用 Profile。`subject` 可為個案、關係人、服務人、服務人任職角色或機構；`basedOn` 與 `encounter` 為選填，應依填答發生的流程階段參照相應的 ServiceRequest、CarePlan 或 Encounter。

個案服務評估應使用「個案服務評估回覆」子 Profile；其他表單使用本共用 Profile，並依各 Questionnaire 的 `subjectType` 指定填答對象。

#### 建議應該支援以下查詢參數：

此 Profile 使用 FHIR R4 QuestionnaireResponse Resource；伺服端建議（SHOULD）支援以下 FHIR 原生查詢參數：
完整定義請參考 [FHIR R4 QuestionnaireResponse 原生查詢參數](https://hl7.org/fhir/R4/questionnaireresponse.html#search)。

| 查詢參數 | 類型 | 查詢範例 |
|---|---|---|
| `_content` | string | `GET [base]/_content=[value]` |
| `_filter` | special | `GET [base]/_filter=[value]` |
| `_id` | token | `GET [base]/QuestionnaireResponse/[id]` |
| `_lastUpdated` | date | `GET [base]/_lastUpdated=[value]` |
| `_profile` | uri | `GET [base]/_profile=[value]` |
| `_query` | token | `GET [base]/_query=[value]` |
| `_security` | token | `GET [base]/_security=[value]` |
| `_source` | uri | `GET [base]/_source=[value]` |
| `_tag` | token | `GET [base]/_tag=[value]` |
| `_text` | string | `GET [base]/_text=[value]` |
| `author` | reference | `GET [base]/author=[value]` |
| `authored` | date | `GET [base]/authored=[value]` |
| `based-on` | reference | `GET [base]/based-on=[value]` |
| `encounter` | reference | `GET [base]/encounter=[value]` |
| `identifier` | token | `GET [base]/identifier=[value]` |
| `item-subject` | reference | `GET [base]/item-subject=[value]` |
| `part-of` | reference | `GET [base]/part-of=[value]` |
| `patient` | reference | `GET [base]/patient=[value]` |
| `questionnaire` | reference | `GET [base]/questionnaire=[value]` |
| `source` | reference | `GET [base]/source=[value]` |
| `status` | token | `GET [base]/status=[value]` |
| `subject` | reference | `GET [base]/subject=[value]` |
