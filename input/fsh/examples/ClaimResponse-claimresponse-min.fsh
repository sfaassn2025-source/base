Instance: claimresponse-min
InstanceOf: ClaimResponseTWSSBase
Title: "補助審核結果範例"
Description: "符合 ClaimResponse TWSS Base Profile 的最小補助審核結果範例。"
Usage: #example

* status = #active
* type.text = "補助審核結果"
* use = #claim
* patient = Reference(pat-min)
* created = "2026-06-30"
* insurer = Reference(org-min)
* requestor = Reference(pracrole-min)
* request = Reference(claim-min)
* outcome = #complete
* disposition = "核定通過"
* extension[reviewStatus].valueCodeableConcept = TWSSReviewResult#Y "通過"
* extension[paymentStatus].valueCodeableConcept = TWSSPaymentStatus#1 "已出帳"
* extension[subsidyMonth].valueInteger = 6
* item[0].itemSequence = 1
* item[0].adjudication[approvedAmount].category = TWSSClaimAdjudicationCategory#approved-amount "核定補助金額"
* item[0].adjudication[approvedAmount].amount.value = 1000
* item[0].adjudication[approvedAmount].amount.currency = #TWD
* processNote[0].number = 1
* processNote[0].type = #display
* processNote[0].text = "已完成補助核定作業。"
* insurance[0].sequence = 1
* insurance[0].focal = true
* insurance[0].coverage = Reference(coverage-min)
* total[0].category.text = "核定金額"
* total[0].amount.value = 1000
* total[0].amount.currency = #TWD
* text.status = #generated
* text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  <h3><b>補助審核或核付結果資料</b></h3>
  <p><b>審核結果狀態</b>：Active</p>
  <p><b>用途</b>：Claim</p>
  <p><b>申請類型</b>：補助審核結果</p>
  <p><b>個案</b>： <a href="Patient-pat-min.html">Patient/pat-min</a> "王小明"</p>
  <p><b>建立日</b>：2026-06-30</p>
  <p><b>核付單位</b>： <a href="Organization-org-min.html">Organization/org-min</a> "社家署示範機構"</p>
  <p><b>申請人員</b>： <a href="PractitionerRole-pracrole-min.html">PractitionerRole/pracrole-min</a> "主責社工"</p>
  <p><b>對應申請</b>： <a href="Claim-claim-min.html">Claim/claim-min</a> "補助申請範例"</p>
  <p><b>結果</b>：Complete</p>
  <p><b>審核結果</b>：通過</p>
  <p><b>補助撥款狀況</b>：已出帳</p>
  <p><b>補助月分</b>：6</p>
  <p><b>結果說明</b>：核定通過</p>
  <p><b>項目核定金額</b>：1000 TWD</p>
  <p><b>補助資格</b>： <a href="Coverage-coverage-min.html">Coverage/coverage-min</a> "中低收入戶"</p>
  <p><b>處理備註</b>：審核日期：2026-06-30；審核結果：符合。</p>
  <p><b>核定金額</b>：1000 TWD</p>
</div>
"""
