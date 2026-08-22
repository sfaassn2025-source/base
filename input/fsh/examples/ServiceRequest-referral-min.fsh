Instance: referral-request-min
InstanceOf: ServiceRequestReferralTWSSBase
Title: "個案轉介範例"
Description: "符合個案轉介 ServiceRequest TWSS Base Profile 的範例。"
Usage: #example
* identifier[0].system = "https://example.org/twss/referral"
* identifier[0].value = "REFERRAL-2026-0001"
* status = #active
* intent = #order
* category = http://snomed.info/sct#306206005 "Referral to service"
* code = http://snomed.info/sct#3457005 "Patient referral"
* orderDetail[caseServiceType] = TWSSCaseServiceType#CECM "發展遲緩兒童通報暨個案管理整合系統"
* orderDetail[subsidyServiceType] = TWSSSubsidyServiceType#NCWIS "托育服務整合資訊系統"
* subject = Reference(pat-min)
* basedOn = Reference(transition-min)
* authoredOn = "2026-07-29T09:00:00+08:00"
* requester = Reference(org-min)
* performer = Reference(org-childcare)
* reasonCode.text = "案家遷居，需由居住地服務單位接續提供服務。"
* text.status = #generated
* text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  <h3><b>個案轉介</b></h3>
  <p><b>轉介識別碼</b>：REFERRAL-2026-0001</p>
  <p><b>個案</b>：<a href="Patient-pat-min.html">Patient/pat-min</a> "王小明"</p>
  <p><b>轉介日期</b>：2026-07-29T09:00:00+08:00</p>
  <p><b>前一筆轉銜請求</b>：<a href="ServiceRequest-transition-min.html">ServiceRequest/transition-min</a></p>
  <p><b>個案轉介類型</b>：Referral to service <span style="background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki">（ <a href="http://snomed.info/id/306206005">SNOMED CT</a>#306206005）</span></p>
  <p><b>個案轉介請求項目</b>：Patient referral <span style="background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki">（ <a href="http://snomed.info/id/3457005">SNOMED CT</a>#3457005）</span></p>
  <p><b>個案服務別</b>：發展遲緩兒童通報暨個案管理整合系統 <span style="background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki">（<a href="CodeSystem-twss-case-service-type.html">TWSS 個案服務別</a>#CECM）</span></p>
  <p><b>申請補助別</b>：托育服務整合資訊系統 <span style="background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki">（<a href="CodeSystem-twss-subsidy-service-type.html">TWSS 申請補助別</a>#NCWIS）</span></p>
  <p><b>轉介單位</b>：<a href="Organization-org-min.html">Organization/org-min</a></p>
  <p><b>受轉介單位</b>：<a href="Organization-org-childcare.html">Organization/org-childcare</a></p>
  <p><b>轉介原因</b>：案家遷居，需由居住地服務單位接續提供服務。</p>
</div>
"""
