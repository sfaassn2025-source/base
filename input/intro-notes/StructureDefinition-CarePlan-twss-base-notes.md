{% include quickstart-note.md %}

#### 建議應該支援以下查詢參數：

此 Profile 使用 FHIR R4 CarePlan Resource；伺服端建議（SHOULD）支援以下 FHIR 原生查詢參數：
完整定義請參考 [FHIR R4 CarePlan 原生查詢參數](https://hl7.org/fhir/R4/careplan.html#search)。

| 查詢參數 | 類型 | 查詢範例 |
|---|---|---|
| `_content` | string | `GET [base]/_content=[value]` |
| `_filter` | special | `GET [base]/_filter=[value]` |
| `_id` | token | `GET [base]/CarePlan/[id]` |
| `_lastUpdated` | date | `GET [base]/_lastUpdated=[value]` |
| `_profile` | uri | `GET [base]/_profile=[value]` |
| `_query` | token | `GET [base]/_query=[value]` |
| `_security` | token | `GET [base]/_security=[value]` |
| `_source` | uri | `GET [base]/_source=[value]` |
| `_tag` | token | `GET [base]/_tag=[value]` |
| `_text` | string | `GET [base]/_text=[value]` |
| `activity-code` | token | `GET [base]/activity-code=[value]` |
| `activity-date` | date | `GET [base]/activity-date=[value]` |
| `activity-reference` | reference | `GET [base]/activity-reference=[value]` |
| `based-on` | reference | `GET [base]/based-on=[value]` |
| `care-team` | reference | `GET [base]/care-team=[value]` |
| `category` | token | `GET [base]/category=[value]` |
| `condition` | reference | `GET [base]/condition=[value]` |
| `date` | date | `GET [base]/date=[value]` |
| `encounter` | reference | `GET [base]/encounter=[value]` |
| `goal` | reference | `GET [base]/goal=[value]` |
| `identifier` | token | `GET [base]/identifier=[value]` |
| `instantiates-canonical` | reference | `GET [base]/instantiates-canonical=[value]` |
| `instantiates-uri` | uri | `GET [base]/instantiates-uri=[value]` |
| `intent` | token | `GET [base]/intent=[value]` |
| `part-of` | reference | `GET [base]/part-of=[value]` |
| `patient` | reference | `GET [base]/patient=[value]` |
| `performer` | reference | `GET [base]/performer=[value]` |
| `replaces` | reference | `GET [base]/replaces=[value]` |
| `status` | token | `GET [base]/status=[value]` |
| `subject` | reference | `GET [base]/subject=[value]` |
