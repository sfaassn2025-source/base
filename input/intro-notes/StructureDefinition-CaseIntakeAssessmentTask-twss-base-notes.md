{% include quickstart-note.md %}

#### 建議應該支援以下查詢參數：

此 Profile 使用 FHIR R4 Task Resource；伺服端建議（SHOULD）支援以下 FHIR 原生查詢參數：
完整定義請參考 [FHIR R4 Task 原生查詢參數](https://hl7.org/fhir/R4/task.html#search)。

| 查詢參數 | 類型 | 查詢範例 |
|---|---|---|
| `_content` | string | `GET [base]/_content=[value]` |
| `_filter` | special | `GET [base]/_filter=[value]` |
| `_id` | token | `GET [base]/Task/[id]` |
| `_lastUpdated` | date | `GET [base]/_lastUpdated=[value]` |
| `_profile` | uri | `GET [base]/_profile=[value]` |
| `_query` | token | `GET [base]/_query=[value]` |
| `_security` | token | `GET [base]/_security=[value]` |
| `_source` | uri | `GET [base]/_source=[value]` |
| `_tag` | token | `GET [base]/_tag=[value]` |
| `_text` | string | `GET [base]/_text=[value]` |
| `authored-on` | date | `GET [base]/authored-on=[value]` |
| `based-on` | reference | `GET [base]/based-on=[value]` |
| `business-status` | token | `GET [base]/business-status=[value]` |
| `code` | token | `GET [base]/code=[value]` |
| `encounter` | reference | `GET [base]/encounter=[value]` |
| `focus` | reference | `GET [base]/focus=[value]` |
| `group-identifier` | token | `GET [base]/group-identifier=[value]` |
| `identifier` | token | `GET [base]/identifier=[value]` |
| `intent` | token | `GET [base]/intent=[value]` |
| `modified` | date | `GET [base]/modified=[value]` |
| `owner` | reference | `GET [base]/owner=[value]` |
| `part-of` | reference | `GET [base]/part-of=[value]` |
| `patient` | reference | `GET [base]/patient=[value]` |
| `performer` | token | `GET [base]/performer=[value]` |
| `period` | date | `GET [base]/period=[value]` |
| `priority` | token | `GET [base]/priority=[value]` |
| `requester` | reference | `GET [base]/requester=[value]` |
| `status` | token | `GET [base]/status=[value]` |
| `subject` | reference | `GET [base]/subject=[value]` |
