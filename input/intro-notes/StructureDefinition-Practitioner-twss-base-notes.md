{% include quickstart-note.md %}

#### 建議應該支援以下查詢參數：

1. **建議（SHOULD）** 支援透過查詢參數 **[`_id`](SearchParameter-Practitioner-id.html)** 查詢所有 Practitioner：
    ([如何透過 token 查詢](http://hl7.org/fhir/R4/search.html#token))  
    `GET [base]/Practitioner?_id=[id]`  
    `GET [base]/Practitioner/[id]`

2. **建議（SHOULD）** 支援透過查詢參數 **[`identifier`](SearchParameter-Practitioner-identifier.html)** 查詢所有 Practitioner：
    ([如何透過 token 查詢](http://hl7.org/fhir/R4/search.html#token))  
    `GET [base]/Practitioner?identifier=[system]|[code]`

3. **建議（SHOULD）** 支援透過查詢參數 **[`name`](SearchParameter-Practitioner-name.html)** 查詢所有 Practitioner：
    ([如何透過 string 查詢](http://hl7.org/fhir/R4/search.html#string))  
    `GET [base]/Practitioner?name=[string]`

