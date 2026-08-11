{% include quickstart-note.md %}

#### 建議應該支援以下查詢參數：

此 Profile 使用 FHIR R4 ServiceRequest Resource；伺服端建議（SHOULD）支援以下 FHIR 原生查詢參數：
完整定義請參考 [FHIR R4 ServiceRequest 原生查詢參數](https://hl7.org/fhir/R4/servicerequest.html#search)。

| 查詢參數 | 類型 | 查詢範例 |
|---|---|---|
| `_content` | string | `GET [base]/_content=[value]` |
| `_filter` | special | `GET [base]/_filter=[value]` |
| `_id` | token | `GET [base]/ServiceRequest/[id]` |
| `_lastUpdated` | date | `GET [base]/_lastUpdated=[value]` |
| `_profile` | uri | `GET [base]/_profile=[value]` |
| `_query` | token | `GET [base]/_query=[value]` |
| `_security` | token | `GET [base]/_security=[value]` |
| `_source` | uri | `GET [base]/_source=[value]` |
| `_tag` | token | `GET [base]/_tag=[value]` |
| `_text` | string | `GET [base]/_text=[value]` |
| `authored` | date | `GET [base]/authored=[value]` |
| `based-on` | reference | `GET [base]/based-on=[value]` |
| `body-site` | token | `GET [base]/body-site=[value]` |
| `category` | token | `GET [base]/category=[value]` |
| `code` | token | `GET [base]/code=[value]` |
| `encounter` | reference | `GET [base]/encounter=[value]` |
| `identifier` | token | `GET [base]/identifier=[value]` |
| `instantiates-canonical` | reference | `GET [base]/instantiates-canonical=[value]` |
| `instantiates-uri` | uri | `GET [base]/instantiates-uri=[value]` |
| `intent` | token | `GET [base]/intent=[value]` |
| `occurrence` | date | `GET [base]/occurrence=[value]` |
| `patient` | reference | `GET [base]/patient=[value]` |
| `performer` | reference | `GET [base]/performer=[value]` |
| `performer-type` | token | `GET [base]/performer-type=[value]` |
| `priority` | token | `GET [base]/priority=[value]` |
| `replaces` | reference | `GET [base]/replaces=[value]` |
| `requester` | reference | `GET [base]/requester=[value]` |
| `requisition` | token | `GET [base]/requisition=[value]` |
| `specimen` | reference | `GET [base]/specimen=[value]` |
| `status` | token | `GET [base]/status=[value]` |
| `subject` | reference | `GET [base]/subject=[value]` |
