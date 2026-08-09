{% include quickstart-note.md %}

#### 建議應該支援以下查詢參數：

1. **建議（SHOULD）** 支援透過查詢參數 **[`_id`](SearchParameter-ServiceRequest-id.html)** 查詢所有 ServiceRequest：
    ([如何透過 token 查詢](http://hl7.org/fhir/R4/search.html#token))  
    `GET [base]/ServiceRequest?_id=[id]`  
    `GET [base]/ServiceRequest/[id]`

2. **建議（SHOULD）** 支援透過查詢參數 **[`identifier`](SearchParameter-ServiceRequest-identifier.html)** 查詢所有 ServiceRequest：
    ([如何透過 token 查詢](http://hl7.org/fhir/R4/search.html#token))  
    `GET [base]/ServiceRequest?identifier=[system]|[code]`

3. **建議（SHOULD）** 支援透過查詢參數 **[`patient`](SearchParameter-ServiceRequest-patient.html)** 查詢所有 ServiceRequest：
    ([如何透過 reference 查詢](http://hl7.org/fhir/R4/search.html#reference))  
    `GET [base]/ServiceRequest?patient={Type/}[id]`

4. **建議（SHOULD）** 支援透過查詢參數 **[`status`](SearchParameter-ServiceRequest-status.html)** 查詢所有 ServiceRequest：
    ([如何透過 token 查詢](http://hl7.org/fhir/R4/search.html#token))  
    `GET [base]/ServiceRequest?status=[code]`

5. **建議（SHOULD）** 支援透過查詢參數 **[`category`](SearchParameter-ServiceRequest-category.html)** 或 **[`code`](SearchParameter-ServiceRequest-code.html)** 查詢所有 ServiceRequest：
    ([如何透過 token 查詢](http://hl7.org/fhir/R4/search.html#token))  
    `category` 用於查詢服務請求大類，例如 `http://snomed.info/sct|410606002`；`code` 用於查詢實際申請、服務或補助項目。  
    `GET [base]/ServiceRequest?category=[system]|[code]`  
    `GET [base]/ServiceRequest?code=[system]|[code]`

6. **建議（SHOULD）** 支援透過查詢參數 **[`authored`](SearchParameter-ServiceRequest-authored.html)** 查詢所有 ServiceRequest：
    ([如何透過 date 查詢](http://hl7.org/fhir/R4/search.html#date))  
    `GET [base]/ServiceRequest?authored={gt|lt|ge|le}[date]`
