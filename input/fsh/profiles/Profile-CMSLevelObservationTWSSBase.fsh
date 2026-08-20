Profile: CMSLevelObservationTWSSBase
Parent: Observation
Id: CMSLevelObservation-twss-base
Title: "CMS等級-Observation TWSS Base"
Description: "因 TW Core IG 0.3.2 尚無針對長照 CMS 等級結果的 Profile，故繼承原生 Observation，並於設定社福欄位後補回適用的 TW Core 0.3.2 共通交換規則。"
* ^version = "0.0.1"
* status 1..1 MS
* code = TWSSObservationType#assessment "評估"
* code from TWSSObservationTypeVS (required)
* subject only Reference(PatientTWSSBase)
* subject 1..1 MS
* encounter only Reference(AssessmentServiceEncounterTWSSBase)
* encounter MS
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #closed
* component contains cmsLevel 1..1 MS
* component[cmsLevel].code = TWSSObservationType#cms-level "CMS等級"
* component[cmsLevel].value[x] only string
* component[cmsLevel].valueString 1..1 MS
* component[cmsLevel].valueString ^short = "CMS等級"
