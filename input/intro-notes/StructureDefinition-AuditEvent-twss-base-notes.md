{% include quickstart-note.md %}

#### 可能可以（MAY）支援以下查詢參數：

此 Profile 使用 FHIR R4 AuditEvent Resource；伺服端可能可以（MAY）支援 FHIR R4 AuditEvent 所定義之查詢參數。完整定義請參考 [FHIR R4 AuditEvent 原生查詢參數](https://hl7.org/fhir/R4/auditevent.html#search)。

| 查詢參數 | 類型 | 說明 |
|---|---|---|
| `altid` | token | 依行為人識別碼查詢。 |
| `date` | date | 依事件被記錄時間查詢。 |
| `source` | reference | 依事件記錄來源查詢。 |
| `type` | token | 依活動記錄類型查詢。 |
| `address` | string | 依行為人裝置網路識別碼查詢。 |
