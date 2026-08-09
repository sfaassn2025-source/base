Instance: practitioner-training-min
InstanceOf: PractitionerTrainingObservationTWSSBase
Usage: #example
Title: "服務人受訓課程範例"
Description: "符合服務人受訓課程 Observation Profile 的範例。"
* status = #final
* code = TWSSObservationType#practitioner-training "服務人受訓課程"
* focus = Reference(prac-min)
* component[courseName].code = TWSSPractitionerTrainingComponent#training-course-name "受訓課程名稱"
* component[courseName].valueString = "兒少保護基礎訓練"
* component[courseHours].code = TWSSPractitionerTrainingComponent#training-course-hours "受訓課程時數"
* component[courseHours].valueQuantity.value = 12
* component[courseHours].valueQuantity.system = "http://unitsofmeasure.org"
* component[courseHours].valueQuantity.code = #h
* component[courseHours].valueQuantity.unit = "h"
* component[courseType].code = TWSSPractitionerTrainingComponent#training-course-type "受訓課程類型"
* component[courseType].valueCodeableConcept = TWSSTrainingCourseType#D "每年必備在職教育訓練"
