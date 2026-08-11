{% include quickstart-note.md %}

#### 建議應該支援以下查詢參數：

此 Profile 使用 FHIR R4 Questionnaire Resource；伺服端建議（SHOULD）支援以下 FHIR 原生查詢參數：
完整定義請參考 [FHIR R4 Questionnaire 原生查詢參數](https://hl7.org/fhir/R4/questionnaire.html#search)。

| 查詢參數 | 類型 | 查詢範例 |
|---|---|---|
| `_content` | string | `GET [base]/_content=[value]` |
| `_filter` | special | `GET [base]/_filter=[value]` |
| `_id` | token | `GET [base]/Questionnaire/[id]` |
| `_lastUpdated` | date | `GET [base]/_lastUpdated=[value]` |
| `_profile` | uri | `GET [base]/_profile=[value]` |
| `_query` | token | `GET [base]/_query=[value]` |
| `_security` | token | `GET [base]/_security=[value]` |
| `_source` | uri | `GET [base]/_source=[value]` |
| `_tag` | token | `GET [base]/_tag=[value]` |
| `_text` | string | `GET [base]/_text=[value]` |
| `code` | token | `GET [base]/code=[value]` |
| `context` | token | `GET [base]/context=[value]` |
| `context-quantity` | quantity | `GET [base]/context-quantity=[value]` |
| `context-type` | token | `GET [base]/context-type=[value]` |
| `context-type-quantity` | composite | `GET [base]/context-type-quantity=[value]` |
| `context-type-value` | composite | `GET [base]/context-type-value=[value]` |
| `date` | date | `GET [base]/date=[value]` |
| `definition` | uri | `GET [base]/definition=[value]` |
| `description` | string | `GET [base]/description=[value]` |
| `effective` | date | `GET [base]/effective=[value]` |
| `identifier` | token | `GET [base]/identifier=[value]` |
| `jurisdiction` | token | `GET [base]/jurisdiction=[value]` |
| `name` | string | `GET [base]/name=[value]` |
| `publisher` | string | `GET [base]/publisher=[value]` |
| `status` | token | `GET [base]/status=[value]` |
| `subject-type` | token | `GET [base]/subject-type=[value]` |
| `title` | string | `GET [base]/title=[value]` |
| `url` | uri | `GET [base]/url=[value]` |
| `version` | token | `GET [base]/version=[value]` |
