Instance: meeting-min
InstanceOf: MeetingEncounterTWSSBase
Title: "個案會議範例"
Description: "符合個案會議 Encounter TWSS Base Profile 的範例。"
Usage: #example

* status = #finished
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#AMB "ambulatory"
* subject = Reference(pat-min)
* episodeOfCare[0] = Reference(episode-base)
* location[0].location = Reference(location-min)
* period.start = "2026-07-29T09:00:00+08:00"
* text.status = #generated
* text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  <h3><b>個案會議</b></h3>
  <p><b>個案</b>：<a href="Patient-pat-min.html">Patient/pat-min</a> "王小明"</p>
  <p><b>服務案件</b>：<a href="EpisodeOfCare-episode-base.html">EpisodeOfCare/episode-base</a></p>
  <p><b>會議地點</b>：<a href="Location-location-min.html">Location/location-min</a></p>
  <p><b>會議開始時間</b>：2026-07-29T09:00:00+08:00</p>
</div>
"""
