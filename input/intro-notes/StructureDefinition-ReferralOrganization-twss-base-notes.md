{% include quickstart-note.md %}

#### 建議應該支援以下查詢參數：

此 Profile 使用 FHIR R4 Organization Resource；伺服端建議（SHOULD）支援以下 FHIR 原生查詢參數：
完整定義請參考 [FHIR R4 Organization 原生查詢參數](https://hl7.org/fhir/R4/organization.html#search)。

| 查詢參數 | 類型 | 查詢範例 |
|---|---|---|
| `identifier` | token | `GET [base]/Organization?identifier=[system]|[value]` |
| `name` | string | `GET [base]/Organization?name=[value]` |
| `address` | string | `GET [base]/Organization?address=[value]` |
| `address-city` | string | `GET [base]/Organization?address-city=[value]` |
| `active` | token | `GET [base]/Organization?active=[value]` |
