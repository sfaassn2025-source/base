Instance: medical-rehabilitation-service-min
InstanceOf: MedicalRehabilitationServiceObservationTWSSBase
Usage: #example
Title: "醫療復健服務現況 Observation 範例"
Description: "記錄個案目前接受醫療復健服務的範例。"
* status = #final
* code = TWSSObservationType#medical-rehabilitation-service "醫療復健服務"
* subject = Reference(pat-min)
* encounter = Reference(assessment-service-min)
* valueCodeableConcept = TWSSMedicalRehabilitationService#A "語言治療"

Instance: medical-assistance-min
InstanceOf: MedicalAssistanceObservationTWSSBase
Usage: #example
Title: "醫療協助現況 Observation 範例"
Description: "記錄個案目前接受醫療協助的範例。"
* status = #final
* code = TWSSObservationType#medical-assistance "醫療協助"
* subject = Reference(pat-min)
* encounter = Reference(assessment-service-min)
* valueCodeableConcept = TWSSMedicalAssistance#A "鼻胃管"
