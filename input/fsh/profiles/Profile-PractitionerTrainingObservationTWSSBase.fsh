Profile: PractitionerTrainingObservationTWSSBase
Parent: Observation
Id: PractitionerTrainingObservation-twss-base
Title: "服務人受訓課程-Observation TWSS Base"
Description: "因 TW Core IG 0.3.2 尚無針對服務人受訓課程的 Profile，故繼承原生 Observation，並於設定社福欄位後補回適用的 TW Core 0.3.2 共通交換規則。"
* ^version = "0.0.1"
* status 1..1 MS
* code = TWSSObservationType#practitioner-training "服務人受訓課程"
* code from TWSSObservationTypeVS (required)
* focus only Reference(PractitionerTWSSBase)
* focus 1..1 MS
* effective[x] only Period
* effectivePeriod MS
* effectivePeriod.start 0..1 MS
* effectivePeriod.start ^short = "受訓起始日期。"
* effectivePeriod.end 0..1 MS
* effectivePeriod.end ^short = "受訓結束日期。"
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #closed
* component.code from TWSSPractitionerTrainingComponentVS (required)
* component contains courseName 1..1 MS and courseHours 0..1 MS and courseType 0..1 MS and courseProvider 0..1 MS
* component[courseName].code = TWSSPractitionerTrainingComponent#training-course-name "受訓課程名稱"
* component[courseName].value[x] only string
* component[courseName].valueString ^short = "受訓課程名稱"
* component[courseHours].code = TWSSPractitionerTrainingComponent#training-course-hours "受訓課程時數"
* component[courseHours].value[x] only Quantity
* component[courseHours].valueQuantity.system = "http://unitsofmeasure.org"
* component[courseHours].valueQuantity.code = #h
* component[courseHours].valueQuantity ^short = "受訓課程時數"
* component[courseType].code = TWSSPractitionerTrainingComponent#training-course-type "受訓課程類型"
* component[courseType].value[x] only CodeableConcept
* component[courseType].valueCodeableConcept from TWSSTrainingCourseTypeVS (required)
* component[courseType].valueCodeableConcept ^short = "受訓課程類型"
* component[courseProvider].code = TWSSPractitionerTrainingComponent#course-provider "開課單位"
* component[courseProvider].value[x] only string
* component[courseProvider].valueString ^short = "開課單位"
