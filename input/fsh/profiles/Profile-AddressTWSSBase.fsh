Profile:        AddressTWSSBase
Parent:         AddressTW
Id:             Address-twss-base
Title:          "地址-Address TWSS Base"
Description:    "社家署 Base IG 使用之 Address datatype profile，表達社家署業務中的地址共通資料。"
* ^version = "0.0.1"

* district MS
* district from TWSSCountyCityCodeVS (extensible)
* district ^short = "縣市"
* district ^binding.description = "若需以代碼表達縣市，應使用 TWSS 縣市碼；若系統僅能提供地址文字，得填寫縣市名稱。"
* district ^example[0].label = "TWSSCountyCityCode"
* district ^example[0].valueString = "6300000000"
* extension[village] MS
* extension[neighborhood] MS
