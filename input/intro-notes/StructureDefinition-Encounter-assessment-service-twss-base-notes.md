{% include quickstart-note.md %}

#### 建議應該支援以下查詢參數：

此 Profile 使用 FHIR R4 Encounter Resource；伺服端建議（SHOULD）支援以下 FHIR 原生查詢參數：
完整定義請參考 [FHIR R4 Encounter 原生查詢參數](https://hl7.org/fhir/R4/encounter.html#search)。

| 查詢參數 | 類型 | 查詢範例 |
|---|---|---|
| `_content` | string | `GET [base]/_content=[value]` |
| `_filter` | special | `GET [base]/_filter=[value]` |
| `_id` | token | `GET [base]/Encounter/[id]` |
| `_lastUpdated` | date | `GET [base]/_lastUpdated=[value]` |
| `_profile` | uri | `GET [base]/_profile=[value]` |
| `_query` | token | `GET [base]/_query=[value]` |
| `_security` | token | `GET [base]/_security=[value]` |
| `_source` | uri | `GET [base]/_source=[value]` |
| `_tag` | token | `GET [base]/_tag=[value]` |
| `_text` | string | `GET [base]/_text=[value]` |
| `account` | reference | `GET [base]/account=[value]` |
| `appointment` | reference | `GET [base]/appointment=[value]` |
| `based-on` | reference | `GET [base]/based-on=[value]` |
| `class` | token | `GET [base]/class=[value]` |
| `date` | date | `GET [base]/date=[value]` |
| `diagnosis` | reference | `GET [base]/diagnosis=[value]` |
| `episode-of-care` | reference | `GET [base]/episode-of-care=[value]` |
| `identifier` | token | `GET [base]/identifier=[value]` |
| `length` | quantity | `GET [base]/length=[value]` |
| `location` | reference | `GET [base]/location=[value]` |
| `location-period` | date | `GET [base]/location-period=[value]` |
| `participant` | reference | `GET [base]/participant=[value]` |
| `participant-type` | token | `GET [base]/participant-type=[value]` |
| `part-of` | reference | `GET [base]/part-of=[value]` |
| `patient` | reference | `GET [base]/patient=[value]` |
| `practitioner` | reference | `GET [base]/practitioner=[value]` |
| `reason-code` | token | `GET [base]/reason-code=[value]` |
| `reason-reference` | reference | `GET [base]/reason-reference=[value]` |
| `service-provider` | reference | `GET [base]/service-provider=[value]` |
| `special-arrangement` | token | `GET [base]/special-arrangement=[value]` |
| `status` | token | `GET [base]/status=[value]` |
| `subject` | reference | `GET [base]/subject=[value]` |
| `type` | token | `GET [base]/type=[value]` |
