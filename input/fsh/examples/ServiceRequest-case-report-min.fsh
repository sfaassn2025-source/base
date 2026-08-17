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
* subject = Reference(pat-min)
* authoredOn = "2026-07-29T08:00:00+08:00"
* requester = Reference(related-min)
* performer = Reference(org-min)
* extension[isReferralCase].valueBoolean = false
// 待確認欄位：通報單位類別目前未納入最終欄位對應。
// * extension[reportingUnitType].valueCodeableConcept.coding[0] = TWSSReportingUnitType#1 "家長或監護者"
* text.status = #generated
* text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  <h3><b>個案通報</b></h3>
  <p><b>通報識別碼</b>：REPORT-2026-0001</p>
  <p><b>個案</b>：<a href="Patient-pat-min.html">Patient/pat-min</a> "王小明"</p>
  <p><b>通報時間</b>：2026-07-29T08:00:00+08:00</p>
  <p><b>個案通報類型</b>：Notifications <span style="background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki">（ <a href="http://snomed.info/id/185087000">SNOMED CT</a>#185087000）</span></p>
  <p><b>個案通報請求項目</b>：Assessment of health and social care needs <span style="background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki">（ <a href="http://snomed.info/id/710824005">SNOMED CT</a>#710824005）</span></p>
  <p><b>通報者</b>：<a href="RelatedPerson-related-min.html">RelatedPerson/related-min</a></p>
  <p><b>受理機構</b>：<a href="Organization-org-min.html">Organization/org-min</a></p>
  <!-- 待確認欄位：通報單位類別目前未納入最終欄位對應。 -->
  <!-- <p><b>通報單位類別</b>：家長或監護者 <span style="background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki">（ <a href="CodeSystem-twss-reporting-unit-type.html">TWSS 通報單位類別</a>#1）</span></p> -->
</div>
"""
