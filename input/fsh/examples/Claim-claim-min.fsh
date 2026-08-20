Instance: claim-min
InstanceOf: ClaimTWSSBase
Title: "補助申請範例"
Description: "符合 Claim TWSS Base Profile 的最小補助申請範例。"
Usage: #example

* status = #active
* type.text = "補助申請"
* use = #claim
* patient = Reference(pat-min)
* created = "2026-06-30"
* enterer = Reference(pracrole-min)
* insurer = Reference(org-min)
* provider = Reference(org-min)
* priority.text = "一般"
* extension[applicationReviewStatus].valueCodeableConcept = TWSSApplicationReviewStatus#13 "待核定"
* supportingInfo[serviceCase].sequence = 1
* supportingInfo[serviceCase].category.coding = TWSSClaimSupportingInfoType#service-case "服務案件"
* supportingInfo[serviceCase].valueReference = Reference(episode-base)
* supportingInfo[documentsComplete].sequence = 2
* supportingInfo[documentsComplete].category.coding = TWSSClaimSupportingInfoType#documents-complete "申請人證件備齊日"
* supportingInfo[documentsComplete].timingDate = "2026-06-29"
* supportingInfo[applicationChannel].sequence = 3
* supportingInfo[applicationChannel].category.coding = TWSSClaimSupportingInfoType#application-channel "申請管道"
* supportingInfo[applicationChannel].code = TWSSApplicationChannel#online "線上申辦"
* supportingInfo[applicant].sequence = 4
* supportingInfo[applicant].category.coding = TWSSClaimSupportingInfoType#applicant "申請人"
* supportingInfo[applicant].valueReference = Reference(pat-min)
* supportingInfo[bankAccount].sequence = 5
* supportingInfo[bankAccount].category.coding = TWSSClaimSupportingInfoType#bank-account "申請人銀行帳戶"
* supportingInfo[bankAccount].valueString = "012-123456789012"
* insurance[0].sequence = 1
* insurance[0].focal = true
* insurance[0].coverage = Reference(coverage-min)
* item[0].sequence = 1
* item[0].productOrService.text = "生活補助"
* item[0].servicedDate = "2026-06-30"
* item[0].net.value = 1000
* item[0].net.currency = #TWD
* total.value = 1000
* total.currency = #TWD
* text.status = #generated
* text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  <h3><b>補助申請資料</b></h3>
  <p><b>申請狀態</b>：Active</p>
  <p><b>用途</b>：Claim</p>
  <p><b>申請類型</b>：補助申請</p>
  <p><b>個案</b>： <a href="Patient-pat-min.html">Patient/pat-min</a> "王小明"</p>
  <p><b>申請建立日</b>：2026-06-30</p>
  <p><b>登錄人員</b>： <a href="PractitionerRole-pracrole-min.html">PractitionerRole/pracrole-min</a> "主責社工"</p>
  <p><b>核付單位</b>： <a href="Organization-org-min.html">Organization/org-min</a> "社家署示範機構"</p>
  <p><b>服務提供者</b>： <a href="Organization-org-min.html">Organization/org-min</a> "社家署示範機構"</p>
  <p><b>優先順序</b>：一般</p>
  <p><b>支持資料</b>： <a href="EpisodeOfCare-episode-base.html">EpisodeOfCare/episode-base</a> "個案服務案件基礎範例"</p>
  <p><b>補助資格</b>： <a href="Coverage-coverage-min.html">Coverage/coverage-min</a> "中低收入戶"</p>
  <p><b>補助項目</b>：生活補助</p>
  <p><b>補助日期</b>：2026-06-30</p>
  <p><b>申請金額</b>：1000 TWD</p>
  <p><b>申請總金額</b>：1000 TWD</p>
</div>
"""
