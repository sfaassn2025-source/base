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
