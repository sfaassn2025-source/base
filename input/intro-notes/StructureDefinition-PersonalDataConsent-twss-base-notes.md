{% include quickstart-note.md %}

#### 可能可以（MAY）支援以下查詢參數：

個資同意 Profile 使用 FHIR R4 Consent Resource；伺服端可能可以（MAY）支援 FHIR R4 Consent 所定義之查詢參數。完整定義請參考 [FHIR R4 Consent 原生查詢參數](https://hl7.org/fhir/R4/consent.html#search)。

建議以 `category`、`scope`、`status`、`patient` 與 `source-reference` 查詢個資同意紀錄；關係人或服務人員資料主體由 `consentSubject` Extension 表達，現階段不另定義自訂查詢參數。
