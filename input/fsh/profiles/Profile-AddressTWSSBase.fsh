Profile:        AddressTWSSBase
Parent:         AddressTW
Id:             Address-twss-base
Title:          "地址-Address TWSS Base"
Description:    "社家署 Base IG 使用之 Address datatype profile，表達社家署業務中的地址共通資料。"
* ^version = "0.0.1"

* district MS
* district from TWSSCountyCityCodeVS (extensible)
* district ^short = "縣市"
* district ^binding.description = "臺灣縣市行政區域代碼。"
* district ^example[0].label = "TWSSCountyCityCode"
* district ^example[0].valueString = "6300000000"
* extension[village] MS
* extension[neighborhood] MS
