{% include quickstart-note.md %}

#### 使用說明

服務人是否為親屬保母及服務人薪資，應記錄於 PractitionerRole 的 `isRelativeNanny` 與 `practitionSalary` Extension。兩者描述服務人於特定機構、角色及有效期間內的任職資訊，不應填寫於個案服務評估 QuestionnaireResponse。

#### 建議應該支援以下查詢參數：

此 Profile 使用 FHIR R4 PractitionerRole Resource；伺服端建議（SHOULD）支援以下 FHIR 原生查詢參數：
完整定義請參考 [FHIR R4 PractitionerRole 原生查詢參數](https://hl7.org/fhir/R4/practitionerrole.html#search)。

| 查詢參數 | 類型 | 查詢範例 |
|---|---|---|
| `_content` | string | `GET [base]/_content=[value]` |
| `_filter` | special | `GET [base]/_filter=[value]` |
| `_id` | token | `GET [base]/PractitionerRole/[id]` |
| `_lastUpdated` | date | `GET [base]/_lastUpdated=[value]` |
| `_profile` | uri | `GET [base]/_profile=[value]` |
| `_query` | token | `GET [base]/_query=[value]` |
| `_security` | token | `GET [base]/_security=[value]` |
| `_source` | uri | `GET [base]/_source=[value]` |
| `_tag` | token | `GET [base]/_tag=[value]` |
| `_text` | string | `GET [base]/_text=[value]` |
| `active` | token | `GET [base]/active=[value]` |
| `date` | date | `GET [base]/date=[value]` |
| `email` | token | `GET [base]/email=[value]` |
| `endpoint` | reference | `GET [base]/endpoint=[value]` |
| `identifier` | token | `GET [base]/identifier=[value]` |
| `location` | reference | `GET [base]/location=[value]` |
| `organization` | reference | `GET [base]/organization=[value]` |
| `phone` | token | `GET [base]/phone=[value]` |
| `practitioner` | reference | `GET [base]/practitioner=[value]` |
| `role` | token | `GET [base]/role=[value]` |
| `service` | reference | `GET [base]/service=[value]` |
| `specialty` | token | `GET [base]/specialty=[value]` |
| `telecom` | token | `GET [base]/telecom=[value]` |
