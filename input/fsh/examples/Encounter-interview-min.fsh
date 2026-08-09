Instance: interview-min
InstanceOf: InterviewEncounterTWSSBase
Title: "個案會談範例"
Description: "符合個案會談 Encounter TWSS Base Profile 的範例。"
Usage: #example

* status = #finished
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#AMB "ambulatory"
* subject = Reference(pat-min)
* episodeOfCare[0] = Reference(episode-base)
* period.start = "2026-07-29T09:00:00+08:00"
