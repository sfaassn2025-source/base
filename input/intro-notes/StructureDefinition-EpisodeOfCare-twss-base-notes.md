{% include quickstart-note.md %}

#### 建議應該支援以下查詢參數：

1. **建議（SHOULD）** 支援透過查詢參數 **[`_id`](SearchParameter-EpisodeOfCare-id.html)** 查詢所有 EpisodeOfCare：
    ([如何透過 token 查詢](http://hl7.org/fhir/R4/search.html#token))  
    `GET [base]/EpisodeOfCare?_id=[id]`  
    `GET [base]/EpisodeOfCare/[id]`

2. **建議（SHOULD）** 支援透過查詢參數 **[`identifier`](SearchParameter-EpisodeOfCare-identifier.html)** 查詢所有 EpisodeOfCare：
    ([如何透過 token 查詢](http://hl7.org/fhir/R4/search.html#token))  
    `GET [base]/EpisodeOfCare?identifier=[system]|[code]`

3. **建議（SHOULD）** 支援透過查詢參數 **[`patient`](SearchParameter-EpisodeOfCare-patient.html)** 查詢所有 EpisodeOfCare：
    ([如何透過 reference 查詢](http://hl7.org/fhir/R4/search.html#reference))  
    `GET [base]/EpisodeOfCare?patient={Type/}[id]`

4. **建議（SHOULD）** 支援透過查詢參數 **[`status`](SearchParameter-EpisodeOfCare-status.html)** 查詢所有 EpisodeOfCare：
    ([如何透過 token 查詢](http://hl7.org/fhir/R4/search.html#token))  
    `GET [base]/EpisodeOfCare?status=[code]`

5. **建議（SHOULD）** 支援透過查詢參數 **[`type`](SearchParameter-EpisodeOfCare-type.html)** 或 **[`date`](SearchParameter-EpisodeOfCare-date.html)** 查詢所有 EpisodeOfCare：
    ([如何透過 token 查詢](http://hl7.org/fhir/R4/search.html#token))  
    `GET [base]/EpisodeOfCare?type=[system]|[code]`  
    ([如何透過 date 查詢](http://hl7.org/fhir/R4/search.html#date))  
    `GET [base]/EpisodeOfCare?date={gt|lt|ge|le}[date]`

