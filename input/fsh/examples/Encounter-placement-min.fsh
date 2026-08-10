Instance: placement-min
InstanceOf: PlacementEncounterTWSSBase
Title: "安置服務範例"
Description: "符合安置服務 Encounter TWSS Base Profile 的範例。"
Usage: #example

* status = #finished
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#IMP "inpatient encounter"
* type = TWSSPlacementType#A "兒少安置及教養機構"
* subject = Reference(pat-min)
* episodeOfCare[0] = Reference(episode-base)
* serviceProvider = Reference(org-min)
* period.start = "2026-07-01T00:00:00+08:00"
* period.end = "2026-07-29T00:00:00+08:00"
* text.status = #generated
* text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  <h3><b>安置服務</b></h3>
  <p><b>安置類型</b>：兒少安置及教養機構 <span style="background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki">（<a href="CodeSystem-twss-placement-type.html">TWSS 安置類型</a>#A）</span></p>
  <p><b>個案</b>：<a href="Patient-pat-min.html">Patient/pat-min</a> "王小明"</p>
  <p><b>服務案件</b>：<a href="EpisodeOfCare-episode-base.html">EpisodeOfCare/episode-base</a></p>
  <p><b>服務提供機構</b>：<a href="Organization-org-min.html">Organization/org-min</a></p>
  <p><b>服務期間</b>：2026-07-01 至 2026-07-29</p>
</div>
"""
