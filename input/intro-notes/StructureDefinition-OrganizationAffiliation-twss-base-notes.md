{% include quickstart-note.md %}

#### 建議應該支援以下查詢參數：

此 Profile 使用 FHIR R4 OrganizationAffiliation Resource；伺服端建議（SHOULD）支援以下 FHIR 原生查詢參數：
完整定義請參考 [FHIR R4 OrganizationAffiliation 原生查詢參數](https://hl7.org/fhir/R4/organizationaffiliation.html#search)。

| 查詢參數 | 類型 | 說明 |
|---|---|---|
| `active` | token | 依機構關係是否有效查詢。 |
| `identifier` | token | 依機構關係識別碼查詢。 |
| `participating-organization` | reference | 依參與關係的機構查詢。 |
| `primary-organization` | reference | 依主要機構、總會或聯盟查詢。 |
| `role` | token | 依機構關係角色查詢。 |
