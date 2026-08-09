Instance: assessment-service-min
InstanceOf: AssessmentServiceEncounterTWSSBase
Title: "個案評估接觸範例"
Description: "符合個案評估或服務接觸 Encounter TWSS Base Profile 的範例。"
Usage: #example
* status = #finished
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#AMB "ambulatory"
* type[0] = TWSSVisitServiceMethod#B "面訪家庭"
* subject = Reference(pat-min)
* basedOn[0] = Reference(case-report-min)
* period.start = "2026-07-29T10:00:00+08:00"
* period.end = "2026-07-29T11:00:00+08:00"
* serviceProvider = Reference(org-min)
* text.status = #generated
* text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  <h3><b>個案評估接觸</b></h3>
  <p><b>個案</b>：<a href="Patient-pat-min.html">Patient/pat-min</a> "王小明"</p>
  <p><b>服務案件</b>：<a href="EpisodeOfCare-episode-base.html">EpisodeOfCare/episode-base</a></p>
  <p><b>訪視服務方式</b>：面訪家庭 <span style="background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki">（ <a href="CodeSystem-twss-visit-service-method.html">TWSS 訪視服務方式</a>#B）</span></p>
  <p><b>訪視開始時間</b>：2026-07-29T10:00:00+08:00</p>
  <p><b>訪視結束時間</b>：2026-07-29T11:00:00+08:00</p>
  <p><b>服務機構</b>：<a href="Organization-org-min.html">Organization/org-min</a></p>
</div>
"""
