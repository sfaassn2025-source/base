{% include quickstart-note.md %}

#### 建議應該支援以下查詢參數：

1. **建議（SHOULD）** 支援透過查詢參數 **[`_id`](SearchParameter-Organization-id.html)** 查詢所有 Organization：
    ([如何透過 token 查詢](http://hl7.org/fhir/R4/search.html#token))  
    `GET [base]/Organization?_id=[id]`  
    `GET [base]/Organization/[id]`

2. **建議（SHOULD）** 支援透過查詢參數 **[`identifier`](SearchParameter-Organization-identifier.html)** 查詢所有 Organization：
    ([如何透過 token 查詢](http://hl7.org/fhir/R4/search.html#token))  
    `GET [base]/Organization?identifier=[system]|[code]`

    例子：  
      (1) GET [base]/Organization?identifier=https://sfaa.gov.tw/base/identifier/organization-code|A1233

3. **建議（SHOULD）** 支援透過查詢參數 **[`name`](SearchParameter-Organization-name.html)** 查詢所有 Organization：
    ([如何透過 string 查詢](http://hl7.org/fhir/R4/search.html#string))  
    `GET [base]/Organization?name=[string]`

4. **建議（SHOULD）** 支援透過查詢參數 **[`type`](SearchParameter-Organization-type.html)** 查詢所有 Organization：
    ([如何透過 token 查詢](http://hl7.org/fhir/R4/search.html#token))  
    `GET [base]/Organization?type=[system]|[code]`
