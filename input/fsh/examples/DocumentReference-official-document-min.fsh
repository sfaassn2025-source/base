Instance: official-document-min
InstanceOf: DocumentReferenceTWSSBase
Title: "共用公文範例"
Description: "符合共用公文 DocumentReference TWSS Base Profile 的範例。"
Usage: #example

* status = #current
* masterIdentifier.system = "https://sfaa.gov.tw/base/identifier/official-document-number"
* masterIdentifier.value = "衛救字第1130012345號"
* type.text = "主管機關核備"
* subject = Reference(pat-min)
* date = "2026-07-29T09:00:00+08:00"
* content[0].attachment.contentType = #application/pdf
* content[0].attachment.url = "https://example.org/twss/documents/1130012345.pdf"
* content[0].attachment.creation = "2026-07-29"
* context.related[0] = Reference(claim-min)
* text.status = #generated
* text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  <h3><b>共用公文</b></h3>
  <p><b>公文文號</b>：衛救字第1130012345號</p>
  <p><b>公文類型</b>：主管機關核備</p>
  <p><b>公文日期</b>：2026-07-29</p>
  <p><b>關聯補助申請</b>：<a href="Claim-claim-min.html">Claim/claim-min</a></p>
</div>
"""
