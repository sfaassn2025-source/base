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
* component[courseProvider].code = TWSSPractitionerTrainingComponent#course-provider "開課單位"
* component[courseProvider].valueString = "示範社會福利機構"
* text.status = #generated
* text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  <h3><b>服務人受訓課程</b></h3>
  <p><b>服務人</b>：<a href="Practitioner-prac-min.html">Practitioner/prac-min</a></p>
  <p><b>受訓課程名稱</b>：兒少保護基礎訓練</p>
  <p><b>受訓課程時數</b>：12 h</p>
  <p><b>受訓課程類型</b>：每年必備在職教育訓練 <span style="background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki">（<a href="ValueSet-twss-training-course-type-vs.html">服務人受訓課程類型值集</a>#D）</span></p>
  <p><b>開課單位</b>：示範社會福利機構</p>
</div>
"""
