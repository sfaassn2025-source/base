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
