{% include quickstart-note.md %}

#### 建議應該支援以下查詢參數：

此 Profile 使用 FHIR R4 EpisodeOfCare Resource；伺服端建議（SHOULD）支援以下 FHIR 原生查詢參數：
完整定義請參考 [FHIR R4 EpisodeOfCare 原生查詢參數](https://hl7.org/fhir/R4/episodeofcare.html#search)。

| 查詢參數 | 類型 | 查詢範例 |
|---|---|---|
| `_content` | string | `GET [base]/_content=[value]` |
| `_filter` | special | `GET [base]/_filter=[value]` |
| `_id` | token | `GET [base]/EpisodeOfCare/[id]` |
| `_lastUpdated` | date | `GET [base]/_lastUpdated=[value]` |
| `_profile` | uri | `GET [base]/_profile=[value]` |
| `_query` | token | `GET [base]/_query=[value]` |
| `_security` | token | `GET [base]/_security=[value]` |
| `_source` | uri | `GET [base]/_source=[value]` |
| `_tag` | token | `GET [base]/_tag=[value]` |
| `_text` | string | `GET [base]/_text=[value]` |
| `care-manager` | reference | `GET [base]/care-manager=[value]` |
| `condition` | reference | `GET [base]/condition=[value]` |
| `date` | date | `GET [base]/date=[value]` |
| `identifier` | token | `GET [base]/identifier=[value]` |
| `incoming-referral` | reference | `GET [base]/incoming-referral=[value]` |
| `organization` | reference | `GET [base]/organization=[value]` |
| `patient` | reference | `GET [base]/patient=[value]` |
| `status` | token | `GET [base]/status=[value]` |
| `type` | token | `GET [base]/type=[value]` |
