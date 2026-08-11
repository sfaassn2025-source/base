{% include quickstart-note.md %}

#### 建議應該支援以下查詢參數：

此 Profile 使用 FHIR R4 Observation Resource；伺服端建議（SHOULD）支援以下 FHIR 原生查詢參數：
完整定義請參考 [FHIR R4 Observation 原生查詢參數](https://hl7.org/fhir/R4/observation.html#search)。

| 查詢參數 | 類型 | 查詢範例 |
|---|---|---|
| `_content` | string | `GET [base]/_content=[value]` |
| `_filter` | special | `GET [base]/_filter=[value]` |
| `_id` | token | `GET [base]/Observation/[id]` |
| `_lastUpdated` | date | `GET [base]/_lastUpdated=[value]` |
| `_profile` | uri | `GET [base]/_profile=[value]` |
| `_query` | token | `GET [base]/_query=[value]` |
| `_security` | token | `GET [base]/_security=[value]` |
| `_source` | uri | `GET [base]/_source=[value]` |
| `_tag` | token | `GET [base]/_tag=[value]` |
| `_text` | string | `GET [base]/_text=[value]` |
| `amino-acid-change` | string | `GET [base]/amino-acid-change=[value]` |
| `based-on` | reference | `GET [base]/based-on=[value]` |
| `category` | token | `GET [base]/category=[value]` |
| `code` | token | `GET [base]/code=[value]` |
| `code-value-concept` | composite | `GET [base]/code-value-concept=[value]` |
| `code-value-date` | composite | `GET [base]/code-value-date=[value]` |
| `code-value-quantity` | composite | `GET [base]/code-value-quantity=[value]` |
| `code-value-string` | composite | `GET [base]/code-value-string=[value]` |
| `combo-code` | token | `GET [base]/combo-code=[value]` |
| `combo-code-value-concept` | composite | `GET [base]/combo-code-value-concept=[value]` |
| `combo-code-value-quantity` | composite | `GET [base]/combo-code-value-quantity=[value]` |
| `combo-data-absent-reason` | token | `GET [base]/combo-data-absent-reason=[value]` |
| `combo-value-concept` | token | `GET [base]/combo-value-concept=[value]` |
| `combo-value-quantity` | quantity | `GET [base]/combo-value-quantity=[value]` |
| `component-code` | token | `GET [base]/component-code=[value]` |
| `component-code-value-concept` | composite | `GET [base]/component-code-value-concept=[value]` |
| `component-code-value-quantity` | composite | `GET [base]/component-code-value-quantity=[value]` |
| `component-data-absent-reason` | token | `GET [base]/component-data-absent-reason=[value]` |
| `component-value-concept` | token | `GET [base]/component-value-concept=[value]` |
| `component-value-quantity` | quantity | `GET [base]/component-value-quantity=[value]` |
| `data-absent-reason` | token | `GET [base]/data-absent-reason=[value]` |
| `date` | date | `GET [base]/date=[value]` |
| `derived-from` | reference | `GET [base]/derived-from=[value]` |
| `device` | reference | `GET [base]/device=[value]` |
| `dna-variant` | string | `GET [base]/dna-variant=[value]` |
| `encounter` | reference | `GET [base]/encounter=[value]` |
| `focus` | reference | `GET [base]/focus=[value]` |
| `gene-amino-acid-change` | string | `GET [base]/gene-amino-acid-change=[value]` |
| `gene-dnavariant` | string | `GET [base]/gene-dnavariant=[value]` |
| `gene-identifier` | token | `GET [base]/gene-identifier=[value]` |
| `has-member` | reference | `GET [base]/has-member=[value]` |
| `identifier` | token | `GET [base]/identifier=[value]` |
| `method` | token | `GET [base]/method=[value]` |
| `part-of` | reference | `GET [base]/part-of=[value]` |
| `patient` | reference | `GET [base]/patient=[value]` |
| `performer` | reference | `GET [base]/performer=[value]` |
| `specimen` | reference | `GET [base]/specimen=[value]` |
| `status` | token | `GET [base]/status=[value]` |
| `subject` | reference | `GET [base]/subject=[value]` |
| `value-concept` | token | `GET [base]/value-concept=[value]` |
| `value-date` | date | `GET [base]/value-date=[value]` |
| `value-quantity` | quantity | `GET [base]/value-quantity=[value]` |
| `value-string` | string | `GET [base]/value-string=[value]` |
