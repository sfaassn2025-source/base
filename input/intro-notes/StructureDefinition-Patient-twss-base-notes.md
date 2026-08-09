{% include quickstart-note.md %}

#### 建議應該支援以下查詢參數：

1. **建議（SHOULD）** 支援透過查詢參數 **[`_id`](SearchParameter-Patient-id.html)** 查詢所有 Patient：
    ([如何透過 token 查詢](http://hl7.org/fhir/R4/search.html#token))  
    `GET [base]/Patient?_id=[id]`  
    `GET [base]/Patient/[id]`

    例子：  
      (1) GET [base]/Patient?_id=pat-min  
      (2) GET [base]/Patient/pat-min

2. **建議（SHOULD）** 支援透過查詢參數 **[`identifier`](SearchParameter-Patient-identifier.html)** 查詢所有 Patient：
    ([如何透過 token 查詢](http://hl7.org/fhir/R4/search.html#token))  
    `GET [base]/Patient?identifier=[system]|[code]`

    例子：  
      (1) GET [base]/Patient?identifier=http://www.moi.gov.tw|A123456789

3. **建議（SHOULD）** 支援透過查詢參數 **[`name`](SearchParameter-Patient-name.html)** 查詢所有 Patient：
    ([如何透過 string 查詢](http://hl7.org/fhir/R4/search.html#string))  
    `GET [base]/Patient?name=[string]`

    例子：  
      (1) GET [base]/Patient?name=王小明

