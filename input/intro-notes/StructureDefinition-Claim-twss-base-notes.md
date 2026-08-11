{% include quickstart-note.md %}

#### 建議應該支援以下查詢參數：

此 Profile 使用 FHIR R4 Claim Resource；伺服端建議（SHOULD）支援以下 FHIR 原生查詢參數：
完整定義請參考 [FHIR R4 Claim 原生查詢參數](https://hl7.org/fhir/R4/claim.html#search)。

| 查詢參數 | 類型 | 查詢範例 |
|---|---|---|
| `_content` | string | `GET [base]/_content=[value]` |
| `_filter` | special | `GET [base]/_filter=[value]` |
| `_id` | token | `GET [base]/Claim/[id]` |
| `_lastUpdated` | date | `GET [base]/_lastUpdated=[value]` |
| `_profile` | uri | `GET [base]/_profile=[value]` |
| `_query` | token | `GET [base]/_query=[value]` |
| `_security` | token | `GET [base]/_security=[value]` |
| `_source` | uri | `GET [base]/_source=[value]` |
| `_tag` | token | `GET [base]/_tag=[value]` |
| `_text` | string | `GET [base]/_text=[value]` |
| `care-team` | reference | `GET [base]/care-team=[value]` |
| `created` | date | `GET [base]/created=[value]` |
| `detail-udi` | reference | `GET [base]/detail-udi=[value]` |
| `encounter` | reference | `GET [base]/encounter=[value]` |
| `enterer` | reference | `GET [base]/enterer=[value]` |
| `facility` | reference | `GET [base]/facility=[value]` |
| `identifier` | token | `GET [base]/identifier=[value]` |
| `insurer` | reference | `GET [base]/insurer=[value]` |
| `item-udi` | reference | `GET [base]/item-udi=[value]` |
| `patient` | reference | `GET [base]/patient=[value]` |
| `payee` | reference | `GET [base]/payee=[value]` |
| `priority` | token | `GET [base]/priority=[value]` |
| `procedure-udi` | reference | `GET [base]/procedure-udi=[value]` |
| `provider` | reference | `GET [base]/provider=[value]` |
| `status` | token | `GET [base]/status=[value]` |
| `subdetail-udi` | reference | `GET [base]/subdetail-udi=[value]` |
| `use` | token | `GET [base]/use=[value]` |
