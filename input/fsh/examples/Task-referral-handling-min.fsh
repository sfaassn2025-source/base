Instance: referral-handling-min
InstanceOf: ReferralHandlingTaskTWSSBase
Title: "個案轉介處理範例"
Description: "符合個案轉介處理 Task TWSS Base Profile 的範例。"
Usage: #example
* status = #completed
* intent = #order
* businessStatus = TWSSReferralHandlingStatus#completed "轉介完成"
* focus = Reference(referral-request-min)
* for = Reference(pat-min)
* executionPeriod.start = "2026-07-29T09:00:00+08:00"
* executionPeriod.end = "2026-07-30T10:00:00+08:00"
* requester = Reference(org-min)
* owner = Reference(org-childcare)
* text.status = #generated
* text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  <h3><b>個案轉介處理</b></h3>
  <p><b>轉介請求</b>：<a href="ServiceRequest-referral-request-min.html">ServiceRequest/referral-request-min</a></p>
  <p><b>個案</b>：<a href="Patient-pat-min.html">Patient/pat-min</a> "王小明"</p>
  <p><b>Task 狀態</b>：completed</p>
  <p><b>轉介處理情形</b>：轉介完成 <span style="background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki">（ <a href="CodeSystem-twss-referral-handling-status.html">TWSS 轉介處理狀態</a>#completed）</span></p>
  <p><b>處理期間</b>：2026-07-29T09:00:00+08:00 至 2026-07-30T10:00:00+08:00</p>
</div>
"""
