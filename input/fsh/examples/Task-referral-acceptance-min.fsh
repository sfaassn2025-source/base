Instance: referral-acceptance-min
InstanceOf: ReferralAcceptanceTaskTWSSBase
Title: "個案轉介受理範例"
Description: "此範例說明受轉介單位受理個案轉介請求後的決定。"
Usage: #example

* status = #completed
* intent = #order
* authoredOn = "2026-08-08T10:00:00+08:00"
* for = Reference(pat-min)
* focus = Reference(referral-request-min)
* requester = Reference(org-min)
* owner = Reference(org-min)
* output[acceptanceDecision].type.coding.system = "https://sfaa.gov.tw/base/CodeSystem/twss-task-output-type"
* output[acceptanceDecision].type.coding.code = #referral-acceptance-decision
* output[acceptanceDecision].type.coding.display = "轉介受理情形"
* output[acceptanceDecision].valueCodeableConcept = TWSSReferralHandlingStatus#accepted "受案"
* text.status = #generated
* text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  <h3><b>個案轉介受理</b></h3>
  <p><b>個案</b>：<a href="Patient-pat-min.html">Patient/pat-min</a></p>
  <p><b>轉介請求</b>：<a href="ServiceRequest-referral-request-min.html">ServiceRequest/referral-request-min</a></p>
  <p><b>受轉介日期</b>：2026-08-08T10:00:00+08:00</p>
  <p><b>轉介受理情形</b>：<span style="background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki"><a href="CodeSystem-twss-referral-handling-status.html">TWSS 轉介處理狀態代碼系統</a>#accepted</span> 受案</p>
</div>
"""
