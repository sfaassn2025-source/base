#### 查詢參數：

Address 為資料型別（DataType），沒有獨立的 REST 查詢端點。實作者可透過使用 AddressTWSSBase 的 Resource 查詢地址資料，例如：

```http
GET [base]/Patient?address=[string]
GET [base]/Organization?address=[string]
GET [base]/RelatedPerson?address=[string]
```
