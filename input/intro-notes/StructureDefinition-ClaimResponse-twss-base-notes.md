{% include quickstart-note.md %}

#### 建議應該支援以下查詢參數：

1. **建議（SHOULD）** 支援透過查詢參數 **[`_id`](SearchParameter-ClaimResponse-id.html)** 查詢所有 ClaimResponse：
    ([如何透過 token 查詢](http://hl7.org/fhir/R4/search.html#token))  
    `GET [base]/ClaimResponse?_id=[id]`  
    `GET [base]/ClaimResponse/[id]`

2. **建議（SHOULD）** 支援透過查詢參數 **[`identifier`](SearchParameter-ClaimResponse-identifier.html)** 查詢所有 ClaimResponse：
    ([如何透過 token 查詢](http://hl7.org/fhir/R4/search.html#token))  
    `GET [base]/ClaimResponse?identifier=[system]|[code]`

3. **建議（SHOULD）** 支援透過查詢參數 **[`patient`](SearchParameter-ClaimResponse-patient.html)** 查詢所有 ClaimResponse：
    ([如何透過 reference 查詢](http://hl7.org/fhir/R4/search.html#reference))  
    `GET [base]/ClaimResponse?patient={Type/}[id]`

4. **建議（SHOULD）** 支援透過查詢參數 **[`request`](SearchParameter-ClaimResponse-request.html)** 查詢所有 ClaimResponse：
    ([如何透過 reference 查詢](http://hl7.org/fhir/R4/search.html#reference))  
    `GET [base]/ClaimResponse?request={Type/}[id]`

5. **建議（SHOULD）** 支援透過查詢參數 **[`created`](SearchParameter-ClaimResponse-created.html)** 查詢所有 ClaimResponse：
    ([如何透過 date 查詢](http://hl7.org/fhir/R4/search.html#date))  
    `GET [base]/ClaimResponse?created={gt|lt|ge|le}[date]`

