{% include quickstart-note.md %}

#### 查詢方法
伺服端 **SHOULD** 支援以下原生查詢參數，以查詢個案服務評估審核 Task：

1. [`_id`](SearchParameter-Task-id.html)（token）  
   `GET [base]/Task?_id=[id]`

2. [`patient`](SearchParameter-Task-patient.html)（reference）  
   `GET [base]/Task?patient={Type/}[id]`

3. [`status`](SearchParameter-Task-status.html)（token）  
   `GET [base]/Task?status=[code]`

4. [`business-status`](SearchParameter-Task-business-status.html)（token）  
   `GET [base]/Task?business-status=[system]|[code]`

`Task.status` 表達 FHIR 工作流程狀態，`businessStatus` 表達業務審核結果。審核意見或不符合原因以 `note.text` 表達；兩者為同一來源欄位，依審核結果解讀其業務意義。
