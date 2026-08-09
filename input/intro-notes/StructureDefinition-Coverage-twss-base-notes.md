{% include quickstart-note.md %}

#### 建議應該支援以下查詢參數：

1. **建議（SHOULD）** 支援透過查詢參數 **[`_id`](SearchParameter-Coverage-id.html)** 查詢所有 Coverage：
    ([如何透過 token 查詢](http://hl7.org/fhir/R4/search.html#token))  
    `GET [base]/Coverage?_id=[id]`  
    `GET [base]/Coverage/[id]`

2. **建議（SHOULD）** 支援透過查詢參數 **[`identifier`](SearchParameter-Coverage-identifier.html)** 查詢所有 Coverage：
    ([如何透過 token 查詢](http://hl7.org/fhir/R4/search.html#token))  
    `GET [base]/Coverage?identifier=[system]|[code]`

3. **建議（SHOULD）** 支援透過查詢參數 **[`patient`](SearchParameter-Coverage-patient.html)** 查詢所有 Coverage：
    ([如何透過 reference 查詢](http://hl7.org/fhir/R4/search.html#reference))  
    `GET [base]/Coverage?patient={Type/}[id]`

4. **建議（SHOULD）** 支援透過查詢參數 **[`type`](SearchParameter-Coverage-type.html)** 查詢所有 Coverage：
    ([如何透過 token 查詢](http://hl7.org/fhir/R4/search.html#token))  
    `GET [base]/Coverage?type=[system]|[code]`

