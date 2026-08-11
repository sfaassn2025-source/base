{% include quickstart-note.md %}

#### 建議應該支援以下查詢參數：

此 Profile 使用 FHIR R4 Location Resource；伺服端建議（SHOULD）支援以下 FHIR 原生查詢參數：
完整定義請參考 [FHIR R4 Location 原生查詢參數](https://hl7.org/fhir/R4/location.html#search)。

| 查詢參數 | 類型 | 查詢範例 |
|---|---|---|
| `_content` | string | `GET [base]/_content=[value]` |
| `_filter` | special | `GET [base]/_filter=[value]` |
| `_id` | token | `GET [base]/Location/[id]` |
| `_lastUpdated` | date | `GET [base]/_lastUpdated=[value]` |
| `_profile` | uri | `GET [base]/_profile=[value]` |
| `_query` | token | `GET [base]/_query=[value]` |
| `_security` | token | `GET [base]/_security=[value]` |
| `_source` | uri | `GET [base]/_source=[value]` |
| `_tag` | token | `GET [base]/_tag=[value]` |
| `_text` | string | `GET [base]/_text=[value]` |
| `address` | string | `GET [base]/address=[value]` |
| `address-city` | string | `GET [base]/address-city=[value]` |
| `address-country` | string | `GET [base]/address-country=[value]` |
| `address-postalcode` | string | `GET [base]/address-postalcode=[value]` |
| `address-state` | string | `GET [base]/address-state=[value]` |
| `address-use` | token | `GET [base]/address-use=[value]` |
| `endpoint` | reference | `GET [base]/endpoint=[value]` |
| `identifier` | token | `GET [base]/identifier=[value]` |
| `name` | string | `GET [base]/name=[value]` |
| `near` | special | `GET [base]/near=[value]` |
| `operational-status` | token | `GET [base]/operational-status=[value]` |
| `organization` | reference | `GET [base]/organization=[value]` |
| `partof` | reference | `GET [base]/partof=[value]` |
| `status` | token | `GET [base]/status=[value]` |
| `type` | token | `GET [base]/type=[value]` |
