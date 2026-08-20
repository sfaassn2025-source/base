Profile: PractitionerEducationObservationTWSSBase
Parent: EducationObservationTWSSBase
Id: PractitionerEducationObservation-twss-base
Title: "服務人教育經歷-Observation TWSS Base"
Description: "服務人教育資訊 Observation Profile。"
* ^version = "0.0.1"
* focus only Reference(PractitionerTWSSBase)
* focus 1..1 MS
* component[schoolName] ^short = "服務人就讀學校名稱"
* component[schoolName] ^definition = "服務人就讀學校名稱。"
* component[educationLevel] ^short = "服務人教育程度"
* component[educationLevel] ^definition = "服務人教育程度。"
