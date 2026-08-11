{% include quickstart-note.md %}

#### 建議應該支援以下查詢參數：

此 Profile 使用 FHIR R4 Provenance Resource；伺服端建議（SHOULD）支援以下 FHIR 原生查詢參數：
完整定義請參考 [FHIR R4 Provenance 原生查詢參數](https://hl7.org/fhir/R4/provenance.html#search)。

| 查詢參數 | 類型 | 查詢範例 |
|---|---|---|
| `_content` | string | `GET [base]/_content=[value]` |
| `_filter` | special | `GET [base]/_filter=[value]` |
| `_id` | token | `GET [base]/Provenance/[id]` |
| `_lastUpdated` | date | `GET [base]/_lastUpdated=[value]` |
| `_profile` | uri | `GET [base]/_profile=[value]` |
| `_query` | token | `GET [base]/_query=[value]` |
| `_security` | token | `GET [base]/_security=[value]` |
| `_source` | uri | `GET [base]/_source=[value]` |
| `_tag` | token | `GET [base]/_tag=[value]` |
| `_text` | string | `GET [base]/_text=[value]` |
| `agent` | reference | `GET [base]/agent=[value]` |
| `agent-role` | token | `GET [base]/agent-role=[value]` |
| `agent-type` | token | `GET [base]/agent-type=[value]` |
| `entity` | reference | `GET [base]/entity=[value]` |
| `location` | reference | `GET [base]/location=[value]` |
| `patient` | reference | `GET [base]/patient=[value]` |
| `recorded` | date | `GET [base]/recorded=[value]` |
| `signature-type` | token | `GET [base]/signature-type=[value]` |
| `target` | reference | `GET [base]/target=[value]` |
| `when` | date | `GET [base]/when=[value]` |
