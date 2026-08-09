Instance: service-event-min
InstanceOf: ActualServiceEncounterTWSSBase
Title: "個案實際服務範例"
Description: "符合個案實際服務 Encounter TWSS Base Profile 的範例。"
Usage: #example

* status = #finished
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#AMB "ambulatory"
* subject = Reference(pat-min)
* episodeOfCare[0] = Reference(episode-base)
* serviceProvider = Reference(org-min)
* period.start = "2026-07-29T09:00:00+08:00"
* period.end = "2026-07-29T10:00:00+08:00"
