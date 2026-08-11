{% include quickstart-note.md %}

#### 建議應該支援以下查詢參數：

此 Profile 使用 FHIR R4 DocumentReference Resource；伺服端建議（SHOULD）支援以下 FHIR 原生查詢參數：
完整定義請參考 [FHIR R4 DocumentReference 原生查詢參數](https://hl7.org/fhir/R4/documentreference.html#search)。

| 查詢參數 | 類型 | 查詢範例 |
|---|---|---|
| `_content` | string | `GET [base]/_content=[value]` |
| `_filter` | special | `GET [base]/_filter=[value]` |
| `_id` | token | `GET [base]/DocumentReference/[id]` |
| `_lastUpdated` | date | `GET [base]/_lastUpdated=[value]` |
| `_profile` | uri | `GET [base]/_profile=[value]` |
| `_query` | token | `GET [base]/_query=[value]` |
| `_security` | token | `GET [base]/_security=[value]` |
| `_source` | uri | `GET [base]/_source=[value]` |
| `_tag` | token | `GET [base]/_tag=[value]` |
| `_text` | string | `GET [base]/_text=[value]` |
| `authenticator` | reference | `GET [base]/authenticator=[value]` |
| `author` | reference | `GET [base]/author=[value]` |
| `category` | token | `GET [base]/category=[value]` |
| `contenttype` | token | `GET [base]/contenttype=[value]` |
| `custodian` | reference | `GET [base]/custodian=[value]` |
| `date` | date | `GET [base]/date=[value]` |
| `description` | string | `GET [base]/description=[value]` |
| `encounter` | reference | `GET [base]/encounter=[value]` |
| `event` | token | `GET [base]/event=[value]` |
| `facility` | token | `GET [base]/facility=[value]` |
| `format` | token | `GET [base]/format=[value]` |
| `identifier` | token | `GET [base]/identifier=[value]` |
| `language` | token | `GET [base]/language=[value]` |
| `location` | uri | `GET [base]/location=[value]` |
| `patient` | reference | `GET [base]/patient=[value]` |
| `period` | date | `GET [base]/period=[value]` |
| `related` | reference | `GET [base]/related=[value]` |
| `relatesto` | reference | `GET [base]/relatesto=[value]` |
| `relation` | token | `GET [base]/relation=[value]` |
| `relationship` | composite | `GET [base]/relationship=[value]` |
| `security-label` | token | `GET [base]/security-label=[value]` |
| `setting` | token | `GET [base]/setting=[value]` |
| `status` | token | `GET [base]/status=[value]` |
| `subject` | reference | `GET [base]/subject=[value]` |
| `type` | token | `GET [base]/type=[value]` |
