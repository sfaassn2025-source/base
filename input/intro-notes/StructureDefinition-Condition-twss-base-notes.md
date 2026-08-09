{% include quickstart-note.md %}

#### 建議應該支援以下查詢參數：

1. **建議（SHOULD）** 支援透過查詢參數 **[`_id`](SearchParameter-Condition-id.html)** 查詢所有 Condition：
    ([如何透過 token 查詢](http://hl7.org/fhir/R4/search.html#token))  
    `GET [base]/Condition?_id=[id]`  
    `GET [base]/Condition/[id]`

2. **建議（SHOULD）** 支援透過查詢參數 **[`patient`](SearchParameter-Condition-patient.html)** 查詢所有 Condition：
    ([如何透過 reference 查詢](http://hl7.org/fhir/R4/search.html#reference))  
    `GET [base]/Condition?patient={Type/}[id]`

3. **建議（SHOULD）** 支援透過查詢參數 **[`code`](SearchParameter-Condition-code.html)** 查詢所有 Condition：
    ([如何透過 token 查詢](http://hl7.org/fhir/R4/search.html#token))  
    `GET [base]/Condition?code=[system]|[code]`

4. **建議（SHOULD）** 支援透過查詢參數 **[`severity`](SearchParameter-Condition-severity.html)** 或 **[`recorded-date`](SearchParameter-Condition-recorded-date.html)** 查詢所有 Condition：
    `GET [base]/Condition?severity=[system]|[code]`  
    `GET [base]/Condition?recorded-date={gt|lt|ge|le}[date]`

