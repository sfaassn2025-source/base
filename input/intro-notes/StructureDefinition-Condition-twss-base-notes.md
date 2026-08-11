{% include quickstart-note.md %}

#### 建議應該支援以下查詢參數：

此 Profile 使用 FHIR R4 Condition Resource；伺服端建議（SHOULD）支援以下 FHIR 原生查詢參數：
完整定義請參考 [FHIR R4 Condition 原生查詢參數](https://hl7.org/fhir/R4/condition.html#search)。

| 查詢參數 | 類型 | 查詢範例 |
|---|---|---|
| `_content` | string | `GET [base]/_content=[value]` |
| `_filter` | special | `GET [base]/_filter=[value]` |
| `_id` | token | `GET [base]/Condition/[id]` |
| `_lastUpdated` | date | `GET [base]/_lastUpdated=[value]` |
| `_profile` | uri | `GET [base]/_profile=[value]` |
| `_query` | token | `GET [base]/_query=[value]` |
| `_security` | token | `GET [base]/_security=[value]` |
| `_source` | uri | `GET [base]/_source=[value]` |
| `_tag` | token | `GET [base]/_tag=[value]` |
| `_text` | string | `GET [base]/_text=[value]` |
| `abatement-age` | quantity | `GET [base]/abatement-age=[value]` |
| `abatement-date` | date | `GET [base]/abatement-date=[value]` |
| `abatement-string` | string | `GET [base]/abatement-string=[value]` |
| `asserter` | reference | `GET [base]/asserter=[value]` |
| `body-site` | token | `GET [base]/body-site=[value]` |
| `category` | token | `GET [base]/category=[value]` |
| `clinical-status` | token | `GET [base]/clinical-status=[value]` |
| `code` | token | `GET [base]/code=[value]` |
| `encounter` | reference | `GET [base]/encounter=[value]` |
| `evidence` | token | `GET [base]/evidence=[value]` |
| `evidence-detail` | reference | `GET [base]/evidence-detail=[value]` |
| `identifier` | token | `GET [base]/identifier=[value]` |
| `onset-age` | quantity | `GET [base]/onset-age=[value]` |
| `onset-date` | date | `GET [base]/onset-date=[value]` |
| `onset-info` | string | `GET [base]/onset-info=[value]` |
| `patient` | reference | `GET [base]/patient=[value]` |
| `recorded-date` | date | `GET [base]/recorded-date=[value]` |
| `severity` | token | `GET [base]/severity=[value]` |
| `stage` | token | `GET [base]/stage=[value]` |
| `subject` | reference | `GET [base]/subject=[value]` |
| `verification-status` | token | `GET [base]/verification-status=[value]` |
