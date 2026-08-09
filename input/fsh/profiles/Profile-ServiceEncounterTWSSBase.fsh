Profile: ActualServiceEncounterTWSSBase
Parent: Encounter
Id: ActualServiceEncounter-twss-base
Title: "個案實際服務-Encounter TWSS Base"
Description: "因 TW Core IG 0.3.2 尚無針對社福個案實際服務的 Profile，故繼承原生 Encounter，並於設定社福欄位後補回適用的 TW Core 0.3.2 共通交換規則。"
* ^version = "0.0.1"

* status 1..1 MS
* class 1..1 MS
* subject only Reference(PatientTWSSBase)
* subject 1..1 MS
* episodeOfCare only Reference(EpisodeOfCareTWSSBase)
* episodeOfCare MS
* serviceProvider only Reference(OrganizationTWSSBase)
* serviceProvider MS
* location.location only Reference(LocationTWSSBase)
* location MS
* period 1..1 MS
* period.start 1..1 MS
* period.start ^short = "服務日期"
* period.end MS

Profile: InterviewEncounterTWSSBase
Parent: ActualServiceEncounterTWSSBase
Id: InterviewEncounter-twss-base
Title: "個案會談-Encounter TWSS Base"
Description: "個案實際會談的 Encounter Profile。"
* ^version = "0.0.1"
* period.start ^short = "會談日期"

Profile: MeetingEncounterTWSSBase
Parent: ActualServiceEncounterTWSSBase
Id: MeetingEncounter-twss-base
Title: "個案會議-Encounter TWSS Base"
Description: "個案實際會議的 Encounter Profile。"
* ^version = "0.0.1"
* location.location ^short = "會議地點"
* period.start ^short = "會議日期紀錄"

Profile: PlacementEncounterTWSSBase
Parent: ActualServiceEncounterTWSSBase
Id: PlacementEncounter-twss-base
Title: "安置服務-Encounter TWSS Base"
Description: "個案實際安置服務的 Encounter Profile。"
* ^version = "0.0.1"
* type 1..1 MS
* type from TWSSPlacementTypeVS (required)
* type ^short = "安置類型"
* period.start ^short = "安置起始日期"
* period.end ^short = "安置結束日期"
