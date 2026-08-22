Instance: related-person-occupation-min
InstanceOf: RelatedPersonOccupationObservationTWSSBase
Usage: #example
Title: "關係人職業範例"
Description: "以職業觀察記錄關係人職業的範例。"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#social-history "Social History"
* code = http://loinc.org#11341-5 "History of occupation"
* subject = Reference(pat-min)
* focus = Reference(related-min)
* valueCodeableConcept = https://twcore.mohw.gov.tw/ig/twcore/CodeSystem/occupation-lia-roc-tw#10010150 "醫院志工、社工(不須外出訪視)"
