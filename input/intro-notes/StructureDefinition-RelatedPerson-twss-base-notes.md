{% include quickstart-note.md %}

#### 建議應該支援以下查詢參數：

1. **建議（SHOULD）** 支援透過查詢參數 **[`_id`](SearchParameter-RelatedPerson-id.html)** 查詢所有 RelatedPerson：
    ([如何透過 token 查詢](http://hl7.org/fhir/R4/search.html#token))  
    `GET [base]/RelatedPerson?_id=[id]`  
    `GET [base]/RelatedPerson/[id]`

    例子：  
      (1) GET [base]/RelatedPerson?_id=related-min  
      (2) GET [base]/RelatedPerson/related-min

2. **建議（SHOULD）** 支援透過查詢參數 **[`patient`](SearchParameter-RelatedPerson-patient.html)** 查詢所有 RelatedPerson：
    ([如何透過 reference 查詢](http://hl7.org/fhir/R4/search.html#reference))  
    `GET [base]/RelatedPerson?patient={Type/}[id]`

    例子：  
      (1) GET [base]/RelatedPerson?patient=Patient/pat-min  
      (2) GET [base]/RelatedPerson?patient=pat-min

3. **建議（SHOULD）** 支援透過查詢參數 **[`identifier`](SearchParameter-RelatedPerson-identifier.html)** 查詢所有 RelatedPerson：
    ([如何透過 token 查詢](http://hl7.org/fhir/R4/search.html#token))  
    `GET [base]/RelatedPerson?identifier=[system]|[code]`

4. **建議（SHOULD）** 支援透過查詢參數 **[`name`](SearchParameter-RelatedPerson-name.html)** 查詢所有 RelatedPerson：
    ([如何透過 string 查詢](http://hl7.org/fhir/R4/search.html#string))  
    `GET [base]/RelatedPerson?name=[string]`

