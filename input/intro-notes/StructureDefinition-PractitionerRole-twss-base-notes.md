{% include quickstart-note.md %}

#### 建議應該支援以下查詢參數：

1. **建議（SHOULD）** 支援透過查詢參數 **[`_id`](SearchParameter-PractitionerRole-id.html)** 查詢所有 PractitionerRole：
    ([如何透過 token 查詢](http://hl7.org/fhir/R4/search.html#token))  
    `GET [base]/PractitionerRole?_id=[id]`  
    `GET [base]/PractitionerRole/[id]`

2. **建議（SHOULD）** 支援透過查詢參數 **[`practitioner`](SearchParameter-PractitionerRole-practitioner.html)** 查詢所有 PractitionerRole：
    ([如何透過 reference 查詢](http://hl7.org/fhir/R4/search.html#reference))  
    `GET [base]/PractitionerRole?practitioner={Type/}[id]`

3. **建議（SHOULD）** 支援透過查詢參數 **[`organization`](SearchParameter-PractitionerRole-organization.html)** 查詢所有 PractitionerRole：
    ([如何透過 reference 查詢](http://hl7.org/fhir/R4/search.html#reference))  
    `GET [base]/PractitionerRole?organization={Type/}[id]`

4. **建議（SHOULD）** 支援透過查詢參數 **[`role`](SearchParameter-PractitionerRole-role.html)** 查詢所有 PractitionerRole：
    ([如何透過 token 查詢](http://hl7.org/fhir/R4/search.html#token))  
    `GET [base]/PractitionerRole?role=[system]|[code]`

