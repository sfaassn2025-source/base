{% include quickstart-note.md %}

#### 可能可以（MAY）支援以下查詢參數：

此 Profile 使用 FHIR R4 Consent Resource；伺服端可能可以（MAY）支援 FHIR R4 Consent 所定義之查詢參數。完整定義請參考 [FHIR R4 Consent 原生查詢參數](https://hl7.org/fhir/R4/consent.html#search)。

| 查詢參數 | 類型 | 說明 |
|---|---|---|
| `category` | token | 依同意分類查詢。 |
| `consentor` | reference | 依表示同意或簽署的人員查詢。 |
| `date` | date | 依同意建立或登錄日期查詢。 |
| `identifier` | token | 依同意紀錄識別碼查詢。 |
| `organization` | reference | 依同意紀錄保管機構查詢。 |
| `patient` | reference | 依適用個案查詢。 |
| `scope` | token | 依同意適用範圍查詢。 |
| `source-reference` | reference | 依同意書文件參照查詢。 |
| `status` | token | 依同意狀態查詢。 |
