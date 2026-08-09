{% include quickstart-note.md %}

#### 建議應該支援以下查詢參數：

1. **建議（SHOULD）** 支援透過查詢參數 **[`_id`](SearchParameter-Claim-id.html)** 查詢所有 Claim：
    ([如何透過 token 查詢](http://hl7.org/fhir/R4/search.html#token))  
    `GET [base]/Claim?_id=[id]`  
    `GET [base]/Claim/[id]`

2. **建議（SHOULD）** 支援透過查詢參數 **[`identifier`](SearchParameter-Claim-identifier.html)** 查詢所有 Claim：
    ([如何透過 token 查詢](http://hl7.org/fhir/R4/search.html#token))  
    `GET [base]/Claim?identifier=[system]|[code]`

3. **建議（SHOULD）** 支援透過查詢參數 **[`patient`](SearchParameter-Claim-patient.html)** 查詢所有 Claim：
    ([如何透過 reference 查詢](http://hl7.org/fhir/R4/search.html#reference))  
    `GET [base]/Claim?patient={Type/}[id]`

4. **建議（SHOULD）** 支援透過查詢參數 **[`created`](SearchParameter-Claim-created.html)** 查詢所有 Claim：
    ([如何透過 date 查詢](http://hl7.org/fhir/R4/search.html#date))  
    `GET [base]/Claim?created={gt|lt|ge|le}[date]`

