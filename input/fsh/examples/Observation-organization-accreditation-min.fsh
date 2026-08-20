Instance: organization-accreditation-min
InstanceOf: OrganizationAccreditationObservationTWSSBase
Usage: #example
Title: "機構評鑑結果範例"
Description: "符合機構評鑑結果 Observation Profile 的範例。"
* status = #final
* code = TWSSObservationType#organization-accreditation-level "機構評鑑等級"
* focus = Reference(org-min)
* valueCodeableConcept = TWSSOrganizationAccreditationLevel#A "優等"
