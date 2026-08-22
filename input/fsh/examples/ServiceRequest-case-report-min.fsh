Instance: case-report-min
InstanceOf: ServiceRequestCaseReportTWSSBase
Title: "個案通報範例"
Description: "符合個案通報 ServiceRequest TWSS Base Profile 的範例。"
Usage: #example
* identifier[0].system = "https://example.org/twss/case-report"
* identifier[0].value = "REPORT-2026-0001"
* status = #active
* intent = #order
* category = http://snomed.info/sct#185087000 "Notifications"
* code = http://snomed.info/sct#710824005 "Assessment of health and social care needs"
* orderDetail[caseServiceType] = TWSSCaseServiceType#CECM "發展遲緩兒童通報暨個案管理整合系統"
* subject = Reference(pat-min)
* authoredOn = "2026-07-29T08:00:00+08:00"
* requester = Reference(pracrole-min)
* performer = Reference(org-min)
* extension[isReferralCase].valueBoolean = false
* extension[reportType].valueCodeableConcept = TWSSCaseReportType#A "初報"
* extension[reportingUnit].valueCodeableConcept = TWSSReportingUnit#1 "社家署"
* extension[caseSource].valueCodeableConcept = TWSSCaseSource#A "自行求助"
* text.status = #generated
* text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  <h3><b>個案通報</b></h3>
  <p><b>通報識別碼</b>：REPORT-2026-0001</p>
  <p><b>個案</b>：<a href="Patient-pat-min.html">Patient/pat-min</a> "王小明"</p>
  <p><b>通報時間</b>：2026-07-29T08:00:00+08:00</p>
  <p><b>個案通報類型</b>：Notifications <span style="background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki">（ <a href="http://snomed.info/id/185087000">SNOMED CT</a>#185087000）</span></p>
  <p><b>個案通報請求項目</b>：Assessment of health and social care needs <span style="background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki">（ <a href="http://snomed.info/id/710824005">SNOMED CT</a>#710824005）</span></p>
  <p><b>個案服務別</b>：發展遲緩兒童通報暨個案管理整合系統 <span style="background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki">（<a href="CodeSystem-twss-case-service-type.html">TWSS 個案服務別</a>#CECM）</span></p>
  <p><b>通報者</b>：<a href="PractitionerRole-pracrole-min.html">PractitionerRole/pracrole-min</a>「社工」</p>
  <p><b>通報類型</b>：初報</p>
  <p><b>受理機構</b>：<a href="Organization-org-min.html">Organization/org-min</a></p>
  <p><b>通報單位</b>：社家署 <span style="background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki">（<a href="ValueSet-twss-reporting-unit-vs.html">TWSS-通報單位值集</a>#1）</span></p>
  <p><b>個案來源</b>：自行求助 <span style="background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki">（<a href="ValueSet-twss-case-source-vs.html">TWSS-個案來源值集</a>#A）</span></p>
</div>
"""
